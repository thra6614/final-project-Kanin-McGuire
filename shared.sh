#!/bin/sh
# Shared definitions for buildroot scripts

# The defconfig from the buildroot directory we use for qemu builds
QEMU_DEFCONFIG=configs/qemu_aarch64_virt_defconfig
# The default hardware platform, when building for hardware
RPI_DEFCONFIG=configs/raspberrypi3_defconfig
# The place we store customizations to the qemu configuration
MODIFIED_QEMU_DEFCONFIG=base_external/configs/aesd_qemu_defconfig
# The place we store customizations for the project current target

# The place we store customizations to the rpi configuration
MODIFIED_RPI_DEFCONFIG=base_external/configs/aesd_rpi_defconfig


# The defconfig from the buildroot directory we use for the project
# AESD_DEFAULT_DEFCONFIG=${QEMU_DEFCONFIG}
# AESD_MODIFIED_DEFCONFIG=${MODIFIED_QEMU_DEFCONFIG}
# AESD_MODIFIED_DEFCONFIG_REL_BUILDROOT=../${AESD_MODIFIED_DEFCONFIG}

# The default hardware platform, when building for hardware


# The defconfig from the buildroot directory we use for qemu builds
# RASPBERRY_PI_DEFCONFIG=configs/raspberrypi3_defconfig
# # The place we store customizations to the qemu configuration
# MODIFIED_RASPBERRY_PI_DEFCONFIG=base_external/configs/aesd_raspberrypi_defconfig

# AESD_DEFAULT_DEFCONFIG=${RASPBERRY_PI_DEFCONFIG}
# AESD_MODIFIED_DEFCONFIG=${MODIFIED_RASPBERRY_PI_DEFCONFIG}
# AESD_MODIFIED_DEFCONFIG_REL_BUILDROOT=../${AESD_MODIFIED_DEFCONFIG}
AESD_DEFAULT_DEFCONFIG=${RPI_DEFCONFIG}
AESD_MODIFIED_DEFCONFIG=${MODIFIED_RPI_DEFCONFIG}
AESD_MODIFIED_DEFCONFIG_REL_BUILDROOT=../${AESD_MODIFIED_DEFCONFIG}
