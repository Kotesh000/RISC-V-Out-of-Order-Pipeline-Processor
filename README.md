# RISC-V Out-of-Order Pipeline Processor

## Overview

This project implements a **5-stage RISC-V processor with Out-of-Order (OoO) execution** to improve instruction-level parallelism (ILP) while maintaining **in-order commit for correctness**. The design is developed in **SystemVerilog** and verified using **QuestaSim**.

---

## Key Features

* 5-stage pipelined architecture with OoO execution
* Register renaming using **RAT + Physical Register File (PRF) + Free List**
* Reservation Station for dynamic scheduling based on operand readiness
* Reorder Buffer (ROB) for in-order commit and precise state recovery
* Basic branch handling with pipeline flush and redirect
* Load/Store support with memory interface (basic functionality)
* Assertion-based verification for pipeline correctness

---

## Pipeline Stages

1. **IF – Instruction Fetch**: PC update, instruction fetch, branch redirect
2. **ID – Instruction Decode**: opcode decode, register extraction, immediates
3. **Rename**: architectural to physical register mapping using RAT
4. **Issue / Execute**: dependency checking and out-of-order issue from RS
5. **Writeback / Commit**: PRF update and in-order retirement via ROB

---

## Major Microarchitectural Blocks

* Register Alias Table (RAT)
* Free List for physical register allocation
* Reservation Station / Issue Queue
* Physical Register File (PRF) with valid-bit tracking
* Reorder Buffer (ROB)
* Branch Unit with misprediction handling
* Load Store Unit (LSU) with memory interface

---

## Verification & Debugging

* RTL simulation using **QuestaSim**
* Verified dependency handling (RAW, WAR, WAW hazards)
* Implemented **SystemVerilog assertions** for PRF write-valid behavior
* Identified and fixed **writeback vs allocation timing conflicts in PRF**
* Validated pipeline correctness using waveform analysis
* Verified branch redirect and pipeline flush behavior

---

## Tools & Technologies

* **SystemVerilog** – RTL design and assertions
* **QuestaSim (Siemens EDA)** – Simulation and debugging
* **RISC-V RV32I** – Instruction set architecture

---

## Repository Structure

```

RISC-V-Out-of-Order-Pipeline-Processor/
├── rtl/
│   ├── frontend/        # IF, ID stages
│   ├── rename_issue/    # RAT, Free List, RS
│   ├── execute/         # ALU, Branch Unit
│   ├── commit/          # ROB
│   ├── memory/          # LSU, memory system
│   └── top/             # Core top module
├── tb/
│   └── tb_core.sv       # Testbench
├── sim/
│   └── run.do           # Simulation script
└── README.md

````

---

## How to Run

1. Open QuestaSim  
2. Navigate to project directory  
3. Run:

```tcl
do sim/run.do
````

4. Analyze waveforms for OoO execution and pipeline behavior

---

## Future Enhancements

* Full RV32I instruction support
* Advanced Load/Store Queue (LSQ) with forwarding
* Branch prediction mechanisms
* Multi-issue pipeline
* Cache integration (I-cache/D-cache)
* FPGA implementation

---

# WHAT IMPROVED

Added **assertions + debugging**  
Highlighted **PRF bug fix**  
Made it sound like **real hardware project**  
Clean + professional structure  

