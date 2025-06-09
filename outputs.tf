output "security_group_id" {
  value = aws_security_group.rds_sg_custom.id
}

output "db_instance_endpoint" {
  value = aws_db_instance.db_instance_custom.endpoint
}
