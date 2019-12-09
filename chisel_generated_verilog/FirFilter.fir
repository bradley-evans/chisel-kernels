;buildInfoPackage: chisel3, version: 3.1.8, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2019-07-08 17:44:42.884, builtAtMillis: 1562607882884
circuit FirFilter : 
  module FirFilter : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : SInt<8>, out : SInt<8>}
    
    reg zs : SInt<8>[4], clock @[FirFilter.scala 13:15]
    zs[0] <= io.in @[FirFilter.scala 14:9]
    zs[1] <= zs[0] @[FirFilter.scala 16:11]
    zs[2] <= zs[1] @[FirFilter.scala 16:11]
    zs[3] <= zs[2] @[FirFilter.scala 16:11]
    node _T_18 = mul(zs[0], asSInt(UInt<2>("h02"))) @[FirFilter.scala 20:61]
    node _T_19 = mul(zs[1], asSInt(UInt<1>("h01"))) @[FirFilter.scala 20:61]
    node _T_20 = mul(zs[2], asSInt(UInt<3>("h03"))) @[FirFilter.scala 20:61]
    node _T_21 = mul(zs[3], asSInt(UInt<4>("h04"))) @[FirFilter.scala 20:61]
    wire products : SInt<12>[4] @[FirFilter.scala 20:49]
    products[0] <= _T_18 @[FirFilter.scala 20:49]
    products[1] <= _T_19 @[FirFilter.scala 20:49]
    products[2] <= _T_20 @[FirFilter.scala 20:49]
    products[3] <= _T_21 @[FirFilter.scala 20:49]
    node _T_31 = add(products[0], products[1]) @[FirFilter.scala 23:31]
    node _T_32 = tail(_T_31, 1) @[FirFilter.scala 23:31]
    node _T_33 = asSInt(_T_32) @[FirFilter.scala 23:31]
    node _T_34 = add(_T_33, products[2]) @[FirFilter.scala 23:31]
    node _T_35 = tail(_T_34, 1) @[FirFilter.scala 23:31]
    node _T_36 = asSInt(_T_35) @[FirFilter.scala 23:31]
    node _T_37 = add(_T_36, products[3]) @[FirFilter.scala 23:31]
    node _T_38 = tail(_T_37, 1) @[FirFilter.scala 23:31]
    node _T_39 = asSInt(_T_38) @[FirFilter.scala 23:31]
    io.out <= _T_39 @[FirFilter.scala 23:10]
    
