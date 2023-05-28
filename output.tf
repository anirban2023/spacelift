output "test_instance" {
  description = "ID of the Ec2 instance"
  value       = aws_instance.test_instance.id
}

