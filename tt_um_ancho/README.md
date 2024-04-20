![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg) ![](../../workflows/test/badge.svg)

# Tiny Tapeout Verilog Project Template

- [Read the documentation for project](docs/info.md)

## What is Tiny Tapeout?

TinyTapeout is an educational project that aims to make it easier and cheaper than ever to get your digital designs manufactured on a real chip.

To learn more and get started, visit https://tinytapeout.com.

## Verilog Projects

1. Add your Verilog files to the `src` folder.
2. Edit the [info.yaml](info.yaml) and update information about your project, paying special attention to the `source_files` and `top_module` properties. If you are upgrading an existing Tiny Tapeout project, check out our [online info.yaml migration tool](https://tinytapeout.github.io/tt-yaml-upgrade-tool/).
3. Edit [docs/info.md](docs/info.md) and add a description of your project.
4. Optionally, add a testbench to the `test` folder. See [test/README.md](test/README.md) for more information.

The GitHub action will automatically build the ASIC files using [OpenLane](https://www.zerotoasiccourse.com/terminology/openlane/).

## Enable GitHub actions to build the results page

- [Enabling GitHub Pages](https://tinytapeout.com/faq/#my-github-action-is-failing-on-the-pages-part)

## Resources

- [FAQ](https://tinytapeout.com/faq/)
- [Digital design lessons](https://tinytapeout.com/digital_design/)
- [Learn how semiconductors work](https://tinytapeout.com/siliwiz/)
- [Join the community](https://tinytapeout.com/discord)
- [Build your design locally](https://docs.google.com/document/d/1aUUZ1jthRpg4QURIIyzlOaPWlmQzr-jBn3wZipVUPt4)

## What next?

- [Submit your design to the next shuttle](https://app.tinytapeout.com/).
- Edit [this README](README.md) and explain your design, how it works, and how to test it.
- Share your project on your social network of choice:
  - LinkedIn [#tinytapeout](https://www.linkedin.com/search/results/content/?keywords=%23tinytapeout) [@TinyTapeout](https://www.linkedin.com/company/100708654/)
  - Mastodon [#tinytapeout](https://chaos.social/tags/tinytapeout) [@matthewvenn](https://chaos.social/@matthewvenn)
  - X (formerly Twitter) [#tinytapeout](https://twitter.com/hashtag/tinytapeout) [@matthewvenn](https://twitter.com/matthewvenn)
 
  - Conexiones PWM (tt_um_ancho)
  - ![Conexiones (corrección) (1)](https://github.com/LuisVazpez12/PWM_configurable/assets/165457387/7f16a907-0566-474b-87da-9cf0701c7b7d)
  - ![image](https://github.com/LuisVazpez12/PWM_configurable/assets/165457387/35250f62-3d23-4ba9-b502-bfd3328a5676)
  - Para mejorar la comprensión de los usuarios, hemos utilizado distintos colores para las conexiones.
El "enable" se vinculó con la entrada in [6] mediante la línea morada, y el reloj se conectó a la
entrada in [7] a través de la línea rosa. Speed [0] se enlazó con la entrada in [3] utilizando una línea
azul, mientras que Speed [1] se conectó a la entrada in [4] mediante una línea roja. Por último,
Speed [2] se vinculó con la entrada in [5] a través de una línea naranja.

-Nuestra salida del PWM se vinculo con la salida out [0] mediante la línea amarilla.

-Las señales de entrada Speed[0], Speed[1] y Speed[3] trabajan con un voltaje de 3.3 a 5 volts para
ser reconocidas como 1 digital. El reloj operará a una frecuencia de 50 MHz con una amplitud de 3.3
volts. La salida se presenta como un PWM que utiliza valores del 0 al 100% de la señal, asignando
un rango del 12.5% para cada valor de entrada, con amplitud de 3.3 volts.

-
![image](https://github.com/LuisVazpez12/PWM_configurable/assets/165457387/043b143f-6c10-440e-b953-9ef519ae8156)



