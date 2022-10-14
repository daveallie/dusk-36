# Dusk 36 ZMK Shield

## Keymap

Default keymap inspired by Ben Vallack's [Colemak 5x3 Split](https://configure.zsa.io/planck-ez/layouts/4D3ym/jYYjx/0/42/) layout.

## Building

Pushing to GitHub will build the firmware.

### Building Locally

From this directory, run:

```shell
docker run --rm -it -v $(pwd):/workspace/zmk-config zmkfirmware/zmk-build-arm:3.0 /workspace/zmk-config/build.sh
```

The built uf2 files will be in the `build/artifacts` directory.
