buildarch=(alpha arm arm64 avr32 blackfin cris frv i386 ia64 m68k m68k_nommu \
	   microblaze mips openrisc parisc parisc64 powerpc s390 sh sparc32 sparc64 \
	   tile x86_64 xtensa um)

cmd_alpha=(defconfig allmodconfig)
cmd_arc=(defconfig tb10x_defconfig)
cmd_arm=(defconfig allmodconfig exynos4_defconfig multi_v7_defconfig \
	kirkwood_defconfig omap2plus_defconfig tegra_defconfig u8500_defconfig \
	at91sam9rl_defconfig ap4evb_defconfig bcm_defconfig bonito_defconfig \
	pxa910_defconfig mvebu_defconfig armadillo800eva_defconfig \
	mackerel_defconfig ixp4xx_defconfig)
cmd_arm64=(defconfig)
cmd_avr32=(defconfig)
cmd_blackfin=(defconfig)
cmd_cris=(defconfig etrax-100lx_defconfig allnoconfig)
cmd_frv=(defconfig)
cmd_i386=(defconfig allyesconfig allmodconfig allnoconfig)
cmd_ia64=(defconfig)
cmd_m68k=(defconfig allmodconfig sun3_defconfig)
cmd_m68k_nommu=(m5272c3_defconfig m5307c3_defconfig m5249evb_defconfig \
	m5407c3_defconfig m5475evb_defconfig)
cmd_microblaze=(mmu_defconfig nommu_defconfig)
cmd_mips=(defconfig allmodconfig bcm47xx_defconfig bcm63xx_defconfig \
	nlm_xlp_defconfig ath79_defconfig ar7_defconfig fuloong2e_defconfig \
	e55_defconfig cavium_octeon_defconfig powertv_defconfig malta_defconfig)
cmd_openrisc=(defconfig)
cmd_parisc=(defconfig)
cmd_parisc64=(a500_defconfig)
cmd_powerpc=(defconfig allmodconfig ppc64e_defconfig cell_defconfig \
	chroma_defconfig maple_defconfig ppc6xx_defconfig mpc83xx_defconfig \
	mpc85xx_defconfig mpc85xx_smp_defconfig tqm8xx_defconfig \
	85xx/sbc8548_defconfig 83xx/mpc834x_mds_defconfig \
	86xx/sbc8641d_defconfig)
cmd_s390=(defconfig)
cmd_sh=(defconfig dreamcast_defconfig microdev_defconfig)
cmd_sparc32=(defconfig)
cmd_sparc64=(defconfig allmodconfig)
cmd_tile=(tilegx_defconfig)
cmd_x86_64=(defconfig allyesconfig allmodconfig allnoconfig)
cmd_xtensa=(defconfig allmodconfig)
cmd_um=(defconfig)

# fixups

fixup_tile=("s/CONFIG_BLK_DEV_INITRD=y/CONFIG_BLK_DEV_INITRD is not set/"
	"/CONFIG_INITRAMFS_SOURCE/d")

fixup_arc=("s/CONFIG_BLK_DEV_INITRD=y/CONFIG_BLK_DEV_INITRD is not set/"
	"/CONFIG_INITRAMFS_SOURCE/d")
