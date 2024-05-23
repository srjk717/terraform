variable "ami_id" {
  type    = string
  default = "ami-0f3c7d07486cad139"
}

variable "instances" {
  type    = map
  default = {
    Mongodb = "t3.medium"
    MySQL =  "t3.medium"
    Redis = "t2.micro"
    cart = "t2.micro"
    web = "t2.micro"
    shipping = "t2.micro"
    user = "t2.micro"
    payment = "t2.micro"
    RabbitMQ = "t2.micro"
    catalogue = "t2.micro"

  }
}

variable "instance_names" {
#   type    = string
  default = "t2.micro"
}

variable "sg_name" {
   default = "VPC-testing"
}

variable "sg_cidr" {
    type    = list
   default = ["0.0.0.0/0"]
}

variable "tags" {
    type    =  map
   default ={
    Name = "Mongodb"
    Environment = "DEV"
    Terraform = "true"
    Project = "Roboshop"
    Component = "Mongodb"
   }
}

variable "zone_id" {
  default = "Z1037679PWH8BTMNZ3SR"
}

variable "domain" {
  default = "rahuldevops.cloud"
}

variable "ingress"{
  type = list
  default = [
    {
      description = "Allow port 443 from public"
      from_port        = 443
      to_port          = 443
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
    },

    {
      description = "Allow port 80 from public"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
    },

    {
      description = "Allow port 22 from public"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
    }
   ]
}