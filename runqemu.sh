#!/bin/bash
#Script to run QEMU for buildroot as the default configuration qemu_aarch64_virt_defconfig
#Host forwarding: Host Port 10022 ->> QEMU Port 22
#Author: Siddhant Jajoo.


# qemu-system-aarch64 \
#     -M virt  \
#     -cpu cortex-a53 -nographic -smp 1 \
#     -kernel buildroot/output/images/Image \
#     -append "rootwait root=/dev/vda console=ttyAMA0" \
#     -netdev user,id=eth0,hostfwd=tcp::10022-:22 \
#     -device virtio-net-device,netdev=eth0 \
#     -drive file=buildroot/output/images/rootfs.ext4,if=none,format=raw,id=hd0 \
#     -device virtio-blk-device,drive=hd0 -device virtio-rng-pci

qemu-system-aarch64 \
	-M raspi3 \
	-kernel buildroot/output/images/zImage \
	-dtb buildroot/output/images/bcm2710-rpi-3-b.dtb \
	-m 1024 -nographic \
	-append "rw console=ttyAMA0,115200 root=/dev/sdb fsck.repair=yes rootwait" \
	-device sd-card,drive=drive \
    -drive if=none,file=buildroot/output/images/rootfs.ext2,format=raw,id=drive

# qemu-system-aarch64 \
#     -M raspi3  \
#     \# -cpu cortex-a53 -nographic -smp 1 \
#     -dtb buildroot/output/images/bcm2710-rpi-3-b.dtb \
#     -kernel buildroot/output/images/Image \
#     -append "rootwait root=/dev/vda console=ttyAMA0" \
#     -netdev user,id=eth0,hostfwd=tcp::10022-:22 \
#     -device sd-card,drive=mycard -drive if=none,file=$ROOTFS,format=raw,id=mycard
    # -device virtio-net-device,netdev=eth0 \
    # -drive file=buildroot/output/images/rootfs.ext4,if=none,format=raw,id=hd0 \
    # -device virtio-blk-device,drive=hd0 -device virtio-rng-pci
