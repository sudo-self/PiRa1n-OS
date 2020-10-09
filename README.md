<h1 align="center">piRa1n-OS</h1>
<h3 align="center">An OS for the RPI 4 based on RPi OS with <a href="https://github.com/raspberryenvoie/piRa1n">piRa1n</a> and <a href="https://github.com/raspberryenvoie/piRa1n-web">piRa1n-web</a> pre-installed.
</h3>
<p align="center"><img src="https://gist.githubusercontent.com/raspberryenvoie/9266a96148dd3ae0266a3bbe39b9c4f0/raw/65aca16d3ba11776f5f28a35e6d58c122540d426/piRa1n_logo.png"></p>

---

[piRa1n](https://github.com/raspberryenvoie/piRa1n) lets you easily turn a Raspberry Pi 4 or a Banana Pi M2 Zero into a portable Checkra1n dongle. Make sure to read the [wiki pages](https://github.com/raspberryenvoie/piRa1n/wiki) pages for more info.

## piRa1n-OS is only for the Raspberry Pi 4

# Download piRa1n-OS
[Here](https://github.com/raspberryenvoie/piRa1n-OS/releases) is the download link.\
Note: The default username is `pi` and the password is `jailbreak`.

# Build piRa1n-OS
The tool used to build piRa1n-OS (pi-gen) supports Debian Buster and Ubuntu Xenial.

To install the required dependencies for pi-gen you should run:
```bash
apt-get install coreutils quilt parted qemu-user-static debootstrap zerofree zip \
dosfstools bsdtar libcap2-bin grep rsync xz-utils file git curl bc
```
Then build piRa1n-OS by running the following commands:
```
git clone https://github.com/raspberryenvoie/piRa1n-OS.git
cd piRa1n-OS
sudo ./build.sh
```
Once this process is done, you will find the image in `work/date-piRa1n-OS/export-image/`.

More information on pi-gen and docker build can be found [here](https://github.com/RPi-Distro/Pi-gen).

# What's new?
Read the [changelog file](https://github.com/raspberryenvoie/piRa1n-OS/blob/master/CHANGELOG.md).

# Credits
- [RPi-Distro](https://github.com/RPi-Distro) for [pi-gen](https://github.com/RPi-Distro/Pi-gen)
- The Raspberry Pi Foundation for [Raspberry Pi OS](https://www.raspberrypi.org/downloads/raspberry-pi-os/)
- The Checkra1n team for [Checkra1n](https://checkra.in)
