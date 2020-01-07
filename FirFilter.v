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
  reg [7:0] zs_8; // @[FirFilter.scala 13:15:@8.4]
  reg [31:0] _RAND_8;
  reg [7:0] zs_9; // @[FirFilter.scala 13:15:@8.4]
  reg [31:0] _RAND_9;
  reg [7:0] zs_10; // @[FirFilter.scala 13:15:@8.4]
  reg [31:0] _RAND_10;
  reg [7:0] zs_11; // @[FirFilter.scala 13:15:@8.4]
  reg [31:0] _RAND_11;
  reg [7:0] zs_12; // @[FirFilter.scala 13:15:@8.4]
  reg [31:0] _RAND_12;
  reg [7:0] zs_13; // @[FirFilter.scala 13:15:@8.4]
  reg [31:0] _RAND_13;
  reg [7:0] zs_14; // @[FirFilter.scala 13:15:@8.4]
  reg [31:0] _RAND_14;
  reg [7:0] zs_15; // @[FirFilter.scala 13:15:@8.4]
  reg [31:0] _RAND_15;
  wire [9:0] _T_30; // @[FirFilter.scala 20:61:@25.4]
  wire [8:0] _T_31; // @[FirFilter.scala 20:61:@26.4]
  wire [10:0] _T_32; // @[FirFilter.scala 20:61:@27.4]
  wire [11:0] products_3; // @[FirFilter.scala 20:61:@28.4]
  wire [9:0] _T_34; // @[FirFilter.scala 20:61:@29.4]
  wire [9:0] _T_35; // @[FirFilter.scala 20:61:@30.4]
  wire [9:0] _T_36; // @[FirFilter.scala 20:61:@31.4]
  wire [9:0] _T_37; // @[FirFilter.scala 20:61:@32.4]
  wire [9:0] _T_38; // @[FirFilter.scala 20:61:@33.4]
  wire [9:0] _T_39; // @[FirFilter.scala 20:61:@34.4]
  wire [9:0] _T_40; // @[FirFilter.scala 20:61:@35.4]
  wire [9:0] _T_41; // @[FirFilter.scala 20:61:@36.4]
  wire [9:0] _T_42; // @[FirFilter.scala 20:61:@37.4]
  wire [9:0] _T_43; // @[FirFilter.scala 20:61:@38.4]
  wire [9:0] _T_44; // @[FirFilter.scala 20:61:@39.4]
  wire [9:0] _T_45; // @[FirFilter.scala 20:61:@40.4]
  wire [11:0] products_0; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@42.4]
  wire [11:0] products_1; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@43.4]
  wire [12:0] _T_67; // @[FirFilter.scala 23:31:@58.4]
  wire [11:0] _T_68; // @[FirFilter.scala 23:31:@59.4]
  wire [11:0] _T_69; // @[FirFilter.scala 23:31:@60.4]
  wire [11:0] products_2; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@44.4]
  wire [12:0] _T_70; // @[FirFilter.scala 23:31:@61.4]
  wire [11:0] _T_71; // @[FirFilter.scala 23:31:@62.4]
  wire [11:0] _T_72; // @[FirFilter.scala 23:31:@63.4]
  wire [12:0] _T_73; // @[FirFilter.scala 23:31:@64.4]
  wire [11:0] _T_74; // @[FirFilter.scala 23:31:@65.4]
  wire [11:0] _T_75; // @[FirFilter.scala 23:31:@66.4]
  wire [11:0] products_4; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@46.4]
  wire [12:0] _T_76; // @[FirFilter.scala 23:31:@67.4]
  wire [11:0] _T_77; // @[FirFilter.scala 23:31:@68.4]
  wire [11:0] _T_78; // @[FirFilter.scala 23:31:@69.4]
  wire [11:0] products_5; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@47.4]
  wire [12:0] _T_79; // @[FirFilter.scala 23:31:@70.4]
  wire [11:0] _T_80; // @[FirFilter.scala 23:31:@71.4]
  wire [11:0] _T_81; // @[FirFilter.scala 23:31:@72.4]
  wire [11:0] products_6; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@48.4]
  wire [12:0] _T_82; // @[FirFilter.scala 23:31:@73.4]
  wire [11:0] _T_83; // @[FirFilter.scala 23:31:@74.4]
  wire [11:0] _T_84; // @[FirFilter.scala 23:31:@75.4]
  wire [11:0] products_7; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@49.4]
  wire [12:0] _T_85; // @[FirFilter.scala 23:31:@76.4]
  wire [11:0] _T_86; // @[FirFilter.scala 23:31:@77.4]
  wire [11:0] _T_87; // @[FirFilter.scala 23:31:@78.4]
  wire [11:0] products_8; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@50.4]
  wire [12:0] _T_88; // @[FirFilter.scala 23:31:@79.4]
  wire [11:0] _T_89; // @[FirFilter.scala 23:31:@80.4]
  wire [11:0] _T_90; // @[FirFilter.scala 23:31:@81.4]
  wire [11:0] products_9; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@51.4]
  wire [12:0] _T_91; // @[FirFilter.scala 23:31:@82.4]
  wire [11:0] _T_92; // @[FirFilter.scala 23:31:@83.4]
  wire [11:0] _T_93; // @[FirFilter.scala 23:31:@84.4]
  wire [11:0] products_10; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@52.4]
  wire [12:0] _T_94; // @[FirFilter.scala 23:31:@85.4]
  wire [11:0] _T_95; // @[FirFilter.scala 23:31:@86.4]
  wire [11:0] _T_96; // @[FirFilter.scala 23:31:@87.4]
  wire [11:0] products_11; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@53.4]
  wire [12:0] _T_97; // @[FirFilter.scala 23:31:@88.4]
  wire [11:0] _T_98; // @[FirFilter.scala 23:31:@89.4]
  wire [11:0] _T_99; // @[FirFilter.scala 23:31:@90.4]
  wire [11:0] products_12; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@54.4]
  wire [12:0] _T_100; // @[FirFilter.scala 23:31:@91.4]
  wire [11:0] _T_101; // @[FirFilter.scala 23:31:@92.4]
  wire [11:0] _T_102; // @[FirFilter.scala 23:31:@93.4]
  wire [11:0] products_13; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@55.4]
  wire [12:0] _T_103; // @[FirFilter.scala 23:31:@94.4]
  wire [11:0] _T_104; // @[FirFilter.scala 23:31:@95.4]
  wire [11:0] _T_105; // @[FirFilter.scala 23:31:@96.4]
  wire [11:0] products_14; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@56.4]
  wire [12:0] _T_106; // @[FirFilter.scala 23:31:@97.4]
  wire [11:0] _T_107; // @[FirFilter.scala 23:31:@98.4]
  wire [11:0] _T_108; // @[FirFilter.scala 23:31:@99.4]
  wire [11:0] products_15; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@57.4]
  wire [12:0] _T_109; // @[FirFilter.scala 23:31:@100.4]
  wire [11:0] _T_110; // @[FirFilter.scala 23:31:@101.4]
  wire [11:0] _T_111; // @[FirFilter.scala 23:31:@102.4]
  wire [7:0] _GEN_0; // @[FirFilter.scala 23:10:@103.4]
  assign _T_30 = $signed(zs_0) * $signed(-8'sh2); // @[FirFilter.scala 20:61:@25.4]
  assign _T_31 = $signed(zs_1) * $signed(-8'sh1); // @[FirFilter.scala 20:61:@26.4]
  assign _T_32 = $signed(zs_2) * $signed(8'sh3); // @[FirFilter.scala 20:61:@27.4]
  assign products_3 = $signed(zs_3) * $signed(8'sh4); // @[FirFilter.scala 20:61:@28.4]
  assign _T_34 = $signed(zs_4) * $signed(8'sh1); // @[FirFilter.scala 20:61:@29.4]
  assign _T_35 = $signed(zs_5) * $signed(8'sh1); // @[FirFilter.scala 20:61:@30.4]
  assign _T_36 = $signed(zs_6) * $signed(8'sh1); // @[FirFilter.scala 20:61:@31.4]
  assign _T_37 = $signed(zs_7) * $signed(8'sh1); // @[FirFilter.scala 20:61:@32.4]
  assign _T_38 = $signed(zs_8) * $signed(8'sh1); // @[FirFilter.scala 20:61:@33.4]
  assign _T_39 = $signed(zs_9) * $signed(8'sh1); // @[FirFilter.scala 20:61:@34.4]
  assign _T_40 = $signed(zs_10) * $signed(8'sh1); // @[FirFilter.scala 20:61:@35.4]
  assign _T_41 = $signed(zs_11) * $signed(8'sh1); // @[FirFilter.scala 20:61:@36.4]
  assign _T_42 = $signed(zs_12) * $signed(8'sh1); // @[FirFilter.scala 20:61:@37.4]
  assign _T_43 = $signed(zs_13) * $signed(8'sh1); // @[FirFilter.scala 20:61:@38.4]
  assign _T_44 = $signed(zs_14) * $signed(8'sh1); // @[FirFilter.scala 20:61:@39.4]
  assign _T_45 = $signed(zs_15) * $signed(8'sh1); // @[FirFilter.scala 20:61:@40.4]
  assign products_0 = {{2{_T_30[9]}},_T_30}; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@42.4]
  assign products_1 = {{3{_T_31[8]}},_T_31}; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@43.4]
  assign _T_67 = $signed(products_0) + $signed(products_1); // @[FirFilter.scala 23:31:@58.4]
  assign _T_68 = $signed(products_0) + $signed(products_1); // @[FirFilter.scala 23:31:@59.4]
  assign _T_69 = $signed(_T_68); // @[FirFilter.scala 23:31:@60.4]
  assign products_2 = {{1{_T_32[10]}},_T_32}; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@44.4]
  assign _T_70 = $signed(_T_69) + $signed(products_2); // @[FirFilter.scala 23:31:@61.4]
  assign _T_71 = $signed(_T_69) + $signed(products_2); // @[FirFilter.scala 23:31:@62.4]
  assign _T_72 = $signed(_T_71); // @[FirFilter.scala 23:31:@63.4]
  assign _T_73 = $signed(_T_72) + $signed(products_3); // @[FirFilter.scala 23:31:@64.4]
  assign _T_74 = $signed(_T_72) + $signed(products_3); // @[FirFilter.scala 23:31:@65.4]
  assign _T_75 = $signed(_T_74); // @[FirFilter.scala 23:31:@66.4]
  assign products_4 = {{2{_T_34[9]}},_T_34}; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@46.4]
  assign _T_76 = $signed(_T_75) + $signed(products_4); // @[FirFilter.scala 23:31:@67.4]
  assign _T_77 = $signed(_T_75) + $signed(products_4); // @[FirFilter.scala 23:31:@68.4]
  assign _T_78 = $signed(_T_77); // @[FirFilter.scala 23:31:@69.4]
  assign products_5 = {{2{_T_35[9]}},_T_35}; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@47.4]
  assign _T_79 = $signed(_T_78) + $signed(products_5); // @[FirFilter.scala 23:31:@70.4]
  assign _T_80 = $signed(_T_78) + $signed(products_5); // @[FirFilter.scala 23:31:@71.4]
  assign _T_81 = $signed(_T_80); // @[FirFilter.scala 23:31:@72.4]
  assign products_6 = {{2{_T_36[9]}},_T_36}; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@48.4]
  assign _T_82 = $signed(_T_81) + $signed(products_6); // @[FirFilter.scala 23:31:@73.4]
  assign _T_83 = $signed(_T_81) + $signed(products_6); // @[FirFilter.scala 23:31:@74.4]
  assign _T_84 = $signed(_T_83); // @[FirFilter.scala 23:31:@75.4]
  assign products_7 = {{2{_T_37[9]}},_T_37}; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@49.4]
  assign _T_85 = $signed(_T_84) + $signed(products_7); // @[FirFilter.scala 23:31:@76.4]
  assign _T_86 = $signed(_T_84) + $signed(products_7); // @[FirFilter.scala 23:31:@77.4]
  assign _T_87 = $signed(_T_86); // @[FirFilter.scala 23:31:@78.4]
  assign products_8 = {{2{_T_38[9]}},_T_38}; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@50.4]
  assign _T_88 = $signed(_T_87) + $signed(products_8); // @[FirFilter.scala 23:31:@79.4]
  assign _T_89 = $signed(_T_87) + $signed(products_8); // @[FirFilter.scala 23:31:@80.4]
  assign _T_90 = $signed(_T_89); // @[FirFilter.scala 23:31:@81.4]
  assign products_9 = {{2{_T_39[9]}},_T_39}; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@51.4]
  assign _T_91 = $signed(_T_90) + $signed(products_9); // @[FirFilter.scala 23:31:@82.4]
  assign _T_92 = $signed(_T_90) + $signed(products_9); // @[FirFilter.scala 23:31:@83.4]
  assign _T_93 = $signed(_T_92); // @[FirFilter.scala 23:31:@84.4]
  assign products_10 = {{2{_T_40[9]}},_T_40}; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@52.4]
  assign _T_94 = $signed(_T_93) + $signed(products_10); // @[FirFilter.scala 23:31:@85.4]
  assign _T_95 = $signed(_T_93) + $signed(products_10); // @[FirFilter.scala 23:31:@86.4]
  assign _T_96 = $signed(_T_95); // @[FirFilter.scala 23:31:@87.4]
  assign products_11 = {{2{_T_41[9]}},_T_41}; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@53.4]
  assign _T_97 = $signed(_T_96) + $signed(products_11); // @[FirFilter.scala 23:31:@88.4]
  assign _T_98 = $signed(_T_96) + $signed(products_11); // @[FirFilter.scala 23:31:@89.4]
  assign _T_99 = $signed(_T_98); // @[FirFilter.scala 23:31:@90.4]
  assign products_12 = {{2{_T_42[9]}},_T_42}; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@54.4]
  assign _T_100 = $signed(_T_99) + $signed(products_12); // @[FirFilter.scala 23:31:@91.4]
  assign _T_101 = $signed(_T_99) + $signed(products_12); // @[FirFilter.scala 23:31:@92.4]
  assign _T_102 = $signed(_T_101); // @[FirFilter.scala 23:31:@93.4]
  assign products_13 = {{2{_T_43[9]}},_T_43}; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@55.4]
  assign _T_103 = $signed(_T_102) + $signed(products_13); // @[FirFilter.scala 23:31:@94.4]
  assign _T_104 = $signed(_T_102) + $signed(products_13); // @[FirFilter.scala 23:31:@95.4]
  assign _T_105 = $signed(_T_104); // @[FirFilter.scala 23:31:@96.4]
  assign products_14 = {{2{_T_44[9]}},_T_44}; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@56.4]
  assign _T_106 = $signed(_T_105) + $signed(products_14); // @[FirFilter.scala 23:31:@97.4]
  assign _T_107 = $signed(_T_105) + $signed(products_14); // @[FirFilter.scala 23:31:@98.4]
  assign _T_108 = $signed(_T_107); // @[FirFilter.scala 23:31:@99.4]
  assign products_15 = {{2{_T_45[9]}},_T_45}; // @[FirFilter.scala 20:49:@41.4 FirFilter.scala 20:49:@57.4]
  assign _T_109 = $signed(_T_108) + $signed(products_15); // @[FirFilter.scala 23:31:@100.4]
  assign _T_110 = $signed(_T_108) + $signed(products_15); // @[FirFilter.scala 23:31:@101.4]
  assign _T_111 = $signed(_T_110); // @[FirFilter.scala 23:31:@102.4]
  assign _GEN_0 = _T_111[7:0]; // @[FirFilter.scala 23:10:@103.4]
  assign io_out = $signed(_GEN_0); // @[FirFilter.scala 23:10:@103.4]
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
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  zs_8 = _RAND_8[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  zs_9 = _RAND_9[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  zs_10 = _RAND_10[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  zs_11 = _RAND_11[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  zs_12 = _RAND_12[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  zs_13 = _RAND_13[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  zs_14 = _RAND_14[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  zs_15 = _RAND_15[7:0];
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
    zs_8 <= zs_7;
    zs_9 <= zs_8;
    zs_10 <= zs_9;
    zs_11 <= zs_10;
    zs_12 <= zs_11;
    zs_13 <= zs_12;
    zs_14 <= zs_13;
    zs_15 <= zs_14;
  end
endmodule
