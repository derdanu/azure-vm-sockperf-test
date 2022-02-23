output "instance1_ip_addr" {
  value       = azurerm_public_ip.publicip1.ip_address
  description = "The public IP address of the first instance."
}

output "instance2_ip_addr" {
  value       = azurerm_public_ip.publicip2.ip_address
  description = "The public IP address of the second instance."
}

output "receiver_cmd" {
  value       = "sshpass -p ${var.admin_password} ssh -o 'StrictHostKeyChecking no' -l ${var.admin_username} ${azurerm_public_ip.publicip1.ip_address} /usr/local/bin/sockperf sr --tcp -i 10.0.1.4 -p 12345"
  description = "Commandline to start the Receiver"
}

output "sender_cmd" {
  value       = "sshpass -p ${var.admin_password} ssh -o 'StrictHostKeyChecking no' -l ${var.admin_username} ${azurerm_public_ip.publicip2.ip_address} /usr/local/bin/sockperf ping-pong -i 10.0.1.4 --tcp -m 350 -t 101 -p 12345  --full-rtt"
  description = "Commandline to start the Sender"
}