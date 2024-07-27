## Install

1. Download `SmartZip*.zip` from releases of [SmartZip](https://github.com/vvyoko/SmartZip).
2. Decompress it to `SmartZip\`.

## Notes

Create from `light.ico` form `dark.ico`.

```sh
magick convert dark.ico -channel RGB -negate light.ico
```

## Setup

1. Run `setup_on_windows.bat`.
2. Run `SmartZip`.
3. 自定义 → 图标路径 → `%SmartZipDir%\light.ico`.
4. 关联 → 右键菜单 → Select `SmartZip Decompress`, `SmartZip Compress` → 注册