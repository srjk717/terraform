resource "aws_instance" "count" {
  ami           = var.ami_id # devo-ps-practice in us-east-1
  instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql" ? "t3.medium" : "t2.micro"
  count =  10
  tags = {
    Name = var.instance_names[count.index]
  }
}

resource "aws_route53_record" "records" {
  count = 10
  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.${var.domain}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.count[count.index].private_ip]
}