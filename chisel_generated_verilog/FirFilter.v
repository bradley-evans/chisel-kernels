module FirFilter( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  input  [7:0] io_in, // @[:@6.4]
  output [7:0] io_out // @[:@6.4]
);
  reg [7:0] zs_0; // @[FirFilter.scala 13:15:@8.4]
  reg [31:0] _RAND_0;
  reg [7:0] zs_1; // @[FirFilter.scala 13:15:@8.4]
  reg [31:0] _RAND_1;
  reg [7:0] zs_2; // @[FirFilter.scala 13:15:@8.4]
  reg [31:0] _RAND_2;
  reg [7:0] zs_3; // @[FirFilter.scala 13:15:@8.4]
  reg [31:0] _RAND_3;
  wire [9:0] _T_18; // @[FirFilter.scala 20:61:@13.4]
  wire [8:0] _T_19; // @[FirFilter.scala 20:61:@14.4]
  wire [10:0] _T_20; // @[FirFilter.scala 20:61:@15.4]
  wire [11:0] products_3; // @[FirFilter.scala 20:61:@16.4]
  wire [11:0] products_0; // @[FirFilter.scala 20:49:@17.4 FirFilter.scala 20:49:@18.4]
  wire [11:0] products_1; // @[FirFilter.scala 20:49:@17.4 FirFilter.scala 20:49:@19.4]
  wire [12:0] _T_31; // @[FirFilter.scala 23:31:@22.4]
  wire [11:0] _T_32; // @[FirFilter.scala 23:31:@23.4]
  wire [11:0] _T_33; // @[FirFilter.scala 23:31:@24.4]
  wire [11:0] products_2; // @[FirFilter.scala 20:49:@17.4 FirFilter.scala 20:49:@20.4]
  wire [12:0] _T_34; // @[FirFilter.scala 23:31:@25.4]
  wire [11:0] _T_35; // @[FirFilter.scala 23:31:@26.4]
  wire [11:0] _T_36; // @[FirFilter.scala 23:31:@27.4]
  wire [12:0] _T_37; // @[FirFilter.scala 23:31:@28.4]
  wire [11:0] _T_38; // @[FirFilter.scala 23:31:@29.4]
  wire [11:0] _T_39; // @[FirFilter.scala 23:31:@30.4]
  wire [7:0] _GEN_0; // @[FirFilter.scala 23:10:@31.4]
  assign _T_18 = $signed(zs_0) * $signed(-8'sh2); // @[FirFilter.scala 20:61:@13.4]
  assign _T_19 = $signed(zs_1) * $signed(-8'sh1); // @[FirFilter.scala 20:61:@14.4]
  assign _T_20 = $signed(zs_2) * $signed(8'sh3); // @[FirFilter.scala 20:61:@15.4]
  assign products_3 = $signed(zs_3) * $signed(8'sh4); // @[FirFilter.scala 20:61:@16.4]
  assign products_0 = {{2{_T_18[9]}},_T_18}; // @[FirFilter.scala 20:49:@17.4 FirFilter.scala 20:49:@18.4]
  assign products_1 = {{3{_T_19[8]}},_T_19}; // @[FirFilter.scala 20:49:@17.4 FirFilter.scala 20:49:@19.4]
  assign _T_31 = $signed(products_0) + $signed(products_1); // @[FirFilter.scala 23:31:@22.4]
  assign _T_32 = $signed(products_0) + $signed(products_1); // @[FirFilter.scala 23:31:@23.4]
  assign _T_33 = $signed(_T_32); // @[FirFilter.scala 23:31:@24.4]
  assign products_2 = {{1{_T_20[10]}},_T_20}; // @[FirFilter.scala 20:49:@17.4 FirFilter.scala 20:49:@20.4]
  assign _T_34 = $signed(_T_33) + $signed(products_2); // @[FirFilter.scala 23:31:@25.4]
  assign _T_35 = $signed(_T_33) + $signed(products_2); // @[FirFilter.scala 23:31:@26.4]
  assign _T_36 = $signed(_T_35); // @[FirFilter.scala 23:31:@27.4]
  assign _T_37 = $signed(_T_36) + $signed(products_3); // @[FirFilter.scala 23:31:@28.4]
  assign _T_38 = $signed(_T_36) + $signed(products_3); // @[FirFilter.scala 23:31:@29.4]
  assign _T_39 = $signed(_T_38); // @[FirFilter.scala 23:31:@30.4]
  assign _GEN_0 = _T_39[7:0]; // @[FirFilter.scala 23:10:@31.4]
  assign io_out = $signed(_GEN_0); // @[FirFilter.scala 23:10:@31.4]
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
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  zs_0 = _RAND_0[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  zs_1 = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  zs_2 = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  zs_3 = _RAND_3[7:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    zs_0 <= io_in;
    zs_1 <= zs_0;
    zs_2 <= zs_1;
    zs_3 <= zs_2;
  end
endmodule
