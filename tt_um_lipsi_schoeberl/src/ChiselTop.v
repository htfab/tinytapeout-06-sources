module Memory(
  input        clock,
  input        reset,
  input  [8:0] io_rdAddr,
  output [7:0] io_rdData,
  input        io_wrEna,
  input  [7:0] io_wrData,
  input  [8:0] io_wrAddr
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] mem [0:3]; // @[Memory.scala 40:16]
  wire  mem_data_en; // @[Memory.scala 40:16]
  wire [1:0] mem_data_addr; // @[Memory.scala 40:16]
  wire [7:0] mem_data_data; // @[Memory.scala 40:16]
  wire [7:0] mem_MPORT_data; // @[Memory.scala 40:16]
  wire [1:0] mem_MPORT_addr; // @[Memory.scala 40:16]
  wire  mem_MPORT_mask; // @[Memory.scala 40:16]
  wire  mem_MPORT_en; // @[Memory.scala 40:16]
  reg [8:0] rdAddrReg; // @[Memory.scala 33:26]
  wire [7:0] _GEN_6 = 6'h1 == rdAddrReg[5:0] ? 8'h0 : 8'hc7; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_7 = 6'h2 == rdAddrReg[5:0] ? 8'h81 : _GEN_6; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_8 = 6'h3 == rdAddrReg[5:0] ? 8'h71 : _GEN_7; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_9 = 6'h4 == rdAddrReg[5:0] ? 8'hc0 : _GEN_8; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_10 = 6'h5 == rdAddrReg[5:0] ? 8'h1 : _GEN_9; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_11 = 6'h6 == rdAddrReg[5:0] ? 8'h81 : _GEN_10; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_12 = 6'h7 == rdAddrReg[5:0] ? 8'hf0 : _GEN_11; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_13 = 6'h8 == rdAddrReg[5:0] ? 8'hc7 : _GEN_12; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_14 = 6'h9 == rdAddrReg[5:0] ? 8'h7f : _GEN_13; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_15 = 6'ha == rdAddrReg[5:0] ? 8'h83 : _GEN_14; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_16 = 6'hb == rdAddrReg[5:0] ? 8'hc7 : _GEN_15; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_17 = 6'hc == rdAddrReg[5:0] ? 8'hff : _GEN_16; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_18 = 6'hd == rdAddrReg[5:0] ? 8'h82 : _GEN_17; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_19 = 6'he == rdAddrReg[5:0] ? 8'hc7 : _GEN_18; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_20 = 6'hf == rdAddrReg[5:0] ? 8'hff : _GEN_19; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_21 = 6'h10 == rdAddrReg[5:0] ? 8'hc1 : _GEN_20; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_22 = 6'h11 == rdAddrReg[5:0] ? 8'h1 : _GEN_21; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_23 = 6'h12 == rdAddrReg[5:0] ? 8'hd3 : _GEN_22; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_24 = 6'h13 == rdAddrReg[5:0] ? 8'h10 : _GEN_23; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_25 = 6'h14 == rdAddrReg[5:0] ? 8'h72 : _GEN_24; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_26 = 6'h15 == rdAddrReg[5:0] ? 8'hc1 : _GEN_25; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_27 = 6'h16 == rdAddrReg[5:0] ? 8'h1 : _GEN_26; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_28 = 6'h17 == rdAddrReg[5:0] ? 8'h82 : _GEN_27; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_29 = 6'h18 == rdAddrReg[5:0] ? 8'hd3 : _GEN_28; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_30 = 6'h19 == rdAddrReg[5:0] ? 8'he : _GEN_29; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_31 = 6'h1a == rdAddrReg[5:0] ? 8'h73 : _GEN_30; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_32 = 6'h1b == rdAddrReg[5:0] ? 8'hc1 : _GEN_31; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_33 = 6'h1c == rdAddrReg[5:0] ? 8'h1 : _GEN_32; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_34 = 6'h1d == rdAddrReg[5:0] ? 8'h83 : _GEN_33; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_35 = 6'h1e == rdAddrReg[5:0] ? 8'hd3 : _GEN_34; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_36 = 6'h1f == rdAddrReg[5:0] ? 8'hb : _GEN_35; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_37 = 6'h20 == rdAddrReg[5:0] ? 8'hd0 : _GEN_36; // @[Memory.scala 47:{19,19}]
  wire [7:0] _GEN_38 = 6'h21 == rdAddrReg[5:0] ? 8'h3 : _GEN_37; // @[Memory.scala 47:{19,19}]
  assign mem_data_en = 1'h1;
  assign mem_data_addr = rdAddrReg[1:0];
  assign mem_data_data = mem[mem_data_addr]; // @[Memory.scala 40:16]
  assign mem_MPORT_data = io_wrData;
  assign mem_MPORT_addr = io_wrAddr[1:0];
  assign mem_MPORT_mask = 1'h1;
  assign mem_MPORT_en = io_wrEna;
  assign io_rdData = rdAddrReg[8] ? mem_data_data : _GEN_38; // @[Memory.scala 47:19]
  always @(posedge clock) begin
    if (mem_MPORT_en & mem_MPORT_mask) begin
      mem[mem_MPORT_addr] <= mem_MPORT_data; // @[Memory.scala 40:16]
    end
    if (reset) begin // @[Memory.scala 33:26]
      rdAddrReg <= 9'h0; // @[Memory.scala 33:26]
    end else begin
      rdAddrReg <= io_rdAddr; // @[Memory.scala 34:13]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    mem[initvar] = _RAND_0[7:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  rdAddrReg = _RAND_1[8:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Lipsi(
  input        clock,
  input        reset,
  output [7:0] io_dout,
  input  [7:0] io_din
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  wire  mem_clock; // @[Lipsi.scala 66:19]
  wire  mem_reset; // @[Lipsi.scala 66:19]
  wire [8:0] mem_io_rdAddr; // @[Lipsi.scala 66:19]
  wire [7:0] mem_io_rdData; // @[Lipsi.scala 66:19]
  wire  mem_io_wrEna; // @[Lipsi.scala 66:19]
  wire [7:0] mem_io_wrData; // @[Lipsi.scala 66:19]
  wire [8:0] mem_io_wrAddr; // @[Lipsi.scala 66:19]
  reg [7:0] pcReg; // @[Lipsi.scala 53:22]
  reg [7:0] accuReg; // @[Lipsi.scala 54:24]
  reg  enaAccuReg; // @[Lipsi.scala 55:27]
  reg  enaPcReg; // @[Lipsi.scala 57:25]
  reg [2:0] funcReg; // @[Lipsi.scala 59:24]
  reg [7:0] outReg; // @[Lipsi.scala 63:23]
  reg  enaIoReg; // @[Lipsi.scala 64:25]
  reg [2:0] stateReg; // @[Lipsi.scala 109:25]
  wire  _T_4 = mem_io_rdData[7:4] == 4'h8; // @[Lipsi.scala 138:25]
  wire [4:0] _wrAddr_T_1 = {1'h0,mem_io_rdData[3:0]}; // @[Cat.scala 33:92]
  wire [7:0] _GEN_6 = mem_io_rdData[7:4] == 4'h8 ? {{3'd0}, _wrAddr_T_1} : mem_io_rdData; // @[Lipsi.scala 138:36 139:16 96:10]
  wire [7:0] wrAddr = 3'h0 == stateReg ? _GEN_6 : mem_io_rdData; // @[Lipsi.scala 126:20 96:10]
  wire [7:0] _nextPC_T_1 = pcReg + 8'h1; // @[Lipsi.scala 99:19]
  wire [7:0] nextPC = enaPcReg ? mem_io_rdData : _nextPC_T_1; // @[Lipsi.scala 101:18 102:12 99:10]
  wire [8:0] _rdAddr_T = {1'h0,nextPC}; // @[Cat.scala 33:92]
  wire  _T_2 = ~mem_io_rdData[7]; // @[Lipsi.scala 131:22]
  wire  _GEN_2 = ~mem_io_rdData[7] ? 1'h0 : 1'h1; // @[Lipsi.scala 131:31 132:15 98:9]
  wire  _GEN_9 = mem_io_rdData[7:4] == 4'ha ? 1'h0 : _GEN_2; // @[Lipsi.scala 144:36 145:15]
  wire  _GEN_12 = mem_io_rdData[7:4] == 4'hb ? 1'h0 : _GEN_9; // @[Lipsi.scala 150:36 151:15]
  wire  _GEN_26 = 3'h3 == stateReg ? 1'h0 : 1'h1; // @[Lipsi.scala 126:20 185:13 98:9]
  wire  _GEN_40 = 3'h2 == stateReg | (3'h1 == stateReg | _GEN_26); // @[Lipsi.scala 126:20 98:9]
  wire  updPC = 3'h0 == stateReg ? _GEN_12 : _GEN_40; // @[Lipsi.scala 126:20]
  wire  accuZero = accuReg == 8'h0; // @[Lipsi.scala 115:26]
  wire  _doBranch_T_4 = mem_io_rdData[1:0] == 2'h2 & accuZero; // @[Lipsi.scala 118:29]
  wire  _doBranch_T_5 = mem_io_rdData[1:0] == 2'h0 | _doBranch_T_4; // @[Lipsi.scala 117:41]
  wire  _doBranch_T_9 = mem_io_rdData[1:0] == 2'h3 & ~accuZero; // @[Lipsi.scala 119:29]
  wire  doBranch = _doBranch_T_5 | _doBranch_T_9; // @[Lipsi.scala 118:42]
  wire [8:0] _rdAddr_T_2 = {5'h10,mem_io_rdData[3:0]}; // @[Cat.scala 33:92]
  wire [8:0] _GEN_5 = ~mem_io_rdData[7] ? _rdAddr_T_2 : _rdAddr_T; // @[Lipsi.scala 131:31 135:16 97:10]
  wire [2:0] _GEN_8 = mem_io_rdData[7:4] == 4'h8 ? 3'h0 : 3'h1; // @[Lipsi.scala 128:16 138:36 141:18]
  wire [8:0] _GEN_10 = mem_io_rdData[7:4] == 4'ha ? _rdAddr_T_2 : _GEN_5; // @[Lipsi.scala 144:36 146:16]
  wire [2:0] _GEN_11 = mem_io_rdData[7:4] == 4'ha ? 3'h3 : _GEN_8; // @[Lipsi.scala 144:36 147:18]
  wire [8:0] _GEN_13 = mem_io_rdData[7:4] == 4'hb ? _rdAddr_T_2 : _GEN_10; // @[Lipsi.scala 150:36 152:16]
  wire [2:0] _GEN_14 = mem_io_rdData[7:4] == 4'hb ? 3'h2 : _GEN_11; // @[Lipsi.scala 150:36 153:18]
  wire  _GEN_16 = mem_io_rdData[7:4] == 4'hc | _T_2; // @[Lipsi.scala 156:36 158:20]
  wire  _GEN_18 = mem_io_rdData[7:4] == 4'hd & doBranch; // @[Lipsi.scala 122:12 161:36]
  wire  _T_13 = mem_io_rdData == 8'hf0; // @[Lipsi.scala 167:19]
  wire [8:0] _rdAddr_T_7 = {1'h1,mem_io_rdData}; // @[Cat.scala 33:92]
  wire [2:0] _GEN_24 = 3'h4 == stateReg ? 3'h0 : stateReg; // @[Lipsi.scala 126:20 192:16 109:25]
  wire [2:0] _GEN_27 = 3'h3 == stateReg ? 3'h7 : funcReg; // @[Lipsi.scala 126:20 186:15 59:24]
  wire [8:0] _GEN_29 = 3'h3 == stateReg ? _rdAddr_T_7 : _rdAddr_T; // @[Lipsi.scala 126:20 188:14 97:10]
  wire [2:0] _GEN_30 = 3'h3 == stateReg ? 3'h4 : _GEN_24; // @[Lipsi.scala 126:20 189:16]
  wire [8:0] _GEN_36 = 3'h1 == stateReg ? _rdAddr_T : _GEN_29; // @[Lipsi.scala 126:20 97:10]
  wire [8:0] _GEN_43 = 3'h2 == stateReg ? _rdAddr_T : _GEN_36; // @[Lipsi.scala 126:20 97:10]
  wire  _GEN_52 = 3'h0 == stateReg & _GEN_18; // @[Lipsi.scala 122:12 126:20]
  wire  _GEN_54 = 3'h0 == stateReg & _T_13; // @[Lipsi.scala 123:12 126:20]
  wire [7:0] _res_T_1 = accuReg + mem_io_rdData; // @[Lipsi.scala 205:30]
  wire [7:0] _res_T_3 = accuReg - mem_io_rdData; // @[Lipsi.scala 206:30]
  wire [7:0] _res_T_8 = accuReg & mem_io_rdData; // @[Lipsi.scala 209:30]
  wire [7:0] _res_T_9 = accuReg | mem_io_rdData; // @[Lipsi.scala 210:29]
  wire [7:0] _res_T_10 = accuReg ^ mem_io_rdData; // @[Lipsi.scala 211:30]
  wire [7:0] _GEN_56 = 3'h7 == funcReg ? mem_io_rdData : 8'h0; // @[Lipsi.scala 204:19 212:18 201:7]
  wire [7:0] _GEN_57 = 3'h6 == funcReg ? _res_T_10 : _GEN_56; // @[Lipsi.scala 204:19 211:19]
  wire [7:0] _GEN_58 = 3'h5 == funcReg ? _res_T_9 : _GEN_57; // @[Lipsi.scala 204:19 210:18]
  wire [7:0] _GEN_59 = 3'h4 == funcReg ? _res_T_8 : _GEN_58; // @[Lipsi.scala 204:19 209:19]
  wire [7:0] _GEN_60 = 3'h3 == funcReg ? _res_T_3 : _GEN_59; // @[Lipsi.scala 204:19 208:19]
  wire [7:0] _GEN_61 = 3'h2 == funcReg ? _res_T_1 : _GEN_60; // @[Lipsi.scala 204:19 207:19]
  wire [7:0] _GEN_62 = 3'h1 == funcReg ? _res_T_3 : _GEN_61; // @[Lipsi.scala 204:19 206:19]
  Memory mem ( // @[Lipsi.scala 66:19]
    .clock(mem_clock),
    .reset(mem_reset),
    .io_rdAddr(mem_io_rdAddr),
    .io_rdData(mem_io_rdData),
    .io_wrEna(mem_io_wrEna),
    .io_wrData(mem_io_wrData),
    .io_wrAddr(mem_io_wrAddr)
  );
  assign io_dout = outReg; // @[Lipsi.scala 221:11]
  assign mem_clock = clock;
  assign mem_reset = reset;
  assign mem_io_rdAddr = 3'h0 == stateReg ? _GEN_13 : _GEN_43; // @[Lipsi.scala 126:20]
  assign mem_io_wrEna = 3'h0 == stateReg ? _T_4 : 3'h2 == stateReg; // @[Lipsi.scala 126:20]
  assign mem_io_wrData = accuReg; // @[Lipsi.scala 90:23]
  assign mem_io_wrAddr = {1'h1,wrAddr}; // @[Cat.scala 33:92]
  always @(posedge clock) begin
    if (reset) begin // @[Lipsi.scala 53:22]
      pcReg <= 8'h0; // @[Lipsi.scala 53:22]
    end else if (updPC) begin // @[Lipsi.scala 104:15]
      if (enaPcReg) begin // @[Lipsi.scala 101:18]
        pcReg <= mem_io_rdData; // @[Lipsi.scala 102:12]
      end else begin
        pcReg <= _nextPC_T_1; // @[Lipsi.scala 99:10]
      end
    end
    if (reset) begin // @[Lipsi.scala 54:24]
      accuReg <= 8'h0; // @[Lipsi.scala 54:24]
    end else if (enaIoReg) begin // @[Lipsi.scala 217:18]
      accuReg <= io_din; // @[Lipsi.scala 218:13]
    end else if (enaAccuReg) begin // @[Lipsi.scala 214:20]
      if (3'h0 == funcReg) begin // @[Lipsi.scala 204:19]
        accuReg <= _res_T_1; // @[Lipsi.scala 205:19]
      end else begin
        accuReg <= _GEN_62;
      end
    end
    if (reset) begin // @[Lipsi.scala 55:27]
      enaAccuReg <= 1'h0; // @[Lipsi.scala 55:27]
    end else if (3'h0 == stateReg) begin // @[Lipsi.scala 126:20]
      enaAccuReg <= _GEN_16;
    end else if (3'h2 == stateReg) begin // @[Lipsi.scala 126:20]
      enaAccuReg <= 1'h0; // @[Lipsi.scala 121:14]
    end else if (3'h1 == stateReg) begin // @[Lipsi.scala 126:20]
      enaAccuReg <= 1'h0; // @[Lipsi.scala 121:14]
    end else begin
      enaAccuReg <= 3'h3 == stateReg;
    end
    if (reset) begin // @[Lipsi.scala 57:25]
      enaPcReg <= 1'h0; // @[Lipsi.scala 57:25]
    end else begin
      enaPcReg <= _GEN_52;
    end
    if (reset) begin // @[Lipsi.scala 59:24]
      funcReg <= 3'h0; // @[Lipsi.scala 59:24]
    end else if (3'h0 == stateReg) begin // @[Lipsi.scala 126:20]
      if (mem_io_rdData[7:4] == 4'hc) begin // @[Lipsi.scala 156:36]
        funcReg <= mem_io_rdData[2:0]; // @[Lipsi.scala 157:17]
      end else if (~mem_io_rdData[7]) begin // @[Lipsi.scala 131:31]
        funcReg <= mem_io_rdData[6:4]; // @[Lipsi.scala 133:17]
      end else begin
        funcReg <= mem_io_rdData[6:4]; // @[Lipsi.scala 129:15]
      end
    end else if (!(3'h2 == stateReg)) begin // @[Lipsi.scala 126:20]
      if (!(3'h1 == stateReg)) begin // @[Lipsi.scala 126:20]
        funcReg <= _GEN_27;
      end
    end
    if (reset) begin // @[Lipsi.scala 63:23]
      outReg <= 8'h0; // @[Lipsi.scala 63:23]
    end else if (3'h0 == stateReg) begin // @[Lipsi.scala 126:20]
      if (mem_io_rdData == 8'hf0) begin // @[Lipsi.scala 167:31]
        outReg <= accuReg; // @[Lipsi.scala 168:16]
      end
    end
    if (reset) begin // @[Lipsi.scala 64:25]
      enaIoReg <= 1'h0; // @[Lipsi.scala 64:25]
    end else begin
      enaIoReg <= _GEN_54;
    end
    if (reset) begin // @[Lipsi.scala 109:25]
      stateReg <= 3'h0; // @[Lipsi.scala 109:25]
    end else if (3'h0 == stateReg) begin // @[Lipsi.scala 126:20]
      if (mem_io_rdData == 8'hff) begin // @[Lipsi.scala 173:31]
        stateReg <= 3'h5; // @[Lipsi.scala 174:18]
      end else if (mem_io_rdData == 8'hf0) begin // @[Lipsi.scala 167:31]
        stateReg <= 3'h0; // @[Lipsi.scala 170:18]
      end else begin
        stateReg <= _GEN_14;
      end
    end else if (3'h2 == stateReg) begin // @[Lipsi.scala 126:20]
      stateReg <= 3'h0; // @[Lipsi.scala 179:16]
    end else if (3'h1 == stateReg) begin // @[Lipsi.scala 126:20]
      stateReg <= 3'h0; // @[Lipsi.scala 182:16]
    end else begin
      stateReg <= _GEN_30;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  pcReg = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  accuReg = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  enaAccuReg = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  enaPcReg = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  funcReg = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  outReg = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  enaIoReg = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  stateReg = _RAND_7[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Decoder(
  input  [3:0] counter,
  output [6:0] segments
);
  wire [6:0] _GEN_0 = 4'hf == counter ? 7'h71 : 7'h0; // @[ChiselTop.scala 11:12 12:20 48:26]
  wire [6:0] _GEN_1 = 4'he == counter ? 7'h79 : _GEN_0; // @[ChiselTop.scala 12:20 47:26]
  wire [6:0] _GEN_2 = 4'hd == counter ? 7'h5e : _GEN_1; // @[ChiselTop.scala 12:20 46:26]
  wire [6:0] _GEN_3 = 4'hc == counter ? 7'h39 : _GEN_2; // @[ChiselTop.scala 12:20 45:26]
  wire [6:0] _GEN_4 = 4'hb == counter ? 7'h7c : _GEN_3; // @[ChiselTop.scala 12:20 44:26]
  wire [6:0] _GEN_5 = 4'ha == counter ? 7'h77 : _GEN_4; // @[ChiselTop.scala 12:20 43:26]
  wire [6:0] _GEN_6 = 4'h9 == counter ? 7'h67 : _GEN_5; // @[ChiselTop.scala 12:20 41:16]
  wire [6:0] _GEN_7 = 4'h8 == counter ? 7'h7f : _GEN_6; // @[ChiselTop.scala 12:20 38:16]
  wire [6:0] _GEN_8 = 4'h7 == counter ? 7'h7 : _GEN_7; // @[ChiselTop.scala 12:20 35:16]
  wire [6:0] _GEN_9 = 4'h6 == counter ? 7'h7c : _GEN_8; // @[ChiselTop.scala 12:20 32:16]
  wire [6:0] _GEN_10 = 4'h5 == counter ? 7'h6d : _GEN_9; // @[ChiselTop.scala 12:20 29:16]
  wire [6:0] _GEN_11 = 4'h4 == counter ? 7'h66 : _GEN_10; // @[ChiselTop.scala 12:20 26:16]
  wire [6:0] _GEN_12 = 4'h3 == counter ? 7'h4f : _GEN_11; // @[ChiselTop.scala 12:20 23:16]
  wire [6:0] _GEN_13 = 4'h2 == counter ? 7'h5b : _GEN_12; // @[ChiselTop.scala 12:20 20:16]
  wire [6:0] _GEN_14 = 4'h1 == counter ? 7'h6 : _GEN_13; // @[ChiselTop.scala 12:20 17:16]
  assign segments = 4'h0 == counter ? 7'h3f : _GEN_14; // @[ChiselTop.scala 12:20 14:16]
endmodule
module ChiselTop(
  input        clock,
  input        reset,
  input  [7:0] io_ui_in,
  output [7:0] io_uo_out,
  input  [7:0] io_uio_in,
  output [7:0] io_uio_out,
  output [7:0] io_uio_oe,
  input        io_ena
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  lipsi_clock; // @[ChiselTop.scala 72:21]
  wire  lipsi_reset; // @[ChiselTop.scala 72:21]
  wire [7:0] lipsi_io_dout; // @[ChiselTop.scala 72:21]
  wire [7:0] lipsi_io_din; // @[ChiselTop.scala 72:21]
  wire [3:0] dec_counter; // @[ChiselTop.scala 83:19]
  wire [6:0] dec_segments; // @[ChiselTop.scala 83:19]
  wire [7:0] _add_T_1 = io_ui_in + io_uio_in; // @[ChiselTop.scala 70:19]
  reg [31:0] cntReg; // @[ChiselTop.scala 76:23]
  reg  ledReg; // @[ChiselTop.scala 77:23]
  wire [31:0] _cntReg_T_1 = cntReg + 32'h1; // @[ChiselTop.scala 78:20]
  wire  led = io_ui_in[0] & ledReg; // @[ChiselTop.scala 86:16]
  wire [6:0] add = _add_T_1[6:0]; // @[ChiselTop.scala 69:24 70:7]
  Lipsi lipsi ( // @[ChiselTop.scala 72:21]
    .clock(lipsi_clock),
    .reset(lipsi_reset),
    .io_dout(lipsi_io_dout),
    .io_din(lipsi_io_din)
  );
  Decoder dec ( // @[ChiselTop.scala 83:19]
    .counter(dec_counter),
    .segments(dec_segments)
  );
  assign io_uo_out = {led,dec_segments}; // @[ChiselTop.scala 88:20]
  assign io_uio_out = 8'h0; // @[ChiselTop.scala 65:14]
  assign io_uio_oe = 8'h0; // @[ChiselTop.scala 67:13]
  assign lipsi_clock = clock;
  assign lipsi_reset = reset;
  assign lipsi_io_din = {{1'd0}, add}; // @[ChiselTop.scala 73:16]
  assign dec_counter = lipsi_io_dout[3:0]; // @[ChiselTop.scala 84:31]
  always @(posedge clock) begin
    if (reset) begin // @[ChiselTop.scala 76:23]
      cntReg <= 32'h0; // @[ChiselTop.scala 76:23]
    end else if (cntReg == 32'h17d7840) begin // @[ChiselTop.scala 79:32]
      cntReg <= 32'h0; // @[ChiselTop.scala 80:12]
    end else begin
      cntReg <= _cntReg_T_1; // @[ChiselTop.scala 78:10]
    end
    if (reset) begin // @[ChiselTop.scala 77:23]
      ledReg <= 1'h0; // @[ChiselTop.scala 77:23]
    end else if (cntReg == 32'h17d7840) begin // @[ChiselTop.scala 79:32]
      ledReg <= ~ledReg; // @[ChiselTop.scala 81:12]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cntReg = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  ledReg = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
