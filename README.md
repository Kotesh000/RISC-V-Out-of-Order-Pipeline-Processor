# Out-of-Order RISC-V Processor

A simplified out-of-order RISC-V processor implemented in SystemVerilog.

## Features
- Out-of-order instruction issue
- In-order commit using Reorder Buffer (ROB)
- Register renaming (RAT + FreeList)
- Reservation Station–based scheduling
- Integer ALU execution
- Load Store Unit (LSU)
- Waveform-based verification

## Modules
- core_top
- rat
- freelist
- reservation_station
- rob
- alu
- lsu
- phys_regfile
- tb_core

## Simulation
Run the project using the provided `run.do` script:
```tcl
vsim -do run.do
