# resource "aws_instance" "Terraform_1" {
#   ami           = var.ami_id # devo-ps-practice in us-east-1
#   instance_type = var.instance_type
#   security_groups = [aws_security_group.allow_ALLPORTS.name]
#   tags = var.tags
#   # tags = {
#   #   Name = "Mongodb"
#   #   Environment = "DEV"
#   #   Terraform = "true"
#   #   Project = "Roboshop"
#   #   Component = "Mongodb"
#   # }

# }
