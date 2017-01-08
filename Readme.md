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
- Shutdown
- Wake/sleep
- Audio (HDMI audio codec support, microphone, headphone)
- Lan (if you plug cable in Internal Lan, system doesn't want to shutdown. Work around is to use external Usb Ethernet. I exposed issue in IntelMausiEthernet.kext GitHub)

doesn't work:
- Shutdown (the system stay with led lights and sometimes fan at maximum speed. If I restart and shutdown immediately system Halt without problem)
- Memory card reader
- Internal Intel Wifi (no MWI support for the moment)

Bios Section:
To enable osx thunderbolt use in thunderbolt section legacy mode.

Clover version: 3974

I have started GitHub public:
https://github.com/mgrandinetti/BSI7HT-6500-HACKINTOSH


thank in advance and I hope Help me to realize a perfect hackintosh with this machine. I hope to use this with LG 5K Monitor

Credits to
cnrd and salaman to use this to generate usb port ssdt https://github.com/cnrd/OSX-USB-SSDT
