output "aws_security_details" {
  value = aws_security_group.http_server_sg
}

output "aws_instance_public_ip" {
  value = aws_instance.http_server1.public_ip
}

output "aws_instance_public_dns" {
  value = aws_instance.http_server1.public_dns
}

output "aws_load-balance-dns" {
  value = aws_elb.elb.dns_name
}