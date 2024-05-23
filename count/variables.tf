variable "instance_names" {
  type    = list
  default = ["mongodb", "cart", "catalogue", "user", "redis", "shipping", "web", "mysql", "rabbitmq", "payment" ]
}

variable "ami_id" {
  # type    = string
  default = "ami-0f3c7d07486cad139"
}

variable "zone_id" {
  default = "Z1037679PWH8BTMNZ3SR"
}

variable "domain" {
  default = "rahuldevops.cloud"
}

# variable "sg_name" {
#    default = "allow_ALLPORTS"
# }


# variable "sg_cidr" {
#     type    = list
#    default = ["0.0.0.0/0"]
# }

# variable "tags" {
#     type    =  map
#    default ={
#     Name = "Mongodb"
#     Environment = "DEV"
#     Terraform = "true"
#     Project = "Roboshop"
#     Component = "Mongodb"
#    }
# }