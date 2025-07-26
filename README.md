# 🔬 Custom 4-bit ALU — CMOS to FPGA Implementation

> **Complete RTL-to-Silicon Design Flow | 130nm CMOS | Verilog HDL | Vivado FPGA**

This project presents a fully custom 4-bit Arithmetic Logic Unit (ALU) designed from the transistor level using 130nm CMOS technology, synthesized to gate-level Verilog, and implemented on FPGA hardware.

---

## Overview

This project simulates the **full hardware development pipeline**, starting from transistor-level CMOS design and moving through Verilog RTL development, simulation, synthesis, and finally hardware verification using FPGA.

We designed and tested each module in 3 layers:
- **CMOS-level** logic gates (schematic and layout)
- **Verilog RTL** modules for ALU datapath
- **FPGA simulation & testbenches** for timing and correctness

---

## Project Structure

| Folder                   | Contents |
|--------------------------|----------|
| `/Transistor_Design/`    | CMOS-level designs created using **Cadence Virtuoso** (on Linux) |
| `/Verilog/`              | RTL implementations in Verilog, Self-checking testbenches written in Verilog, and FPGA source code |
| `/Images/`               | Some examples of the schematics and layouts of some gates and blocks |
---

## Key Achievements

✅ Designed all gates and blocks from the ground up using **130nm CMOS** in **Cadence Virtuoso (Linux)**  
✅ Integrated a **Baugh-Wooley multiplier** for signed multiplication in 2’s complement  
✅ Built a pipelined synchronous datapath using **D Flip-Flops**  
✅ Verified with **5000+ randomized test cases** via self-checking testbenches  
✅ Achieved functional FPGA implementation at **up to 142 MHz clock**  
✅ Optimized switching activity and **reduced dynamic power to ~390.2 μW** (Achiving the first place on our class as the least consumed power) 
✅ Simulated using QuestaSim & Vivado for functional + post-synthesis verification  

---

## Learned :

**CMOS Design Principles** — Transistor sizing, symmetry, layout compaction  
**Modular RTL Architecture** — Clean layering of arithmetic, logic, and control  
**Verification Flow** — Edge-case coverage, randomized testbenches, and assertions  
**FPGA Toolchain** — RTL to bitstream flow in **Vivado Design Suite**  

---

## Timing Closure 

Analyzed and optimized the following key timing parameters:

- **Setup Time**: Ensuring data is stable *before* the active clock edge
- **Hold Time**: Ensuring data remains stable *after* the clock edge
- **T<sub>cq</sub> (Clock-to-Q Delay)**: Time for data to appear at the output after clock edge
- **T<sub>dq</sub> (Data Propagation Delay)**: Time from input D to Q output (for FF or combinational path)
- **Clock Skew**: Variation in clock arrival time across flip-flops
- **Jitter**: Uncertainty in clock edges due to noise or variation

Timing closure was achieved by:
- Pipelining the datapath using synchronous **D Flip-Flops**
- Optimizing critical path delays in the **adder and multiplier**
- Analyzing Vivado timing reports and refining clock constraints
---

## 🔧 Tools Used

- **Cadence Virtuoso** (Linux) – CMOS schematic capture and simulation  
- **Spectre / Eldo** – Transistor-level simulation (TSPICE)  
- **Verilog HDL** – RTL and gate-level design  
- **ModelSim** – Behavioral simulation and debugging  
- **Vivado Design Suite** – RTL synthesis, implementation, and FPGA testing  
- **Ubuntu 20.04 LTS** – Design platform

---

## Basic Logic Gates (CMOS)

| Gate        | Description                         |
|-------------|-------------------------------------|
| Inverter    | CMOS NOT gate with symmetric layout |
| NAND        | 2-input NAND using pull-up/pull-down |
| NOR         | 2-input NOR with compact sizing     |
| OR          | Logic OR using De Morgan approach   |
| XOR         | Transmission gate + pull-up style   |
| XNOR        | Complementary pass-transistor logic |
| PTL AND     | Pass-transistor logic version       |

---

## Arithmetic Components

| Component     | Description                                |
|---------------|--------------------------------------------|
| Half Adder    | XOR + AND logic (CMOS-based)               |
| Full Adder    | Gate-level + transistor-level implementation |
| 2x1 MUX       | Transmission-gate based MUX                |
| 8-to-4 MUX    | Hierarchical MUX using 2x1 units           |
| D Flip-Flop   | Edge-triggered pipelined FF (CMOS/Verilog) |
| Baugh-Wooley Multiplier | Signed 4-bit multiplier (Verilog)  |

---

## CMOS Layouts & Logic Visuals

Below is a visual preview of the implemented gates and blocks.

<div align="center">

<table>
  <tr>
    <td align="center">
      <img src="Images/Inv_Sch.png" width="250"/><br/>
      <b>Inverter Schematic</b><br/>
      Basic NOT gate using symmetric CMOS design
    </td>
    <td align="center">
      <img src="Images/Inv_Layout.png" width="250"/><br/>
      <b>Inverter Layout</b><br/>
    </td>
  </tr>
  <tr>
    <td align="center">
      <img src="Images/Mux_Sch.png" width="250"/><br/>
      <b>Mux Schematic</b><br/>
      MUX using PTL Design
    </td>
    <td align="center">
      <img src="Images/Mux_Layout.png" width="250"/><br/>
      <b>Mux Layout</b><br/>
    </td>
  </tr>
  <tr>
    <td align="center">
      <img src="Images/Flipflop_Sch.png" width="250"/><br/>
      <b>Flipflop Schematic</b><br/>
      D Flipflop
    </td>
    <td align="center">
      <img src="Images/Flipflop_Layout.png" width="250"/><br/>
      <b>Flipflop Layout</b><br/>
    </td>
  </tr>
  <tr>
    <td align="center">
      <img src="Images/Full_Adder_Sch.png" width="250"/><br/>
      <b>Fulladder Schematic</b><br/>
    </td>
    <td align="center">
      <img src="Images/Full_Adder_Layout.png" width="250"/><br/>
      <b>Fulladder Layout</b><br/>
    </td>
  </tr>
</table>

</div>

---
