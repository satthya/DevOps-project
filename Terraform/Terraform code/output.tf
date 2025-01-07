output "region1_key" {
    value = aws_key_pair.region1.key_name  
}

output "region2_key" {
    value = aws_key_pair.region2.key_name  
}

output "region1" {
  value = aws_instance.instance_region1.id
}

output "region2" {
  value = aws_instance.instance_region2.id
}

output "region1_public_ip" {
    value = aws_instance.instance_region1.public_ip  
}

output "region2_public_ip" {
    value = aws_instance.instance_region2.public_ip
  
}
