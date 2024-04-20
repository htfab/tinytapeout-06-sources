![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)

# Tiny Tapeout - Emilian's RF Playground project

- [Read the documentation for project](docs/info.md)

Idac1
- [X] schematic
- [X] test bench
- [X] test with cascaded 2x bits
- [X] layout cell
- [X] LVS cell
- [X] layout all
- [X] LVS all

Pll1
- [X] starved current oscillator test bench
- [ ] fast counter
- [ ] digital phase / frequency detection
- [ ] external and internal loop mode
- [ ] LVS

Opamp1 + VBias1 -- simple differential pair amplifier
- [X] schematic
- [X] test bench
- [X] magic layout
- [ ] Fix power routing and vias in layout from Discord message
- [ ] Add output stage buffer
- [ ] New symbol and layout cell with all three components
- [ ] LVS

Gilbert cell mixer
- [X] schematic + test bench
- [ ] ?vbias
- [ ] ?internal inverter for LO
- [ ] layout
- [ ] LVS

Putting things together
- [ ] decoupling caps
- [ ] routing design with pass gates and muxes
- [ ] take care of long digital paths in routing with buffers
- [ ] try macros with analog and digital together
- [ ] ? LVS


TODO: check the idac1 changes.
TODO: need stronger transistors to pins also.


## Resources

- [FAQ](https://tinytapeout.com/faq/)
- [Digital design lessons](https://tinytapeout.com/digital_design/)
- [Learn how semiconductors work](https://tinytapeout.com/siliwiz/)
- [Join the community](https://tinytapeout.com/discord)
- [Build your design locally](https://docs.google.com/document/d/1aUUZ1jthRpg4QURIIyzlOaPWlmQzr-jBn3wZipVUPt4)

## What is Tiny Tapeout?

TinyTapeout is an educational project that aims to make it easier and cheaper than ever to get your digital designs manufactured on a real chip.

To learn more and get started, visit https://tinytapeout.com.
