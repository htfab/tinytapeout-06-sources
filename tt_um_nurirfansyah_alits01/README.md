![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)

# Analog ITS Chip 01: Voltage-Controlled Ring Oscillator (VCRO)

## Introduction

This is a design of a voltage-controlled ring oscillator that utilizes transmission gates for delay control, aimed at achieving wide tuning ranges and fast voltage swings. Although the output frequency is not linear with the voltage control, this circuit serves as an exercise project to explore the potential of open-souce analog circuit design using Sky130 PDK and fabricating it through TinyTapeout.

## Repository Structure

- **docs/**: Documentation and project reports.
- **gds/**: GDSII files for the design.
- **lef/**: Library Exchange Format files.
- **mag/**: Magic layout files.
- **src/**: Source files and design scripts.
- **xschem/**: Schematic files.

## How It Works

The circuit is a voltage-controlled ring oscillator using transmission gates as the delay control element. It is based on the following publication:

Retdian, N., Takagi, S., & Fujii, N. (2002). Voltage controlled ring oscillator with wide tuning range and fast voltage swing. 2002 IEEE Asia-Pacific Conference on ASIC, AP-ASIC 2002 - Proceedings, 201–204. [DOI link](https://doi.org/10.1109/APASIC.2002.1031567).

## How to Test

There are two VCOs, inputs to both VCO are shared. VCO#1 output is connected to analog pin, VCO#2 outputs on each delay element stage can be observed through digital output pins.

**Pinouts:**

| Pin Name | Description               | Corresponding Signal |
|----------|---------------------------|----------------------|
| ua[0]    | VCO#1 output signal       | out                  |
| ua[1]    | Negative control voltage  | vcon_n               |
| ua[2]    | Positive control voltage  | vcon_p               |
| uo[0]    | VCO#2 output stage 5      | out5                 |
| uo[1]    | VCO#2 output stage 4      | out4                 |
| uo[2]    | VCO#2 output stage 3      | out3                 |
| uo[3]    | VCO#2 output stage 2      | out2                 |
| uo[4]    | VCO#2 output stage 1      | out1                 |

**External Hardware**

To test the VCRO (if it works), apply control voltages `vcon_n` and `vcon_p` to `ua[1]` and `ua[2]` respectively. Ensure that their combined sum equals the VCRO's supply voltage of 1.8V for optimal performance.

**Simulation**

The circuit can be simulated with ngspice, please use xschem to open the xschem/vcro_5st_tb.sch file and the simulation can be invoked from there, or alternatively the spice netlist can be generated from xschem.

## Circuit picture

![Circuit Layout](/docs/vcro_alits01.png)

# Tiny Tapeout Analog Project Template

- [Read the documentation for project](docs/info.md)

## What is Tiny Tapeout?

TinyTapeout is an educational project that aims to make it easier and cheaper than ever to get your digital designs manufactured on a real chip.

To learn more and get started, visit https://tinytapeout.com.

## Analog projects

For specifications and instructions, see the [analog specs page](https://tinytapeout.com/specs/analog/).

*Note*: Analog designs are currently in beta. There's a small chance that the changes will change before the deadline for Tiny Tapeout 6, or that we will have to postpone the analog design support to a future shuttle. If you have any questions, please join the [Tiny Tapeout Discord](https://tinytapeout.com/discord) and ask in the #analog channel.

## Enable GitHub actions to build the results page

- [Enabling GitHub Pages](https://tinytapeout.com/faq/#my-github-action-is-failing-on-the-pages-part)

## Resources

- [FAQ](https://tinytapeout.com/faq/)
- [Digital design lessons](https://tinytapeout.com/digital_design/)
- [Learn how semiconductors work](https://tinytapeout.com/siliwiz/)
- [Join the community](https://tinytapeout.com/discord)
- [Build your design locally](https://docs.google.com/document/d/1aUUZ1jthRpg4QURIIyzlOaPWlmQzr-jBn3wZipVUPt4)
