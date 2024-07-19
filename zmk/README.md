# Dusk 36 ZMK Shield

## Keymap

Default keymap inspired by Ben Vallack's [Colemak 5x3 Split](https://configure.zsa.io/planck-ez/layouts/4D3ym/jYYjx/0/42/) layout.

## Building

Pushing to GitHub will build the firmware.

### Building Locally

The first time you run this, you'll need to run the setup script:

```shell
docker run --rm -it -v $(pwd):/workspace/zmk-config zmkfirmware/zmk-build-arm:3.5 /workspace/zmk-config/setup.sh
```

To build the images, run:

```shell
docker run --rm -it -v $(pwd):/workspace/zmk-config zmkfirmware/zmk-build-arm:3.5 /workspace/zmk-config/build.sh
```

The built uf2 files will be in the `build/artifacts` directory.
