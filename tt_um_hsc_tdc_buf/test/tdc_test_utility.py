import cocotb
import random
import cocotb.utils as utils
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
sns.set_style("whitegrid", {'grid.linestyle': '-.'})
from cocotb.clock import Clock, Timer
from cocotb.triggers import ClockCycles, Timer, RisingEdge, FallingEdge
from cocotb.decorators import coroutine

class TDCTestUtility:
    
    def __init__(
        self,
        clk_period_ns,
        dut,
        is_inverted=True,
        meas_start="PULSE RISING",
        dl_cell=""
    ):
        self.dl_cell=dl_cell
        self.meas_start = meas_start
        self.clk_period_ns=clk_period_ns
        self.is_inverted=is_inverted
        self.f_clk_mhz=(1/self.clk_period_ns)*1000
        self.dut=dut
        self.clock_launch_coru=None
        self.clock_capt_coru=None
        self.theta_ps=0

        self.src_ctrl = {
            "PG_IN"  : 0,
            "PG_TOG" : 1 
        }
        self.reg_bypass = {
            "REG"    : 0,
            "BYPASS" : 1
        }

        if(is_inverted):
            self.pulse_phases = [
                "FALL", 
                "SAT_FALL", 
                "RISE",
                "SAT_RISE"
            ]
        else:
            self.pulse_phases = [
                "SAT_RISE",
                "RISE",
                "SAT_FALL",
                "FALL"               
            ]

        self.meas_dict = {
            "THETA_PS"     : [],
            "PULSE_PHASE"  : [],
            "HW_OUT"       : [],
            "SIM_TIME_PS"  : []
        }

    def __meas_to_df__(self):
        df = pd.DataFrame.from_dict(self.meas_dict)
        df = df.sort_values(["THETA_PS"])
        df = df.reset_index(drop=True)
        return df

    def plot_theta_sweep(self, fh, plt_size=(30, 20), dpi=300):
        df = self.__meas_to_df__()
        print(df)
        theta_plt =sns.lineplot(
            data = df,
            x = "THETA_PS",
            y = "HW_OUT",
            hue = "PULSE_PHASE"
        ).set(
            title=f'Theta Sweep for Cell {self.dl_cell} @ {self.f_clk_mhz:4.2f}MHz'
        )
        plt.savefig(fname=fh, dpi=dpi)
        plt.close()

    def clear_meas(self):
        self.meas_dict = {
            "THETA_PS"     : [],
            "PULSE_PHASE"  : [],
            "HW_OUT"       : [],
            "SIM_TIME_PS"  : []
        }

    @cocotb.coroutine
    def set_theta_ps(self, theta_ps):
        self.theta_ps=theta_ps
        yield cocotb.start_soon(self.__restart_clks__())
    
    @cocotb.coroutine
    def reset_design(self):
        yield cocotb.start_soon(self.__reset_design__())

    @cocotb.coroutine
    def pg_cfg(self, pg_src="PG_IN", pg_byp="PG_REG"):
        match (pg_src, pg_byp):
            case ("PG_IN", "PG_BYPASS"):
                yield cocotb.start_soon(self.__pg_in_byp_reg__())
            case ("PG_IN", "PG_REG"):
                yield cocotb.start_soon(self.__pg_in_reg__())
            case ("PG_TOG", "PG_BYPASS"):
                yield cocotb.start_soon(self.__pg_tog_byp_reg__())
            case ("PG_TOG", "PG_REG"):
                yield cocotb.start_soon(self.__pg_tog_reg__())
    
    @cocotb.coroutine
    def get_pulse_response_gl(self):
        yield cocotb.start_soon(self.__get_pulse_response_gl__())

    @cocotb.coroutine
    def check_pulse_response_rtl(self):
        yield cocotb.start_soon(self.__check_pulse_response_rtl__()) 
    
    @cocotb.coroutine
    def start_clocks(self):
        yield cocotb.start_soon(self.__restart_clks__())

    @cocotb.coroutine
    def random_pg_in_test(self):
        rand_pg_in = int(random.getrandbits(1))
        yield cocotb.start_soon(self.__pass_pg_in__(rand_pg_in))

    async def __start_clks__(self):    
        # Start launch clk
        self.dut.ena.value = 0
        self.clock_launch_coru = cocotb.start_soon(
            Clock(self.dut.clk_launch, period=self.clk_period_ns, units="ns").start()
        )
        await RisingEdge(self.dut.clk_launch)
        # Phase delay capture clk start
        if(self.theta_ps > 0):
            await Timer(self.theta_ps, units='ps')
        # Start capture clk
        self.clock_capt_coru   = cocotb.start_soon(
            Clock(self.dut.clk_capture, period=self.clk_period_ns, units="ns").start()
        )
        await RisingEdge(self.dut.clk_capture)
        await RisingEdge(self.dut.clk_launch)
    
    async def __restart_clks__(self):
        enable_init = self.dut.ena.value
        self.dut.ena.value = 0
        if(self.clock_launch_coru != None):
            await RisingEdge(self.dut.clk_launch)
            self.clock_launch_coru.kill()
        if(self.clock_capt_coru != None):
            await RisingEdge(self.dut.clk_capture)
            self.clock_capt_coru.kill()
        self.clock_launch_coru = None
        self.clock_capt_coru = None
        start_clocks_thread = cocotb.start_soon(self.__start_clks__())
        await start_clocks_thread
        # Restore enable after clocks restart
        self.dut.ena.value = enable_init

    async def __reset_design__(self):
        enable_init = self.dut.ena.value
        self.dut.ena.value = 1
        self.dut.val_in.value = 0
        self.dut.pg_in.value = 0
        self.dut.rst_n.value = 0
        await RisingEdge(self.dut.clk_launch)
        self.dut.rst_n.value = 1
        self.dut.ena.value = enable_init
    
    async def __pg_in_byp_reg__(self):
        self.dut.pg_src.value = self.src_ctrl["PG_IN"]
        self.dut.pg_bypass.value = self.reg_bypass["BYPASS"]
    
    async def __pg_in_reg__(self):
        self.dut.pg_src.value = self.src_ctrl["PG_IN"]
        self.dut.pg_bypass.value = self.reg_bypass["REG"]

    async def __pg_tog_byp_reg__(self):
        self.dut.pg_src.value = self.src_ctrl["PG_TOG"]
        self.dut.pg_bypass.value = self.reg_bypass["BYPASS"]

    async def __pg_tog_reg__(self):
        self.dut.pg_src.value = self.src_ctrl["PG_TOG"]
        self.dut.pg_bypass.value = self.reg_bypass["REG"]

    async def __drive_valid__(self, n):
        self.dut.val_in.value = 1
        await ClockCycles(self.dut.clk_launch, n)
        self.dut.val_in.value = 0
        
    async def __get_pulse_response_gl__(self):
        '''
        If the pg is toggling and the clocks are active, samples can be collected
        '''
        await RisingEdge(self.dut.clk_launch)
        assert self.dut.pg_src.value == self.src_ctrl["PG_TOG"]
        assert self.clock_launch_coru != None and self.clock_capt_coru != None
        enable_init = self.dut.ena.value
        self.dut.ena.value = 1
        if(self.meas_start=="PULSE RISING"):     
            await RisingEdge(self.dut.pg_tog)
        else:
            await FallingEdge(self.dut.pg_tog)
        # Collect a sample for each phase of the input pulse       
        cocotb.start_soon(self.__drive_valid__(4))
        await RisingEdge(self.dut.val_out)                
        for pulse_phase in self.pulse_phases:
            await RisingEdge(self.dut.clk_capture)
            cocotb.start_soon(self.__capture_meas__(pulse_phase))
        # Restore enable
        await RisingEdge(self.dut.clk_launch)
        self.dut.ena.value = enable_init
        await RisingEdge(self.dut.clk_launch)

    async def __capture_meas__(self, pulse_phase):
        try:
            hw = int(self.dut.hw.value)
        except:
            hw = 'x'
        self.meas_dict["SIM_TIME_PS"].append(
            utils.get_sim_time(units='ps')
        )
        self.meas_dict["PULSE_PHASE"].append(
            pulse_phase
        )
        self.meas_dict["HW_OUT"].append(
            hw
        )
        self.meas_dict["THETA_PS"].append(
            self.theta_ps
        )

    async def __check_pulse_response_rtl__(self):
        '''
        If the pg is toggling and the clocks are active, samples can be collected
        '''
        await RisingEdge(self.dut.clk_launch)
        assert self.dut.pg_src.value == self.src_ctrl["PG_TOG"]
        assert self.clock_launch_coru != None and self.clock_capt_coru != None
        enable_init = self.dut.ena.value
        self.dut.ena.value = 1              
        await RisingEdge(self.dut.pg_tog)                
        cocotb.start_soon(self.__drive_valid__(4))
        await RisingEdge(self.dut.val_out)                
        
        for phase in self.pulse_phases:
            await RisingEdge(self.dut.clk_capture)
            match(phase):
                case("FALL"):
                    assert self.dut.hw.value == 0
                case("SAT_FALL"):
                    assert self.dut.hw.value == 0
                case("RISE"):
                    assert self.dut.hw.value == 64
                case("SAT_RISE"):
                    assert self.dut.hw.value == 64

        await RisingEdge(self.dut.clk_launch)
        self.dut.ena.value = enable_init
        await RisingEdge(self.dut.clk_launch)

    
    async def __pass_pg_in__(self, rand_pg_in):
        enable_init = self.dut.ena.value
        self.dut.ena.value = 1
        val_count = 0
        await RisingEdge(self.dut.clk_launch)
        assert self.dut.pg_src.value == self.src_ctrl["PG_IN"]
        assert self.clock_launch_coru != None and self.clock_capt_coru != None
        cocotb.start_soon(self.__drive_valid__(8))
        await RisingEdge(self.dut.val_out)
        await RisingEdge(self.dut.clk_capture)
        while(int(self.dut.val_out) == 1):
            val_count += 1
            if(rand_pg_in == self.is_inverted):
                assert self.dut.hw.value == 0
            else:
                assert self.dut.hw.value == 64
            await RisingEdge(self.dut.clk_capture)
        assert val_count == 8
        await RisingEdge(self.dut.clk_launch)
        self.dut.ena.value = enable_init
        await RisingEdge(self.dut.clk_launch)
