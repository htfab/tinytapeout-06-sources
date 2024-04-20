#In the SAP-1 computer design, there are no designated inputs for operations. 
#Instead, the functionality is driven by the instruction set stored in the internal memory. 
#Once the clock is toggled, the instruction at the current memory address is executed, 
#and the operation carried out depends on this instruction. 
#This makes the behavior of the SAP-1 computer inherently dependent on its pre-programmed instructions.


import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer, ClockCycles

clocks_per_phase = 10


@cocotb.test()
async def test_rgb_mixer(dut):
    dut._log.info("start")
    clock = Clock(dut.clk, 10, units="us")
    cocotb.start_soon(clock.start())

    # reset
    dut._log.info("reset")
    dut.rst_n.value = 0

    await ClockCycles(dut.clk, 10)
    dut.rst_n.value = 1
    await ClockCycles(dut.clk, 128)
    

