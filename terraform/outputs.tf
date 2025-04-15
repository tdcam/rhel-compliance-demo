output "instance_ips" {
  value = aws_instance.rhel[*].public_ip
}

output "idm_host" {
  value = aws_instance.rhel[0].public_ip
}

output "keycloak_host" {
  value = aws_instance.rhel[1].public_ip
}

