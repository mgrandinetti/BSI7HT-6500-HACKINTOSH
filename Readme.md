BRIX BSI7HT-6500

Computer's Specs:
Brix BSI7HT-6500
16x2 Crucial sodium DDR4 2133
256 hard Disk m-sata SAMSUNG
Bios F2 with thunderbolt enabled (to enable thunderbolt need to flash from Win10)

I think this guide works also with BSI5HT-6200, and version without SATA disk

work:
- Bluetooth 4.2
- Usb 3.1 (hdmi support, dp support, usb3)
- Thunderbolt 3 (thunderbolt2 adapter tested, usb-c to hdmi and dp works)
- Power management (I use smcfancontroll to reduce fan speed to 2600rpm)
- Reboot
- Wake/sleep
- Audio (HDMI audio codec support)
- Lan (when cable plugged cause the system don't shutdown properly. Workaround is install and use usb lan)

doesn't work:
- Shutdown (the system stay with led lights and sometimes fan at maximum speed. If I restart and shutdown immediately system Halt without problem)
- Memory card reader
- Internal Wifi

Bios Section:
To enable osx thunderbolt use in thunderbolt section legacy mode.


thanx to cnrd and salaman to use this to generate usb port ssdt
https://github.com/cnrd/OSX-USB-SSDT