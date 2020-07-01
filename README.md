# piRa1n-OS
piRa1n-OS is an OS based on Raspberry Pi OS with [piRa1n](https://github.com/raspberryenvoie/piRa1n) and [piRa1n-web](https://github.com/raspberryenvoie/piRa1n-web) pre-installed.

## How to use piRa1n?
Check [this link](https://github.com/raspberryenvoie/piRa1n) for instructions on how to use piRa1n.\

## [Latest build](https://github.com/raspberryenvoie/piRa1n-OS/releases)
The default username is `pi` and the password is `jailbreak`.

## Build yourself piRa1n-OS
The tool used to build piRa1n-OS (pi-gen) supports Debian Buster and Ubuntu Xenial. More informations on pi-gen can be found [here](https://github.com/RPi-Distro/Pi-gen).

To install the required dependencies for pi-gen you should run:
```bash
apt-get install coreutils quilt parted qemu-user-static debootstrap zerofree zip \
dosfstools bsdtar libcap2-bin grep rsync xz-utils file git curl bc
```
Run `git clone https://github.com/raspberryenvoie/piRa1n-OS.git`.\
Then, build the image by runing `cd piRa1n-OS && sudo ./build.sh`.\
Once this process is done, you will find the image in `work/date-piRa1n-OS/export-image/`.

## Credits:
- [pi-gen](https://github.com/RPi-Distro/Pi-gen)
- [Checkra1n](https://checkra.in)
- [Raspberry Pi OS](https://www.raspberrypi.org/downloads/raspbian/)
