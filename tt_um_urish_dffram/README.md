![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg) ![](../../workflows/test/badge.svg)

## Tiny Tapeout DFFRAM Example

This project includes a 32x32 (1024 bits) DFFRAM macro with a single read/write port (1RW). 

The size of the example project is 2x3 tiles, and the DFFRAM macro takes roughly 60% of the available space, leaving plenty of space for custom logic.

## What is Tiny Tapeout?

TinyTapeout is an educational project that aims to make it easier and cheaper than ever to get your digital designs manufactured on a real chip.

To learn more and get started, visit https://tinytapeout.com.

## Building the project locally

1. Install [OpenLane 2 with nix](https://openlane2.readthedocs.io/en/latest/getting_started/nix_installation/index.html).
   Set the `OPENLANE2_ROOT` environment variable to the path where you cloned the openlane2 repository.
2. Clone tt-support-tools: `git clone -b tt06 https://github.com/TinyTapeout/tt-support-tools tt`
3. Run the following command:

```bash
rm -rf runs && nix-shell ${OPENLANE2_ROOT}/shell.nix --run "python build.py"
```

The build.py script will create a runs directory and run the OpenLane flow. The results will be in the runs/wokwi directory.

When you run the build for the first time, nix will download all the dependencies. This can take a while, especially if you
haven't configured nix to use binary caches. Once the dependencies are downloaded, the build should take up to ten minutes.

## Changing the position of the RAM32 macro

You can change the position of the RAM32 macro in your design by editing `config.json` as follows:

1. Set `MACROS.RAM32.instances.ram1.location` to the x/y coordinates you want the RAM32 to be placed at.
2. Set `FP_PDN_VOFFSET` to the x coordinate of the RAM + 16.32 (so if the RAM is at 10, set `FP_PDN_VOFFSET` to 26.32).

Note that PDN (power distribution network) stripes of your design must match the PDN stripes of the RAM32 macro. Therefore, you must keep 
`FP_PDN_VPITCH` at the default value (153.6), and set `FP_PDN_VOFFSET` to the x coordinate of the RAM + 16.32 (as explained above).

## Resources

- [FAQ](https://tinytapeout.com/faq/)
- [Digital design lessons](https://tinytapeout.com/digital_design/)
- [Learn how semiconductors work](https://tinytapeout.com/siliwiz/)
- [Join the community](https://discord.gg/rPK2nSjxy8)

## What next?

- Submit your design to the next shuttle [on the website](https://tinytapeout.com/#submit-your-design). The closing date is **November 4th**.
- Edit this [README](README.md) and explain your design, how it works, and how to test it.
- Share your GDS on your social network of choice, tagging it #tinytapeout and linking Matt's profile:
  - LinkedIn [#tinytapeout](https://www.linkedin.com/search/results/content/?keywords=%23tinytapeout) [matt-venn](https://www.linkedin.com/in/matt-venn/)
  - Mastodon [#tinytapeout](https://chaos.social/tags/tinytapeout) [@matthewvenn](https://chaos.social/@matthewvenn)
  - Twitter [#tinytapeout](https://twitter.com/hashtag/tinytapeout?src=hashtag_click) [@matthewvenn](https://twitter.com/matthewvenn)

