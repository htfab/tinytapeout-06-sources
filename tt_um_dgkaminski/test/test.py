# SPDX-FileCopyrightText: © 2024 Tiny Tapeout
# SPDX-License-Identifier: MIT

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles

@cocotb.test()
async def test_project(dut):
  dut._log.info("Start")
  
  # Our example module doesn't use clock and reset, but we show how to use them here anyway.
  clock = Clock(dut.clk, 10, units="us")
  cocotb.start_soon(clock.start())

  # Reset
  dut._log.info("Reset")
  dut.ena.value = 1
  dut.ui_in.value = 0
  dut.uio_in.value = 0
  dut.rst_n.value = 0
  await ClockCycles(dut.clk, 10)
  dut.rst_n.value = 1

  # Set the input values, wait one clock cycle, and check the output
  #dut._log.info("Test")
  #dut.ui_in.value = 20
  #dut.uio_in.value = 30

  #await ClockCycles(dut.clk, 1)

  #assert dut.uo_out.value == 50

  #Set the input values, wait one clock cycle, and check the output
  dut._log.info("ADD Test")
  dut.ui_in.value = 98
  dut.uio_in.value = 0
  
  await ClockCycles(dut.clk, 10)

  assert dut.uo_out.value == 134

  
  dut._log.info("SUB Test")
  dut.ui_in.value = 98
  dut.uio_in.value = 1

  await ClockCycles(dut.clk, 10)
  assert dut.uo_out.value == 72


  dut._log.info("SRA Test")
  dut.ui_in.value = 208
  dut.uio_in.value = 2

  await ClockCycles(dut.clk, 10)
  assert dut.uo_out.value == 234


  dut._log.info("SRL Test")
  dut.ui_in.value = 208
  dut.uio_in.value = 3

  await ClockCycles(dut.clk, 10)
  assert dut.uo_out.value == 104


  dut._log.info("SLL Test")
  dut.ui_in.value = 208
  dut.uio_in.value = 4

  await ClockCycles(dut.clk, 10)
  assert dut.uo_out.value == 170


  dut._log.info("AND Test")
  dut.ui_in.value = 219
  dut.uio_in.value = 5

  await ClockCycles(dut.clk, 10)
  assert dut.uo_out.value == 146


  dut._log.info("AND Test Zero")
  dut.ui_in.value = 208
  dut.uio_in.value = 5

  await ClockCycles(dut.clk, 10)
  assert dut.uo_out.value == 1


  dut._log.info("OR Test")
  dut.ui_in.value = 221 
  dut.uio_in.value = 6

  await ClockCycles(dut.clk, 10)
  assert dut.uo_out.value == 210
