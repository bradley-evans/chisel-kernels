package kernels

import chisel3._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class VecAddTests(c: VecAdd) extends PeekPokeTester(c) {
  val matA = Array.fill(c.m * c.n) {
    rnd.nextInt(1 << c.w)
  }
  val matB = Array.fill(c.m * c.n) {
    rnd.nextInt(1 << c.w)
  }
  // Poke cannot use vectors directly right now,
  // so we poke each element individually.
  matA.zipWithIndex.foreach { case (value, index) => poke(c.io.A(index), value.U) }
  matB.zipWithIndex.foreach { case (value, index) => poke(c.io.B(index), value.U) }
  poke(c.io.load, true.B)
  step(1)
  // Now we can check the output matrix on c.io.C.
  for (i <- 0 until c.m * c.n) {
    expect(c.io.C(i), matA(i) + matB(i))
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
