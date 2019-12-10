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
  reg [7:0] zs_4; // @[FirFilter.scala 13:15:@8.4]
  reg [31:0] _RAND_4;
  reg [7:0] zs_5; // @[FirFilter.scala 13:15:@8.4]
  reg [31:0] _RAND_5;
  reg [7:0] zs_6; // @[FirFilter.scala 13:15:@8.4]
  reg [31:0] _RAND_6;
  reg [7:0] zs_7; // @[FirFilter.scala 13:15:@8.4]
  reg [31:0] _RAND_7;
  wire [9:0] _T_22; // @[FirFilter.scala 20:61:@17.4]
  wire [8:0] _T_23; // @[FirFilter.scala 20:61:@18.4]
  wire [10:0] _T_24; // @[FirFilter.scala 20:61:@19.4]
  wire [11:0] products_3; // @[FirFilter.scala 20:61:@20.4]
  wire [9:0] _T_26; // @[FirFilter.scala 20:61:@21.4]
  wire [9:0] _T_27; // @[FirFilter.scala 20:61:@22.4]
  wire [9:0] _T_28; // @[FirFilter.scala 20:61:@23.4]
  wire [9:0] _T_29; // @[FirFilter.scala 20:61:@24.4]
  wire [11:0] products_0; // @[FirFilter.scala 20:49:@25.4 FirFilter.scala 20:49:@26.4]
  wire [11:0] products_1; // @[FirFilter.scala 20:49:@25.4 FirFilter.scala 20:49:@27.4]
  wire [12:0] _T_43; // @[FirFilter.scala 23:31:@34.4]
  wire [11:0] _T_44; // @[FirFilter.scala 23:31:@35.4]
  wire [11:0] _T_45; // @[FirFilter.scala 23:31:@36.4]
  wire [11:0] products_2; // @[FirFilter.scala 20:49:@25.4 FirFilter.scala 20:49:@28.4]
  wire [12:0] _T_46; // @[FirFilter.scala 23:31:@37.4]
  wire [11:0] _T_47; // @[FirFilter.scala 23:31:@38.4]
  wire [11:0] _T_48; // @[FirFilter.scala 23:31:@39.4]
  wire [12:0] _T_49; // @[FirFilter.scala 23:31:@40.4]
  wire [11:0] _T_50; // @[FirFilter.scala 23:31:@41.4]
  wire [11:0] _T_51; // @[FirFilter.scala 23:31:@42.4]
  wire [11:0] products_4; // @[FirFilter.scala 20:49:@25.4 FirFilter.scala 20:49:@30.4]
  wire [12:0] _T_52; // @[FirFilter.scala 23:31:@43.4]
  wire [11:0] _T_53; // @[FirFilter.scala 23:31:@44.4]
  wire [11:0] _T_54; // @[FirFilter.scala 23:31:@45.4]
  wire [11:0] products_5; // @[FirFilter.scala 20:49:@25.4 FirFilter.scala 20:49:@31.4]
  wire [12:0] _T_55; // @[FirFilter.scala 23:31:@46.4]
  wire [11:0] _T_56; // @[FirFilter.scala 23:31:@47.4]
  wire [11:0] _T_57; // @[FirFilter.scala 23:31:@48.4]
  wire [11:0] products_6; // @[FirFilter.scala 20:49:@25.4 FirFilter.scala 20:49:@32.4]
  wire [12:0] _T_58; // @[FirFilter.scala 23:31:@49.4]
  wire [11:0] _T_59; // @[FirFilter.scala 23:31:@50.4]
  wire [11:0] _T_60; // @[FirFilter.scala 23:31:@51.4]
  wire [11:0] products_7; // @[FirFilter.scala 20:49:@25.4 FirFilter.scala 20:49:@33.4]
  wire [12:0] _T_61; // @[FirFilter.scala 23:31:@52.4]
  wire [11:0] _T_62; // @[FirFilter.scala 23:31:@53.4]
  wire [11:0] _T_63; // @[FirFilter.scala 23:31:@54.4]
  wire [7:0] _GEN_0; // @[FirFilter.scala 23:10:@55.4]
  assign _T_22 = $signed(zs_0) * $signed(-8'sh2); // @[FirFilter.scala 20:61:@17.4]
  assign _T_23 = $signed(zs_1) * $signed(-8'sh1); // @[FirFilter.scala 20:61:@18.4]
  assign _T_24 = $signed(zs_2) * $signed(8'sh3); // @[FirFilter.scala 20:61:@19.4]
  assign products_3 = $signed(zs_3) * $signed(8'sh4); // @[FirFilter.scala 20:61:@20.4]
  assign _T_26 = $signed(zs_4) * $signed(8'sh1); // @[FirFilter.scala 20:61:@21.4]
  assign _T_27 = $signed(zs_5) * $signed(8'sh1); // @[FirFilter.scala 20:61:@22.4]
  assign _T_28 = $signed(zs_6) * $signed(8'sh1); // @[FirFilter.scala 20:61:@23.4]
  assign _T_29 = $signed(zs_7) * $signed(8'sh1); // @[FirFilter.scala 20:61:@24.4]
  assign products_0 = {{2{_T_22[9]}},_T_22}; // @[FirFilter.scala 20:49:@25.4 FirFilter.scala 20:49:@26.4]
  assign products_1 = {{3{_T_23[8]}},_T_23}; // @[FirFilter.scala 20:49:@25.4 FirFilter.scala 20:49:@27.4]
  assign _T_43 = $signed(products_0) + $signed(products_1); // @[FirFilter.scala 23:31:@34.4]
  assign _T_44 = $signed(products_0) + $signed(products_1); // @[FirFilter.scala 23:31:@35.4]
  assign _T_45 = $signed(_T_44); // @[FirFilter.scala 23:31:@36.4]
  assign products_2 = {{1{_T_24[10]}},_T_24}; // @[FirFilter.scala 20:49:@25.4 FirFilter.scala 20:49:@28.4]
  assign _T_46 = $signed(_T_45) + $signed(products_2); // @[FirFilter.scala 23:31:@37.4]
  assign _T_47 = $signed(_T_45) + $signed(products_2); // @[FirFilter.scala 23:31:@38.4]
  assign _T_48 = $signed(_T_47); // @[FirFilter.scala 23:31:@39.4]
  assign _T_49 = $signed(_T_48) + $signed(products_3); // @[FirFilter.scala 23:31:@40.4]
  assign _T_50 = $signed(_T_48) + $signed(products_3); // @[FirFilter.scala 23:31:@41.4]
  assign _T_51 = $signed(_T_50); // @[FirFilter.scala 23:31:@42.4]
  assign products_4 = {{2{_T_26[9]}},_T_26}; // @[FirFilter.scala 20:49:@25.4 FirFilter.scala 20:49:@30.4]
  assign _T_52 = $signed(_T_51) + $signed(products_4); // @[FirFilter.scala 23:31:@43.4]
  assign _T_53 = $signed(_T_51) + $signed(products_4); // @[FirFilter.scala 23:31:@44.4]
  assign _T_54 = $signed(_T_53); // @[FirFilter.scala 23:31:@45.4]
  assign products_5 = {{2{_T_27[9]}},_T_27}; // @[FirFilter.scala 20:49:@25.4 FirFilter.scala 20:49:@31.4]
  assign _T_55 = $signed(_T_54) + $signed(products_5); // @[FirFilter.scala 23:31:@46.4]
  assign _T_56 = $signed(_T_54) + $signed(products_5); // @[FirFilter.scala 23:31:@47.4]
  assign _T_57 = $signed(_T_56); // @[FirFilter.scala 23:31:@48.4]
  assign products_6 = {{2{_T_28[9]}},_T_28}; // @[FirFilter.scala 20:49:@25.4 FirFilter.scala 20:49:@32.4]
  assign _T_58 = $signed(_T_57) + $signed(products_6); // @[FirFilter.scala 23:31:@49.4]
  assign _T_59 = $signed(_T_57) + $signed(products_6); // @[FirFilter.scala 23:31:@50.4]
  assign _T_60 = $signed(_T_59); // @[FirFilter.scala 23:31:@51.4]
  assign products_7 = {{2{_T_29[9]}},_T_29}; // @[FirFilter.scala 20:49:@25.4 FirFilter.scala 20:49:@33.4]
  assign _T_61 = $signed(_T_60) + $signed(products_7); // @[FirFilter.scala 23:31:@52.4]
  assign _T_62 = $signed(_T_60) + $signed(products_7); // @[FirFilter.scala 23:31:@53.4]
  assign _T_63 = $signed(_T_62); // @[FirFilter.scala 23:31:@54.4]
  assign _GEN_0 = _T_63[7:0]; // @[FirFilter.scala 23:10:@55.4]
  assign io_out = $signed(_GEN_0); // @[FirFilter.scala 23:10:@55.4]
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
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  zs_4 = _RAND_4[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  zs_5 = _RAND_5[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  zs_6 = _RAND_6[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  zs_7 = _RAND_7[7:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    zs_0 <= io_in;
    zs_1 <= zs_0;
    zs_2 <= zs_1;
    zs_3 <= zs_2;
    zs_4 <= zs_3;
    zs_5 <= zs_4;
    zs_6 <= zs_5;
    zs_7 <= zs_6;
  end
endmodule
