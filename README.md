# Full Subtractor in Verilog

A Full Subtractor is a combinational logic circuit that performs subtraction of three binary inputs: **Minuend (A)**, **Subtrahend (B)**, and **Borrow In (Bin)**. It produces two outputs: **Difference (Diff)** and **Borrow Out (Bout)**.

This repository contains the Verilog HDL implementation of a Full Subtractor along with a testbench for simulation and verification.

---

## 📌 Truth Table

| A | B | Bin | Diff | Bout |
| - | - | --- | ---- | ---- |
| 0 | 0 | 0   | 0    | 0    |
| 0 | 0 | 1   | 1    | 1    |
| 0 | 1 | 0   | 1    | 1    |
| 0 | 1 | 1   | 0    | 1    |
| 1 | 0 | 0   | 1    | 0    |
| 1 | 0 | 1   | 0    | 0    |
| 1 | 1 | 0   | 0    | 0    |
| 1 | 1 | 1   | 1    | 1    |

---

## 🧮 Logic Equations

**Difference:**

```text
Diff = A ⊕ B ⊕ Bin
```

**Borrow Out:**

```text
Bout = (~A & B) | (~A & Bin) | (B & Bin)
```

---

## 📂 Project Structure

```text
full-subtractor/
│
├── full_sub.v      # Verilog module
├── full_sub_tb.v   # Testbench
├── full_subtractor_tb_behav.wcfg
├── full_sub_RTL.png
└── README.md
```


## 🧪 Testbench

The included testbench applies all possible input combinations and verifies the generated Difference and Borrow outputs.

Run the simulation using your preferred Verilog simulator such as:

* Icarus Verilog
* ModelSim
* Vivado Simulator
* QuestaSim


## 📈 Expected Output

The simulation should verify all 8 input combinations and produce outputs matching the Full Subtractor truth table.

---

## 🎯 Applications

* Arithmetic Logic Units (ALUs)
* Digital Signal Processing (DSP)
* Binary Arithmetic Circuits
* Processor Design
* Embedded Systems

---

## 📚 Concepts Covered

* Combinational Logic Design
* Verilog HDL
* Boolean Algebra
* Digital Electronics
* Testbench Development

---
