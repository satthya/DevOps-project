
#instance region1

variable "instance_ami_region1" {
    description = "aws instance region1"
    type = string
    default = "ami-0995922d49dc9a17d"  
}

variable "instance_type_region1" {
    description = "instance type"
    type = string
    default = "t2.micro" 
}

variable "instance_security_region1" {
    description = "security group"
    type = string
    default = "satthya1"
}
  
variable "tag_region1" {
  description = "instance tag"
  type = string
  default = "satthya-1"
}

#instance region2

variable "instance_ami_region2" {
    description = "aws instance region2"
    type = string
    default = "ami-0d6560f3176dc9ec0"  
}

variable "instance_type_region2" {
    description = "instance type"
    type = string
    default = "t2.micro" 
}

variable "instance_security_region2" {
    description = "security group"
    type = string
    default = "satthya2"
}

variable "tag_region2" {
  description = "instance tag"
  type = string
  default = "satthya-2"
}

