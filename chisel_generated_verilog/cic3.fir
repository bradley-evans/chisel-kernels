;buildInfoPackage: chisel3, version: 3.1.8, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2019-07-08 17:44:42.884, builtAtMillis: 1562607882884
circuit cic3 : 
  module cic3 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip clockslow : Clock, flip integscale : UInt<10>, flip integshift : UInt<5>, flip iptr_A : {real : SInt<16>, imag : SInt<16>}, Z : {real : SInt<16>, imag : SInt<16>}}
    
    wire _T_48 : {real : SInt<28>, imag : SInt<28>} @[DspComplex.scala 30:22]
    _T_48.real <= asSInt(UInt<28>("h00")) @[DspComplex.scala 31:17]
    _T_48.imag <= asSInt(UInt<28>("h00")) @[DspComplex.scala 32:17]
    wire _T_58 : {real : SInt<28>, imag : SInt<28>} @[DspComplex.scala 30:22]
    _T_58.real <= asSInt(UInt<28>("h00")) @[DspComplex.scala 31:17]
    _T_58.imag <= asSInt(UInt<28>("h00")) @[DspComplex.scala 32:17]
    wire _T_68 : {real : SInt<28>, imag : SInt<28>} @[DspComplex.scala 30:22]
    _T_68.real <= asSInt(UInt<28>("h00")) @[DspComplex.scala 31:17]
    _T_68.imag <= asSInt(UInt<28>("h00")) @[DspComplex.scala 32:17]
    wire _T_78 : {real : SInt<28>, imag : SInt<28>} @[DspComplex.scala 30:22]
    _T_78.real <= asSInt(UInt<28>("h00")) @[DspComplex.scala 31:17]
    _T_78.imag <= asSInt(UInt<28>("h00")) @[DspComplex.scala 32:17]
    wire _T_94 : {real : SInt<28>, imag : SInt<28>}[4] @[cic3.scala 28:37]
    _T_94[0].imag <= _T_48.imag @[cic3.scala 28:37]
    _T_94[0].real <= _T_48.real @[cic3.scala 28:37]
    _T_94[1].imag <= _T_58.imag @[cic3.scala 28:37]
    _T_94[1].real <= _T_58.real @[cic3.scala 28:37]
    _T_94[2].imag <= _T_68.imag @[cic3.scala 28:37]
    _T_94[2].real <= _T_68.real @[cic3.scala 28:37]
    _T_94[3].imag <= _T_78.imag @[cic3.scala 28:37]
    _T_94[3].real <= _T_78.real @[cic3.scala 28:37]
    reg integregs : {real : SInt<28>, imag : SInt<28>}[4], clock with : (reset => (reset, _T_94)) @[cic3.scala 28:29]
    integregs[0].imag <= io.iptr_A.imag @[cic3.scala 30:30]
    integregs[0].real <= io.iptr_A.real @[cic3.scala 30:30]
    node _T_219 = add(integregs[0].real, integregs[1].real) @[SIntTypeClass.scala 18:40]
    node _T_220 = tail(_T_219, 1) @[SIntTypeClass.scala 18:40]
    node _T_221 = asSInt(_T_220) @[SIntTypeClass.scala 18:40]
    node _T_222 = add(integregs[0].imag, integregs[1].imag) @[SIntTypeClass.scala 18:40]
    node _T_223 = tail(_T_222, 1) @[SIntTypeClass.scala 18:40]
    node _T_224 = asSInt(_T_223) @[SIntTypeClass.scala 18:40]
    wire _T_232 : {real : SInt<28>, imag : SInt<28>} @[DspComplex.scala 30:22]
    _T_232.real <= _T_221 @[DspComplex.scala 31:17]
    _T_232.imag <= _T_224 @[DspComplex.scala 32:17]
    integregs[1].imag <= _T_232.imag @[cic3.scala 31:24]
    integregs[1].real <= _T_232.real @[cic3.scala 31:24]
    node _T_233 = add(integregs[1].real, integregs[2].real) @[SIntTypeClass.scala 18:40]
    node _T_234 = tail(_T_233, 1) @[SIntTypeClass.scala 18:40]
    node _T_235 = asSInt(_T_234) @[SIntTypeClass.scala 18:40]
    node _T_236 = add(integregs[1].imag, integregs[2].imag) @[SIntTypeClass.scala 18:40]
    node _T_237 = tail(_T_236, 1) @[SIntTypeClass.scala 18:40]
    node _T_238 = asSInt(_T_237) @[SIntTypeClass.scala 18:40]
    wire _T_246 : {real : SInt<28>, imag : SInt<28>} @[DspComplex.scala 30:22]
    _T_246.real <= _T_235 @[DspComplex.scala 31:17]
    _T_246.imag <= _T_238 @[DspComplex.scala 32:17]
    integregs[2].imag <= _T_246.imag @[cic3.scala 31:24]
    integregs[2].real <= _T_246.real @[cic3.scala 31:24]
    node _T_247 = add(integregs[2].real, integregs[3].real) @[SIntTypeClass.scala 18:40]
    node _T_248 = tail(_T_247, 1) @[SIntTypeClass.scala 18:40]
    node _T_249 = asSInt(_T_248) @[SIntTypeClass.scala 18:40]
    node _T_250 = add(integregs[2].imag, integregs[3].imag) @[SIntTypeClass.scala 18:40]
    node _T_251 = tail(_T_250, 1) @[SIntTypeClass.scala 18:40]
    node _T_252 = asSInt(_T_251) @[SIntTypeClass.scala 18:40]
    wire _T_260 : {real : SInt<28>, imag : SInt<28>} @[DspComplex.scala 30:22]
    _T_260.real <= _T_249 @[DspComplex.scala 31:17]
    _T_260.imag <= _T_252 @[DspComplex.scala 32:17]
    integregs[3].imag <= _T_260.imag @[cic3.scala 31:24]
    integregs[3].real <= _T_260.real @[cic3.scala 31:24]
    wire _T_270 : {real : SInt<28>, imag : SInt<28>} @[DspComplex.scala 30:22]
    _T_270.real <= asSInt(UInt<28>("h00")) @[DspComplex.scala 31:17]
    _T_270.imag <= asSInt(UInt<28>("h00")) @[DspComplex.scala 32:17]
    wire _T_280 : {real : SInt<28>, imag : SInt<28>} @[DspComplex.scala 30:22]
    _T_280.real <= asSInt(UInt<28>("h00")) @[DspComplex.scala 31:17]
    _T_280.imag <= asSInt(UInt<28>("h00")) @[DspComplex.scala 32:17]
    wire _T_290 : {real : SInt<28>, imag : SInt<28>} @[DspComplex.scala 30:22]
    _T_290.real <= asSInt(UInt<28>("h00")) @[DspComplex.scala 31:17]
    _T_290.imag <= asSInt(UInt<28>("h00")) @[DspComplex.scala 32:17]
    wire _T_300 : {real : SInt<28>, imag : SInt<28>} @[DspComplex.scala 30:22]
    _T_300.real <= asSInt(UInt<28>("h00")) @[DspComplex.scala 31:17]
    _T_300.imag <= asSInt(UInt<28>("h00")) @[DspComplex.scala 32:17]
    wire _T_316 : {real : SInt<28>, imag : SInt<28>}[4] @[cic3.scala 38:40]
    _T_316[0].imag <= _T_270.imag @[cic3.scala 38:40]
    _T_316[0].real <= _T_270.real @[cic3.scala 38:40]
    _T_316[1].imag <= _T_280.imag @[cic3.scala 38:40]
    _T_316[1].real <= _T_280.real @[cic3.scala 38:40]
    _T_316[2].imag <= _T_290.imag @[cic3.scala 38:40]
    _T_316[2].real <= _T_290.real @[cic3.scala 38:40]
    _T_316[3].imag <= _T_300.imag @[cic3.scala 38:40]
    _T_316[3].real <= _T_300.real @[cic3.scala 38:40]
    reg _T_385 : {real : SInt<28>, imag : SInt<28>}[4], io.clockslow with : (reset => (reset, _T_316)) @[cic3.scala 38:32]
    wire _T_451 : {real : SInt<28>, imag : SInt<28>} @[DspComplex.scala 30:22]
    _T_451.real <= asSInt(UInt<28>("h00")) @[DspComplex.scala 31:17]
    _T_451.imag <= asSInt(UInt<28>("h00")) @[DspComplex.scala 32:17]
    wire _T_461 : {real : SInt<28>, imag : SInt<28>} @[DspComplex.scala 30:22]
    _T_461.real <= asSInt(UInt<28>("h00")) @[DspComplex.scala 31:17]
    _T_461.imag <= asSInt(UInt<28>("h00")) @[DspComplex.scala 32:17]
    wire _T_471 : {real : SInt<28>, imag : SInt<28>} @[DspComplex.scala 30:22]
    _T_471.real <= asSInt(UInt<28>("h00")) @[DspComplex.scala 31:17]
    _T_471.imag <= asSInt(UInt<28>("h00")) @[DspComplex.scala 32:17]
    wire _T_481 : {real : SInt<28>, imag : SInt<28>} @[DspComplex.scala 30:22]
    _T_481.real <= asSInt(UInt<28>("h00")) @[DspComplex.scala 31:17]
    _T_481.imag <= asSInt(UInt<28>("h00")) @[DspComplex.scala 32:17]
    wire _T_497 : {real : SInt<28>, imag : SInt<28>}[4] @[cic3.scala 39:40]
    _T_497[0].imag <= _T_451.imag @[cic3.scala 39:40]
    _T_497[0].real <= _T_451.real @[cic3.scala 39:40]
    _T_497[1].imag <= _T_461.imag @[cic3.scala 39:40]
    _T_497[1].real <= _T_461.real @[cic3.scala 39:40]
    _T_497[2].imag <= _T_471.imag @[cic3.scala 39:40]
    _T_497[2].real <= _T_471.real @[cic3.scala 39:40]
    _T_497[3].imag <= _T_481.imag @[cic3.scala 39:40]
    _T_497[3].real <= _T_481.real @[cic3.scala 39:40]
    reg _T_566 : {real : SInt<28>, imag : SInt<28>}[4], io.clockslow with : (reset => (reset, _T_497)) @[cic3.scala 39:32]
    node _T_623 = cvt(io.integscale) @[cic3.scala 44:50]
    node _T_624 = mul(integregs[3].real, _T_623) @[cic3.scala 44:50]
    node _T_625 = tail(_T_624, 1) @[cic3.scala 44:50]
    node _T_626 = asSInt(_T_625) @[cic3.scala 44:50]
    node _T_627 = dshl(_T_626, io.integshift) @[cic3.scala 44:65]
    _T_385[0].real <= _T_627 @[cic3.scala 44:31]
    node _T_628 = cvt(io.integscale) @[cic3.scala 45:50]
    node _T_629 = mul(integregs[3].imag, _T_628) @[cic3.scala 45:50]
    node _T_630 = tail(_T_629, 1) @[cic3.scala 45:50]
    node _T_631 = asSInt(_T_630) @[cic3.scala 45:50]
    node _T_632 = dshl(_T_631, io.integshift) @[cic3.scala 45:65]
    _T_385[0].imag <= _T_632 @[cic3.scala 45:31]
    _T_566[0].imag <= _T_385[0].imag @[cic3.scala 46:27]
    _T_566[0].real <= _T_385[0].real @[cic3.scala 46:27]
    node _T_633 = sub(_T_385[0].real, _T_566[0].real) @[SIntTypeClass.scala 28:50]
    node _T_634 = tail(_T_633, 1) @[SIntTypeClass.scala 28:50]
    node _T_635 = asSInt(_T_634) @[SIntTypeClass.scala 28:50]
    node _T_636 = sub(_T_385[0].imag, _T_566[0].imag) @[SIntTypeClass.scala 28:50]
    node _T_637 = tail(_T_636, 1) @[SIntTypeClass.scala 28:50]
    node _T_638 = asSInt(_T_637) @[SIntTypeClass.scala 28:50]
    wire _T_646 : {real : SInt<28>, imag : SInt<28>} @[DspComplex.scala 30:22]
    _T_646.real <= _T_635 @[DspComplex.scala 31:17]
    _T_646.imag <= _T_638 @[DspComplex.scala 32:17]
    _T_385[1].imag <= _T_646.imag @[cic3.scala 48:26]
    _T_385[1].real <= _T_646.real @[cic3.scala 48:26]
    _T_566[1].imag <= _T_385[1].imag @[cic3.scala 49:27]
    _T_566[1].real <= _T_385[1].real @[cic3.scala 49:27]
    node _T_647 = sub(_T_385[1].real, _T_566[1].real) @[SIntTypeClass.scala 28:50]
    node _T_648 = tail(_T_647, 1) @[SIntTypeClass.scala 28:50]
    node _T_649 = asSInt(_T_648) @[SIntTypeClass.scala 28:50]
    node _T_650 = sub(_T_385[1].imag, _T_566[1].imag) @[SIntTypeClass.scala 28:50]
    node _T_651 = tail(_T_650, 1) @[SIntTypeClass.scala 28:50]
    node _T_652 = asSInt(_T_651) @[SIntTypeClass.scala 28:50]
    wire _T_660 : {real : SInt<28>, imag : SInt<28>} @[DspComplex.scala 30:22]
    _T_660.real <= _T_649 @[DspComplex.scala 31:17]
    _T_660.imag <= _T_652 @[DspComplex.scala 32:17]
    _T_385[2].imag <= _T_660.imag @[cic3.scala 48:26]
    _T_385[2].real <= _T_660.real @[cic3.scala 48:26]
    _T_566[2].imag <= _T_385[2].imag @[cic3.scala 49:27]
    _T_566[2].real <= _T_385[2].real @[cic3.scala 49:27]
    node _T_661 = sub(_T_385[2].real, _T_566[2].real) @[SIntTypeClass.scala 28:50]
    node _T_662 = tail(_T_661, 1) @[SIntTypeClass.scala 28:50]
    node _T_663 = asSInt(_T_662) @[SIntTypeClass.scala 28:50]
    node _T_664 = sub(_T_385[2].imag, _T_566[2].imag) @[SIntTypeClass.scala 28:50]
    node _T_665 = tail(_T_664, 1) @[SIntTypeClass.scala 28:50]
    node _T_666 = asSInt(_T_665) @[SIntTypeClass.scala 28:50]
    wire _T_674 : {real : SInt<28>, imag : SInt<28>} @[DspComplex.scala 30:22]
    _T_674.real <= _T_663 @[DspComplex.scala 31:17]
    _T_674.imag <= _T_666 @[DspComplex.scala 32:17]
    _T_385[3].imag <= _T_674.imag @[cic3.scala 48:26]
    _T_385[3].real <= _T_674.real @[cic3.scala 48:26]
    _T_566[3].imag <= _T_385[3].imag @[cic3.scala 49:27]
    _T_566[3].real <= _T_385[3].real @[cic3.scala 49:27]
    node _T_675 = bits(_T_385[3].real, 27, 12) @[cic3.scala 52:38]
    node _T_676 = asSInt(_T_675) @[cic3.scala 52:66]
    io.Z.real <= _T_676 @[cic3.scala 52:19]
    node _T_677 = bits(_T_385[3].imag, 27, 12) @[cic3.scala 53:38]
    node _T_678 = asSInt(_T_677) @[cic3.scala 53:66]
    io.Z.imag <= _T_678 @[cic3.scala 53:19]
    
