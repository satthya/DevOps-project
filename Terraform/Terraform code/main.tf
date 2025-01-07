resource "aws_key_pair" "region1" {
    provider = aws.region1
    key_name = "key_region1"
    public_key = file("~/.ssh/id_ed25519.pub")  
}

resource "aws_key_pair" "region2" {
    provider = aws.region2
    key_name = "key_region2"
    public_key = file("~/.ssh/id_ed25519.pub")    
}

resource "aws_instance" "instance_region1" {
    provider = aws.region1
    ami = var.instance_ami_region1
    key_name = aws_key_pair.region1.key_name
    instance_type = var.instance_type_region1
    security_groups = [aws_security_group.region1.name]
    tags = {
        Name = var.tag_region1
    }
       connection {
      type = "ssh"
      user = "ec2-user"
      private_key = file("~/.ssh/id_ed25519")
      host = self.public_ip
    }
    provisioner "remote-exec" {
        inline = [ 
            "sudo yum update -y",
            "sudo amazon-linux-extras enable nginx1",
            "sudo yum install -y nginx",
            "sudo systemctl start nginx",
            "sudo systemctl enable nginx"

         ]
    }  
}


resource "aws_instance" "instance_region2" {
    provider = aws.region2
    ami = var.instance_ami_region2
    key_name = aws_key_pair.region2.key_name
    instance_type = var.instance_type_region2
    security_groups = [aws_security_group.region2.name]
    tags = {
        Name = var.tag_region2
    }
    connection {
      type = "ssh"
      user = "ec2-user"
      private_key = file("~/.ssh/id_ed25519")
      host = self.public_ip
    }
    provisioner "remote-exec" {
        inline = [ 
            "sudo yum update -y",
            "sudo amazon-linux-extras enable nginx1",
            "sudo yum install -y nginx",
            "sudo systemctl start nginx",
            "sudo systemctl enable nginx"
         ] 
    }
}
  
resource "aws_security_group" "region1" {
    provider = aws.region1
    ingress {
      description = "add http"
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = [ "0.0.0.0/0" ]
      }
    ingress {
     from_port = 22
     to_port = 22
     protocol = "tcp"
     cidr_blocks = [ "0.0.0.0/0" ]   
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = [ "0.0.0.0/0" ]
    }         
  
}

resource "aws_security_group" "region2" {
    provider = aws.region2
    ingress {
      description = "add http"
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = [ "0.0.0.0/0" ]
      }
    ingress {
     from_port = 22
     to_port = 22
     protocol = "tcp"
     cidr_blocks = [ "0.0.0.0/0" ]   
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = [ "0.0.0.0/0" ]
    }
   
}

