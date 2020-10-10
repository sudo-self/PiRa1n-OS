#!/bin/bash -e
checkra1n_source='https://assets.checkra.in/downloads/linux/cli/arm/d751f4b245bd4071c571654607ca4058e9e7dc4a5fa30639024b6067eebf5c3b/checkra1n'

# Compile libirecovery
git clone https://github.com/libimobiledevice/libirecovery.git ${ROOTFS_DIR}/home/pi/libirecovery/
on_chroot << EOF
cd /home/pi/libirecovery/
./autogen.sh
cd /home/pi/libirecovery/
make
make install
ldconfig
EOF
rm -rf ${ROOTFS_DIR}/home/pi/libirecovery/

# Start of the installation of piRa1n
git clone https://github.com/raspberryenvoie/piRa1n.git ${ROOTFS_DIR}/home/pi/piRa1n/

# Install checkra1n
curl -Lko ${ROOTFS_DIR}/home/pi/piRa1n/checkra1n $checkra1n_source
chmod +x ${ROOTFS_DIR}/home/pi/piRa1n/checkra1n
on_chroot << EOF
cd /home/pi/piRa1n/
./checkra1n --version > checkra1n_version 2>&1
EOF
cd ${ROOTFS_DIR}/home/pi/piRa1n/
sed -i -n -e 2p checkra1n_version
# Remove '# '
sed -i 's/# //g' checkra1n_version
# Lower case
sed -i 's/\(.*\)/\L\1/' checkra1n_version
cd -

# Enable piRa1n at startup
cat << EOF > ${ROOTFS_DIR}/etc/systemd/system/piRa1n.service
[Unit]
Description=piRa1n
After=multi-user.target

[Service]
ExecStart=/home/pi/piRa1n/startup.sh

[Install]
WantedBy=multi-user.target
EOF
chmod 644 ${ROOTFS_DIR}/etc/systemd/system/piRa1n.service
on_chroot << EOF
systemctl enable piRa1n.service
EOF

# Start of the installation of piRa1n-web
git clone https://github.com/raspberryenvoie/piRa1n-web.git  ${ROOTFS_DIR}/home/pi/piRa1n-web/
rm -rf ${ROOTFS_DIR}/var/www/html/*
cp -R ${ROOTFS_DIR}/home/pi/piRa1n-web/html/* ${ROOTFS_DIR}/var/www/html/
# Add sudoers file
cat << EOF > ${ROOTFS_DIR}/etc/sudoers.d/piRa1n-web
# piRa1n-web
www-data ALL=(ALL) NOPASSWD: /home/pi/piRa1n/piRa1n
EOF

# Fix file permissions
on_chroot << EOF
chown -R pi:pi /home/pi/piRa1n*/
EOF
chmod -R 755 ${ROOTFS_DIR}/home/pi/piRa1n*/
