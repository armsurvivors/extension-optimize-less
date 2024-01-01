function user_config__050_optimize_less_packages() {
	display_alert "add irqbalance" "${EXTENSION}" "info"
	add_packages_to_rootfs irqbalance
}

function post_family_tweaks_bsp__050_optimize_less() {

	display_alert "disable armbian-hardware-optimize.service" "${EXTENSION}" "info"
	RM_OPTIONS="-f"
	# chroot_sdcard systemctl --no-reload disable armbian-hardware-optimize.service
	rm ${RM_OPTIONS} "${destination}"/lib/systemd/system/armbian-hardware-optimize.service

	return 0
}
