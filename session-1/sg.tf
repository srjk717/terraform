resource "aws_security_group" "allow_ALLPORTS" {
  name        = var.sg_name
  description = "Allow TLS inbound traffic and all outbound traffic"
 
  ingress {
    description = "Allow ALL inbound traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.sg_cidr
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.sg_cidr
  }

}