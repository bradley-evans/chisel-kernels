package kernels

import chisel3._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class ScalarVecMulTests(c: ScalarVecMul) extends PeekPokeTester(c) {
  val matA = Array.fill(c.m * c.n) {
    rnd.nextInt(1 << 8)
  }
  val x = rnd.nextInt(1 << 8)
  // Poke cannot use vectors directly right now,
  // so we poke each element individually.
  matA.zipWithIndex.foreach { case (value, index) => poke(c.io.A(index), value.U) }
  poke(c.io.x, x)
  poke(c.io.load, true.B)
  step(1)
  /*
  var done = peek(c.io.valid)
  while (done != 1) {
    // ideally this is done in one cycle,
    // but just in case, let's wait until
    // we see the valid bit go high
    step(1)
    done = peek(c.io.valid)
  }
  */
  // Now we can check the output matrix on c.io.C.
  for (i <- 0 until c.m*c.n) {
     expect(c.io.B(i), matA(i) * x)
  }
}

class ScalarVecMulTester extends ChiselFlatSpec {
  
  private val backendNames = if(firrtl.FileUtils.isCommandAvailable(Seq("verilator", "--version"))) {
    Array("firrtl", "verilator")
  } else {
    Array("firrtl")
  }
  for ( backendName <- backendNames ) {
    "ScalarVecMul" should s"calculate the product of a matrix and a scalar (with $backendName)" in {
      Driver(() => new ScalarVecMul(10,10,5,16), backendName) {
        c => new ScalarVecMulTests(c)
      } should be (true)
    }
  }
}
