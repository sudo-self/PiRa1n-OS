<h1 align="center">PiRa1n-OS</h1>
<h3 align="center">Debian Linux OS<a href="https://github.com/raspberryenvoie/piRa1n">PiRa1n</a>and<a href="https://github.com/raspberryenvoie/piRa1n-web">PiRa1n-web</a>pre-installed.
</h3>
<p align="center"><img src="https://gist.githubusercontent.com/raspberryenvoie/9266a96148dd3ae0266a3bbe39b9c4f0/raw/65aca16d3ba11776f5f28a35e6d58c122540d426/piRa1n_logo.png"></p>


## Download piRa1n-OS  only for the Raspberry Pi 4 (https://github.com/raspberryenvoie/piRa1n-OS/releases)

## The default username is `pi` and the password is `jailbreak`

## Build PiRa1n-OS

To install the required dependencies for pi-gen you should run:
```bash
apt-get install coreutils quilt parted qemu-user-static debootstrap zerofree zip \
dosfstools bsdtar libcap2-bin grep rsync xz-utils file git curl bc \
qemu-utils kpartx
```
Then build piRa1n-OS by running the following commands:
```
git clone https://github.com/raspberryenvoie/piRa1n-OS.git
cd piRa1n-OS
sudo ./build.sh
```
### image output path /work/date-piRa1n-OS/export-image/
### Credits
- [RPi-Distro](https://github.com/RPi-Distro) for [pi-gen](https://github.com/RPi-Distro/Pi-gen)
- The Raspberry Pi Foundation for [Raspberry Pi OS](https://www.raspberrypi.org/downloads/raspberry-pi-os/)
- The Checkra1n team for [Checkra1n](https://checkra.in)
