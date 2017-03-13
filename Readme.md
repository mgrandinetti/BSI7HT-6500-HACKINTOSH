Computer's Specs:
Brix BSI7HT-6500
16x2 Crucial sodium DDR4 2133
256 hard Disk m-sata SAMSUNG
Bios F2 with thunderbolt enabled (to enable thunderbolt need to flash from Win10)

I think this guide works also with BSI5HT-6200, and version without SATA disk

work:
- Bluetooth 4.2
- Usb 3.1 (hdmi support, usb3)
- Thunderbolt 3 (thunderbolt2 adapter tested)
- Power management (I use smcfancontroll to reduce fan speed to 2600rpm)
- Reboot
- Shutdown fixed with use IntelAppleE1000e.kext
- Wake/sleep
- Audio (HDMI audio codec support, microphone, headphone)
- Lan (IntelAppleE1000e.kext)

doesn't work:
- Memory card reader
- Internal Intel Wifi (no MWI support for the moment)

Bios Section:
To enable osx thunderbolt use in thunderbolt section legacy mode.

Clover version: 4035

I have started GitHub public:
https://github.com/mgrandinetti/BSI7HT-6500-HACKINTOSH

10/03/2017 update:
- MONITOR 5KLG works out of the box with thunderbolt3. Max resolution is 3840x2160@60Hz
- Webcam works
- Audio Wors
- usb-c ports works
- Mic works

Credits to
cnrd and salaman to use this to generate usb port ssdt https://github.com/cnrd/OSX-USB-SSDT
