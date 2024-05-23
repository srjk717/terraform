# resource "aws_instance" "count" {
#   ami           = local.ami_id # devo-ps-practice in us-east-1
#   instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql" ? "t3.medium" : "t2.micro"
#   count =  10
#   tags = {
#     Name = var.instance_names[count.index]
#   }
# }

# resource "aws_route53_record" "records" {
#   count = 10
#   zone_id = var.zone_id
#   name    = "${var.instance_names[count.index]}.${var.domain}"
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.count[count.index].private_ip]
# }

resource "aws_key_pair" "locals_testing" {
    key_name = "devops-pub"
    public_key = local.public_key
}

resource "aws_instance" "locals_testing_ins" {
    ami           = local.ami_id
    instance_type = local.instance_type
    key_name = aws_key_pair.locals_testing.key_name
}