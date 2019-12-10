package kernels

import chisel3._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class Md5Tests(c: Md5) extends PeekPokeTester(c) {
  // TODO: tests

}

class Md5Tester extends ChiselFlatSpec {
  
  private val backendNames = if(firrtl.FileUtils.isCommandAvailable(Seq("verilator", "--version"))) {
    Array("firrtl", "verilator")
  } else {
    Array("firrtl")
  }
  for ( backendName <- backendNames ) {
    "Md5" should s"generates an md5 hash. (with $backendName)" in {
      Driver(() => new Md5(8), backendName) {
        c => new Md5Tests(c)
      } should be (true)
    }
  }
}
