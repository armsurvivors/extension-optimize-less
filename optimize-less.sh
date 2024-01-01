function user_config__050_optimize_less_packages() {
	display_alert "add irqbalance" "${EXTENSION}" "info"
	add_packages_to_rootfs irqbalance
}

function post_family_tweaks_050_optimize_less() {

	display_alert "armbian-hardwarwe-optimize.service" "{EXTENSION}" "info"
	RM_OPTIONS="-f"
	rm ${RM_OPTIONS} "${destination}"/lib/systemd/system/armbian-hardware-optimize.service

	return 0
}
