resource "aws_instance" "conditions" {
  ami           = var.ami_id # devo-ps-practice in us-east-1
  instance_type = var.instance_name == "mongodb" ? "t3.medium" : "t2.micro"
 
 
 
}