output "stig_instance_ips" {
  value = aws_instance.stig[*].public_ip
}

output "idm_host" {
  value = aws_instance.idm.public_ip
}

output "keycloak_host" {
  value = aws_instance.keycloak.public_ip
}

