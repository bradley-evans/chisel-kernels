package _elaborate

import chisel3._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

object ElaborateVecMul extends App {
  chisel3.Driver.execute(args, () => new kernels.VecMul(4,4,4,8))
}

object ElaborateFir4Tap extends App {
  chisel3.Driver.execute(args, () => new kernels.FirFilter(8,Seq(-2.S,-1.S,3.S,4.S)))
}

object ElaborateFir8Tap extends App {
  chisel3.Driver.execute(args, () => new kernels.FirFilter(8,Seq(-2.S,-1.S,3.S,4.S,1.S,1.S,1.S,1.S)))
}

object ElaborateFir16Tap extends App {
  chisel3.Driver.execute(args, () => new kernels.FirFilter(8,Seq(-2.S,-1.S,3.S,4.S,1.S,1.S,1.S,1.S,1.S,1.S,1.S,1.S,1.S,1.S,1.S,1.S)))
}
object ElaborateCicFilter extends App {
  chisel3.Driver.execute(args, () => new kernels.cic3() )
}
