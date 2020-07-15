# Notebook9-Metal-Hackintosh (OpenCore)
Samsung Notebook 9 Metal Hackintosh

## Not Working

- Sleep
- Windows Boot (idk why it happens)

## Not Tested

- C-Type DP Alt Mode
- HDMI after boot if plugged

## Improvements

- Clean SSDTs'
- Performance / Battery Saving

## How To

1. OpenCore를 다운받아 설치합니다. 0.5.9 기준.
1. config.plist를 다운받아 EFI/OC/ 폴더에 추가합니다.
1. EFI/OC/ACPI/ 폴더에 [ACPI/OpenCore](https://github.com/obbcth/Notebook9-Metal-Hackintosh/tree/master/ACPI/OpenCore) 내 모든 DSDT와 SSDT를 추가합니다.
1. EFI/OC/Kexts/ 폴더에 [kexts/Readme.md](https://github.com/obbcth/Notebook9-Metal-Hackintosh/tree/master/kexts) 에 적힌 파일을 받아 추가합니다.
