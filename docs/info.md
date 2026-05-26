# True Random Number Generator (TRNG)

## Overview
This project implements a True Random Number Generator using a ring oscillator-based architecture.

The design generates random bits from oscillator jitter and processes them through multiple stages before producing random output data.

---

## Main Modules

### Ring Oscillator
Generates oscillating entropy source.

### Sampler
Samples oscillator output using system clock.

### Post Processor
Improves randomness of generated bits.

### Health Checker
Detects repeated patterns or faulty outputs.

### Output Register
Stores generated random data before output.

---

## Inputs

| Signal | Description |
|--------|-------------|
| clk | System clock |
| rst_n | Active low reset |
| ena | Enable signal |

---

## Outputs

| Signal | Description |
|--------|-------------|
| uo_out[7:0] | Random output bits |
| uio_out[0] | Ready signal |

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- Cocotb
- TinyTapeout
- OpenLane

---

## Author

Nevin R Philip
