module cic3( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_clockslow, // @[:@6.4]
  input  [9:0]  io_integscale, // @[:@6.4]
  input  [4:0]  io_integshift, // @[:@6.4]
  input  [15:0] io_iptr_A_real, // @[:@6.4]
  input  [15:0] io_iptr_A_imag, // @[:@6.4]
  output [15:0] io_Z_real, // @[:@6.4]
  output [15:0] io_Z_imag // @[:@6.4]
);
  reg [27:0] integregs_0_real; // @[cic3.scala 28:29:@29.4]
  reg [31:0] _RAND_0;
  reg [27:0] integregs_0_imag; // @[cic3.scala 28:29:@29.4]
  reg [31:0] _RAND_1;
  reg [27:0] integregs_1_real; // @[cic3.scala 28:29:@29.4]
  reg [31:0] _RAND_2;
  reg [27:0] integregs_1_imag; // @[cic3.scala 28:29:@29.4]
  reg [31:0] _RAND_3;
  reg [27:0] integregs_2_real; // @[cic3.scala 28:29:@29.4]
  reg [31:0] _RAND_4;
  reg [27:0] integregs_2_imag; // @[cic3.scala 28:29:@29.4]
  reg [31:0] _RAND_5;
  reg [27:0] integregs_3_real; // @[cic3.scala 28:29:@29.4]
  reg [31:0] _RAND_6;
  reg [27:0] integregs_3_imag; // @[cic3.scala 28:29:@29.4]
  reg [31:0] _RAND_7;
  wire [28:0] _T_219; // @[SIntTypeClass.scala 18:40:@32.4]
  wire [27:0] _T_220; // @[SIntTypeClass.scala 18:40:@33.4]
  wire [27:0] _T_221; // @[SIntTypeClass.scala 18:40:@34.4]
  wire [28:0] _T_222; // @[SIntTypeClass.scala 18:40:@35.4]
  wire [27:0] _T_223; // @[SIntTypeClass.scala 18:40:@36.4]
  wire [27:0] _T_224; // @[SIntTypeClass.scala 18:40:@37.4]
  wire [28:0] _T_233; // @[SIntTypeClass.scala 18:40:@43.4]
  wire [27:0] _T_234; // @[SIntTypeClass.scala 18:40:@44.4]
  wire [27:0] _T_235; // @[SIntTypeClass.scala 18:40:@45.4]
  wire [28:0] _T_236; // @[SIntTypeClass.scala 18:40:@46.4]
  wire [27:0] _T_237; // @[SIntTypeClass.scala 18:40:@47.4]
  wire [27:0] _T_238; // @[SIntTypeClass.scala 18:40:@48.4]
  wire [28:0] _T_247; // @[SIntTypeClass.scala 18:40:@54.4]
  wire [27:0] _T_248; // @[SIntTypeClass.scala 18:40:@55.4]
  wire [27:0] _T_249; // @[SIntTypeClass.scala 18:40:@56.4]
  wire [28:0] _T_250; // @[SIntTypeClass.scala 18:40:@57.4]
  wire [27:0] _T_251; // @[SIntTypeClass.scala 18:40:@58.4]
  wire [27:0] _T_252; // @[SIntTypeClass.scala 18:40:@59.4]
  reg [27:0] _T_385_0_real; // @[cic3.scala 38:32:@86.4]
  reg [31:0] _RAND_8;
  reg [27:0] _T_385_0_imag; // @[cic3.scala 38:32:@86.4]
  reg [31:0] _RAND_9;
  reg [27:0] _T_385_1_real; // @[cic3.scala 38:32:@86.4]
  reg [31:0] _RAND_10;
  reg [27:0] _T_385_1_imag; // @[cic3.scala 38:32:@86.4]
  reg [31:0] _RAND_11;
  reg [27:0] _T_385_2_real; // @[cic3.scala 38:32:@86.4]
  reg [31:0] _RAND_12;
  reg [27:0] _T_385_2_imag; // @[cic3.scala 38:32:@86.4]
  reg [31:0] _RAND_13;
  reg [27:0] _T_385_3_real; // @[cic3.scala 38:32:@86.4]
  reg [31:0] _RAND_14;
  reg [27:0] _T_385_3_imag; // @[cic3.scala 38:32:@86.4]
  reg [31:0] _RAND_15;
  reg [27:0] _T_566_0_real; // @[cic3.scala 39:32:@108.4]
  reg [31:0] _RAND_16;
  reg [27:0] _T_566_0_imag; // @[cic3.scala 39:32:@108.4]
  reg [31:0] _RAND_17;
  reg [27:0] _T_566_1_real; // @[cic3.scala 39:32:@108.4]
  reg [31:0] _RAND_18;
  reg [27:0] _T_566_1_imag; // @[cic3.scala 39:32:@108.4]
  reg [31:0] _RAND_19;
  reg [27:0] _T_566_2_real; // @[cic3.scala 39:32:@108.4]
  reg [31:0] _RAND_20;
  reg [27:0] _T_566_2_imag; // @[cic3.scala 39:32:@108.4]
  reg [31:0] _RAND_21;
  wire [10:0] _T_623; // @[cic3.scala 44:50:@109.4]
  wire [27:0] _GEN_0; // @[cic3.scala 44:50:@110.4]
  wire [38:0] _T_624; // @[cic3.scala 44:50:@110.4]
  wire [37:0] _T_625; // @[cic3.scala 44:50:@111.4]
  wire [37:0] _T_626; // @[cic3.scala 44:50:@112.4]
  wire [68:0] _GEN_1; // @[cic3.scala 44:65:@113.4]
  wire [68:0] _T_627; // @[cic3.scala 44:65:@113.4]
  wire [38:0] _T_629; // @[cic3.scala 45:50:@116.4]
  wire [37:0] _T_630; // @[cic3.scala 45:50:@117.4]
  wire [37:0] _T_631; // @[cic3.scala 45:50:@118.4]
  wire [68:0] _GEN_3; // @[cic3.scala 45:65:@119.4]
  wire [68:0] _T_632; // @[cic3.scala 45:65:@119.4]
  wire [28:0] _T_633; // @[SIntTypeClass.scala 28:50:@123.4]
  wire [27:0] _T_634; // @[SIntTypeClass.scala 28:50:@124.4]
  wire [27:0] _T_635; // @[SIntTypeClass.scala 28:50:@125.4]
  wire [28:0] _T_636; // @[SIntTypeClass.scala 28:50:@126.4]
  wire [27:0] _T_637; // @[SIntTypeClass.scala 28:50:@127.4]
  wire [27:0] _T_638; // @[SIntTypeClass.scala 28:50:@128.4]
  wire [28:0] _T_647; // @[SIntTypeClass.scala 28:50:@136.4]
  wire [27:0] _T_648; // @[SIntTypeClass.scala 28:50:@137.4]
  wire [27:0] _T_649; // @[SIntTypeClass.scala 28:50:@138.4]
  wire [28:0] _T_650; // @[SIntTypeClass.scala 28:50:@139.4]
  wire [27:0] _T_651; // @[SIntTypeClass.scala 28:50:@140.4]
  wire [27:0] _T_652; // @[SIntTypeClass.scala 28:50:@141.4]
  wire [28:0] _T_661; // @[SIntTypeClass.scala 28:50:@149.4]
  wire [27:0] _T_662; // @[SIntTypeClass.scala 28:50:@150.4]
  wire [27:0] _T_663; // @[SIntTypeClass.scala 28:50:@151.4]
  wire [28:0] _T_664; // @[SIntTypeClass.scala 28:50:@152.4]
  wire [27:0] _T_665; // @[SIntTypeClass.scala 28:50:@153.4]
  wire [27:0] _T_666; // @[SIntTypeClass.scala 28:50:@154.4]
  wire [15:0] _T_675; // @[cic3.scala 52:38:@162.4]
  wire [15:0] _T_677; // @[cic3.scala 53:38:@165.4]
  wire [27:0] _GEN_4; // @[cic3.scala 44:31:@114.4]
  wire [27:0] _GEN_5; // @[cic3.scala 45:31:@120.4]
  assign _T_219 = $signed(integregs_0_real) + $signed(integregs_1_real); // @[SIntTypeClass.scala 18:40:@32.4]
  assign _T_220 = $signed(integregs_0_real) + $signed(integregs_1_real); // @[SIntTypeClass.scala 18:40:@33.4]
  assign _T_221 = $signed(_T_220); // @[SIntTypeClass.scala 18:40:@34.4]
  assign _T_222 = $signed(integregs_0_imag) + $signed(integregs_1_imag); // @[SIntTypeClass.scala 18:40:@35.4]
  assign _T_223 = $signed(integregs_0_imag) + $signed(integregs_1_imag); // @[SIntTypeClass.scala 18:40:@36.4]
  assign _T_224 = $signed(_T_223); // @[SIntTypeClass.scala 18:40:@37.4]
  assign _T_233 = $signed(integregs_1_real) + $signed(integregs_2_real); // @[SIntTypeClass.scala 18:40:@43.4]
  assign _T_234 = $signed(integregs_1_real) + $signed(integregs_2_real); // @[SIntTypeClass.scala 18:40:@44.4]
  assign _T_235 = $signed(_T_234); // @[SIntTypeClass.scala 18:40:@45.4]
  assign _T_236 = $signed(integregs_1_imag) + $signed(integregs_2_imag); // @[SIntTypeClass.scala 18:40:@46.4]
  assign _T_237 = $signed(integregs_1_imag) + $signed(integregs_2_imag); // @[SIntTypeClass.scala 18:40:@47.4]
  assign _T_238 = $signed(_T_237); // @[SIntTypeClass.scala 18:40:@48.4]
  assign _T_247 = $signed(integregs_2_real) + $signed(integregs_3_real); // @[SIntTypeClass.scala 18:40:@54.4]
  assign _T_248 = $signed(integregs_2_real) + $signed(integregs_3_real); // @[SIntTypeClass.scala 18:40:@55.4]
  assign _T_249 = $signed(_T_248); // @[SIntTypeClass.scala 18:40:@56.4]
  assign _T_250 = $signed(integregs_2_imag) + $signed(integregs_3_imag); // @[SIntTypeClass.scala 18:40:@57.4]
  assign _T_251 = $signed(integregs_2_imag) + $signed(integregs_3_imag); // @[SIntTypeClass.scala 18:40:@58.4]
  assign _T_252 = $signed(_T_251); // @[SIntTypeClass.scala 18:40:@59.4]
  assign _T_623 = {1'b0,$signed(io_integscale)}; // @[cic3.scala 44:50:@109.4]
  assign _GEN_0 = {{17{_T_623[10]}},_T_623}; // @[cic3.scala 44:50:@110.4]
  assign _T_624 = $signed(integregs_3_real) * $signed(_GEN_0); // @[cic3.scala 44:50:@110.4]
  assign _T_625 = _T_624[37:0]; // @[cic3.scala 44:50:@111.4]
  assign _T_626 = $signed(_T_625); // @[cic3.scala 44:50:@112.4]
  assign _GEN_1 = {{31{_T_626[37]}},_T_626}; // @[cic3.scala 44:65:@113.4]
  assign _T_627 = $signed(_GEN_1) << io_integshift; // @[cic3.scala 44:65:@113.4]
  assign _T_629 = $signed(integregs_3_imag) * $signed(_GEN_0); // @[cic3.scala 45:50:@116.4]
  assign _T_630 = _T_629[37:0]; // @[cic3.scala 45:50:@117.4]
  assign _T_631 = $signed(_T_630); // @[cic3.scala 45:50:@118.4]
  assign _GEN_3 = {{31{_T_631[37]}},_T_631}; // @[cic3.scala 45:65:@119.4]
  assign _T_632 = $signed(_GEN_3) << io_integshift; // @[cic3.scala 45:65:@119.4]
  assign _T_633 = $signed(_T_385_0_real) - $signed(_T_566_0_real); // @[SIntTypeClass.scala 28:50:@123.4]
  assign _T_634 = $signed(_T_385_0_real) - $signed(_T_566_0_real); // @[SIntTypeClass.scala 28:50:@124.4]
  assign _T_635 = $signed(_T_634); // @[SIntTypeClass.scala 28:50:@125.4]
  assign _T_636 = $signed(_T_385_0_imag) - $signed(_T_566_0_imag); // @[SIntTypeClass.scala 28:50:@126.4]
  assign _T_637 = $signed(_T_385_0_imag) - $signed(_T_566_0_imag); // @[SIntTypeClass.scala 28:50:@127.4]
  assign _T_638 = $signed(_T_637); // @[SIntTypeClass.scala 28:50:@128.4]
  assign _T_647 = $signed(_T_385_1_real) - $signed(_T_566_1_real); // @[SIntTypeClass.scala 28:50:@136.4]
  assign _T_648 = $signed(_T_385_1_real) - $signed(_T_566_1_real); // @[SIntTypeClass.scala 28:50:@137.4]
  assign _T_649 = $signed(_T_648); // @[SIntTypeClass.scala 28:50:@138.4]
  assign _T_650 = $signed(_T_385_1_imag) - $signed(_T_566_1_imag); // @[SIntTypeClass.scala 28:50:@139.4]
  assign _T_651 = $signed(_T_385_1_imag) - $signed(_T_566_1_imag); // @[SIntTypeClass.scala 28:50:@140.4]
  assign _T_652 = $signed(_T_651); // @[SIntTypeClass.scala 28:50:@141.4]
  assign _T_661 = $signed(_T_385_2_real) - $signed(_T_566_2_real); // @[SIntTypeClass.scala 28:50:@149.4]
  assign _T_662 = $signed(_T_385_2_real) - $signed(_T_566_2_real); // @[SIntTypeClass.scala 28:50:@150.4]
  assign _T_663 = $signed(_T_662); // @[SIntTypeClass.scala 28:50:@151.4]
  assign _T_664 = $signed(_T_385_2_imag) - $signed(_T_566_2_imag); // @[SIntTypeClass.scala 28:50:@152.4]
  assign _T_665 = $signed(_T_385_2_imag) - $signed(_T_566_2_imag); // @[SIntTypeClass.scala 28:50:@153.4]
  assign _T_666 = $signed(_T_665); // @[SIntTypeClass.scala 28:50:@154.4]
  assign _T_675 = _T_385_3_real[27:12]; // @[cic3.scala 52:38:@162.4]
  assign _T_677 = _T_385_3_imag[27:12]; // @[cic3.scala 53:38:@165.4]
  assign io_Z_real = $signed(_T_675); // @[cic3.scala 52:19:@164.4]
  assign io_Z_imag = $signed(_T_677); // @[cic3.scala 53:19:@167.4]
  assign _GEN_4 = _T_627[27:0]; // @[cic3.scala 44:31:@114.4]
  assign _GEN_5 = _T_632[27:0]; // @[cic3.scala 45:31:@120.4]
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
  integregs_0_real = _RAND_0[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  integregs_0_imag = _RAND_1[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  integregs_1_real = _RAND_2[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  integregs_1_imag = _RAND_3[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  integregs_2_real = _RAND_4[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  integregs_2_imag = _RAND_5[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  integregs_3_real = _RAND_6[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  integregs_3_imag = _RAND_7[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_385_0_real = _RAND_8[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_385_0_imag = _RAND_9[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_385_1_real = _RAND_10[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_385_1_imag = _RAND_11[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_385_2_real = _RAND_12[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_385_2_imag = _RAND_13[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_385_3_real = _RAND_14[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_385_3_imag = _RAND_15[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_566_0_real = _RAND_16[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_566_0_imag = _RAND_17[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_566_1_real = _RAND_18[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_566_1_imag = _RAND_19[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_566_2_real = _RAND_20[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_566_2_imag = _RAND_21[27:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      integregs_0_real <= 28'sh0;
    end else begin
      integregs_0_real <= {{12{io_iptr_A_real[15]}},io_iptr_A_real};
    end
    if (reset) begin
      integregs_0_imag <= 28'sh0;
    end else begin
      integregs_0_imag <= {{12{io_iptr_A_imag[15]}},io_iptr_A_imag};
    end
    if (reset) begin
      integregs_1_real <= 28'sh0;
    end else begin
      integregs_1_real <= _T_221;
    end
    if (reset) begin
      integregs_1_imag <= 28'sh0;
    end else begin
      integregs_1_imag <= _T_224;
    end
    if (reset) begin
      integregs_2_real <= 28'sh0;
    end else begin
      integregs_2_real <= _T_235;
    end
    if (reset) begin
      integregs_2_imag <= 28'sh0;
    end else begin
      integregs_2_imag <= _T_238;
    end
    if (reset) begin
      integregs_3_real <= 28'sh0;
    end else begin
      integregs_3_real <= _T_249;
    end
    if (reset) begin
      integregs_3_imag <= 28'sh0;
    end else begin
      integregs_3_imag <= _T_252;
    end
  end
  always @(posedge io_clockslow) begin
    if (reset) begin
      _T_385_0_real <= 28'sh0;
    end else begin
      _T_385_0_real <= $signed(_GEN_4);
    end
    if (reset) begin
      _T_385_0_imag <= 28'sh0;
    end else begin
      _T_385_0_imag <= $signed(_GEN_5);
    end
    if (reset) begin
      _T_385_1_real <= 28'sh0;
    end else begin
      _T_385_1_real <= _T_635;
    end
    if (reset) begin
      _T_385_1_imag <= 28'sh0;
    end else begin
      _T_385_1_imag <= _T_638;
    end
    if (reset) begin
      _T_385_2_real <= 28'sh0;
    end else begin
      _T_385_2_real <= _T_649;
    end
    if (reset) begin
      _T_385_2_imag <= 28'sh0;
    end else begin
      _T_385_2_imag <= _T_652;
    end
    if (reset) begin
      _T_385_3_real <= 28'sh0;
    end else begin
      _T_385_3_real <= _T_663;
    end
    if (reset) begin
      _T_385_3_imag <= 28'sh0;
    end else begin
      _T_385_3_imag <= _T_666;
    end
    if (reset) begin
      _T_566_0_real <= 28'sh0;
    end else begin
      _T_566_0_real <= _T_385_0_real;
    end
    if (reset) begin
      _T_566_0_imag <= 28'sh0;
    end else begin
      _T_566_0_imag <= _T_385_0_imag;
    end
    if (reset) begin
      _T_566_1_real <= 28'sh0;
    end else begin
      _T_566_1_real <= _T_385_1_real;
    end
    if (reset) begin
      _T_566_1_imag <= 28'sh0;
    end else begin
      _T_566_1_imag <= _T_385_1_imag;
    end
    if (reset) begin
      _T_566_2_real <= 28'sh0;
    end else begin
      _T_566_2_real <= _T_385_2_real;
    end
    if (reset) begin
      _T_566_2_imag <= 28'sh0;
    end else begin
      _T_566_2_imag <= _T_385_2_imag;
    end
  end
endmodule
