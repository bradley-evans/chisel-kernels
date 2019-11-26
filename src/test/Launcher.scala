package kernels

import chisel3._
import chisel3.iotesters{Driver, TesterOptionsManager}

object Launcher {
  val tests = Map(
    "VecAdd" -> { (manager: TesterOptionsManager) =>
      Driver.execute(() => new VecAdd(), manager) {
        (c) => new VecAddTests(c)
      }
    }
  )
}
