resource "aws_instance" "example" {
  count= length(var.instance_names)
  ami           = "ami-0b4f379183e5706b9"
  instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql" || var.instance_names[count.index] == "shipping" ? "t3.small" : "t2.micro" 
    #vpc_security_group_ids = ["aws_security_group.roboshop-all.id"]

  tags = {
    Name= var.instance_names[count.index]
  }
}

resource "aws_route53_record" "www" {
  count = length(var.instance_names)
  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.${var.domain}"
  type    = "A"
  ttl     = 1
  records = [var.instance_names[count.index] == "web" ? aws_instance.example[count.index].public_ip : aws_instance.example[count.index].private_ip]
}
#aws_instance.example[count.index].public_ip is output of that
#locals are just like variables but they have capabilities like storing functions and expressions