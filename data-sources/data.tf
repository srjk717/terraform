data "aws_ami" "ami_id" {
  most_recent = true
  owners = ["amazon"]
  
filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*.0-x86_64-gp2"]
  }
}

data "aws_vpc" "default" {
  default = true
}

# output "vpc_info" {
#   value = data.aws_vpc.default
# }

