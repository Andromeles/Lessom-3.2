//содержащий: instance_name, external_ip, fqdn

output "vm_web_ip_address" {
  value = yandex_compute_instance.platform.*.network_interface.0.nat_ip_address
  description = "vm_web ip"
}


output "vm_db_ip_address" {
  value = yandex_compute_instance.vm2.*.network_interface.0.nat_ip_address
  description = "vm_db ip"
}