package kernels

import chisel3._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class VecAddTests(c: VecAdd) extends PeekPokeTester(c) {
  val matA = Array.fill(c.m * c.n) {
    0
  }
  val matB = Array.fill(c.m * c.n) {
    0
  }
  for (i <- 0 until c.m * c.n) {
    poke(c.io.A(i), matA(i))
    poke(c.io.B(i), matB(i))
  }
  poke(c.io.load, 1)
  step(1)
  for (i <- 0 until c.m) {
    expect(c.io.C(i), c.io.A(i) + c.io.B(i))
  }
}

class VecAddTester extends ChiselFlatSpec {
  
  private val backendNames = if(firrtl.FileUtils.isCommandAvailable(Seq("verilator", "--version"))) {
    Array("firrtl", "verilator")
  } else {
    Array("firrtl")
  }
  for ( backendName <- backendNames ) {
    "VecAdd" should s"calculate the matrix sum of two input matrices (with $backendName)" in {
      Driver(() => new VecAdd(10,10,16), backendName) {
        c => new VecAddTests(c)
      } should be (true)
    }
  }
}
