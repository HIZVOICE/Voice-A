# kernel_xiaomi_mt6833

Linux kernel for **Xiaomi Redmi Note 10 5G / Poco M3 Pro 5G (codename: camellia)** powered by a MediaTek Dimensity 700 (MT6833) platform.

Kernel version: **4.14.357-flyme**

This kernel is built with:
- **[ReSukiSU](https://github.com/ReSukiSU/ReSukiSU) — ver 35090** (non-GKI, manual hook path)

## Features

- Android 12 - 17 support (variants: S/T/U/V/B/C)
- KernelSU (ReSukiSU) integrated
- F2FS/EROFS/EXFAT enabled
- Compatible with Flyme, stock, port, and custom ROMs
- IR blaster is **known to be non-functional**

## Devices

| Device                     | Codename | Platform  |
|----------------------------|----------|-----------|
| Xiaomi Redmi Note 10 5G     | camellia  | MT6833    |
| Poco M3 Pro 5G              | camellia  | MT6833    |

## Note

- Not tested on FTS (FocalTech) touchscreen panel variants. Use at your own risk.
- For stock/port ROMs some users report the need to follow specific install instructions (see the Telegram channel).
- For Android 17 (U/V-late/C) ROMs, flash a compatible vendor (A17 vendor) to avoid bootloop.

## Build

```bash
export ARCH=arm64
export CROSS_COMPILE=/path/to/aarch64-linux-gnu-
export CC=clang
export CLANG_TRIPLE=aarch64-linux-gnu-

make O=out ARCH=arm64 CC=clang CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=aarch64-linux-gnu- camellia_defconfig
make O=out ARCH=arm64 CC=clang CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=aarch64-linux-gnu- -j$(nproc)
```

The resulting kernel image is located at `out/arch/arm64/boot/Image.gz-dtb`.

## Credits

- [KernelSU](https://github.com/tiann/KernelSU)
- [ReSukiSU](https://github.com/ReSukiSU/ReSukiSU)
- [Flyme kernel projects](https://github.com/camellia-devs)
- [begonia kernel reference](https://github.com/Saikrishna1504/kernel_xiaomi_mt6785/commits/main/)

## Support

Telegram: [camellia build channel](https://t.me/kotiktesei_builds)

## License

GPL-2.0
