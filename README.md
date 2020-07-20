# Notebook9-Metal-Hackintosh (OpenCore)
Samsung Notebook 9 Metal Hackintosh
for i3-7100u, i5-7200u, i7-7300u

## For Big Sur Users

VirtualSMC 버전이 업데이트 된 이후로 사용하셔야 합니다.
배터리 부분이 잡히지 않으며 터치패드도 이상하게 작동하여 사용하는데 큰 어려움이 있습니다.

## Not Working

- Sleep
- Windows Boot (please use rEFInd)

## Not Tested

- C-Type DP Alt Mode
- HDMI after boot if plugged

## Improvements

- Clean SSDTs'
- Performance / Battery Saving [#HowTo](https://x86.co.kr/tip/3667839)

## How To

1. OpenCore를 다운받아 설치합니다.
1. config.plist를 다운받아 EFI/OC/ 폴더에 추가합니다.
1. EFI/OC/ACPI/ 폴더에 [ACPI/OpenCore](https://github.com/obbcth/Notebook9-Metal-Hackintosh/tree/master/ACPI/OpenCore) 내 모든 DSDT와 SSDT를 추가합니다.
1. EFI/OC/Kexts/ 폴더에 [kexts/Readme.md](https://github.com/obbcth/Notebook9-Metal-Hackintosh/tree/master/kexts) 에 적힌 파일을 받아 추가합니다.
