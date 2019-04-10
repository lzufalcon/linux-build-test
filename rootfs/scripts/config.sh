# QEMU target installation. Use QEMU_BIN for default,
# otherwise use the versioned target.

QEMU_INSTALL=/opt/buildbot/qemu-install
QEMU_V27_BIN=${QEMU_INSTALL}/v2.7/bin
QEMU_V28_BIN=${QEMU_INSTALL}/v2.8/bin
QEMU_V29_BIN=${QEMU_INSTALL}/v2.9/bin
QEMU_V210_BIN=${QEMU_INSTALL}/v2.10/bin
QEMU_V211_BIN=${QEMU_INSTALL}/v2.11/bin
QEMU_V211_M68K_BIN=${QEMU_INSTALL}/v2.11-m68k/bin
QEMU_V212_BIN=${QEMU_INSTALL}/v2.12/bin
QEMU_V30_BIN=${QEMU_INSTALL}/v3.0/bin
QEMU_V31_BIN=${QEMU_INSTALL}/v3.1/bin
QEMU_V31_M68K_BIN=${QEMU_INSTALL}/v3.1-m68k/bin
QEMU_V40_BIN=${QEMU_INSTALL}/v4.0/bin
QEMU_V40_M68K_BIN=${QEMU_INSTALL}/v4.0-m68k/bin
QEMU_MASTER_BIN=${QEMU_INSTALL}/master/bin

QEMU_BIN=${QEMU_V31_BIN}

QEMU_LINARO_BIN=${QEMU_INSTALL}/v2.3.50-linaro/bin
QEMU_METAG_BIN=${QEMU_INSTALL}/metag/bin
