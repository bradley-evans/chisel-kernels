package kernels

import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPostTester}

class VectorAddTests(c: VecAdd) extends PeekPostTester(c) {
  val matA = Vec(c.m, Vec(c.n, UInt(c.w.W)))
  val matB = Vec(c.m, Vec(c.n, UInt(c.w.W)))
  poke(c.io.A, matA)
  poke(c.io.B, matB)
  step(1)
  
}

class VectorAddTester extends ChiselFlatSpec {
  behavior of "VecAdd"
  backends foreach {backend =>
    it should s"correctly add vectors in $backend" in {
      Driver(() => new VecAdd(10,10,16), backend)(c => new VectorAddTests(c)) should be (true)
    }
  }
}
