resource "aws_instance" "example" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"

  tags = {
    Name = "Hello Terraform"
  }
}

#sgp block

resource "aws_security_group" "roboshop-all" {
     name        = "instance_sg"
     description = "Allow  all inbound traffic"

     ingress {
         from_port   = 0
         to_port     = 0
         protocol    = "tcp"
         cidr_blocks = ["0.0.0.0/0"]
         description = "all from Internet"
  } 
     egress {
         from_port   = 0
         to_port     = 0
         protocol    = "-1" # Semantically equivalent to 'all'
         cidr_blocks = ["0.0.0.0/0"]
         description = "Allow all egress traffic"
  }

     tags = {
         Name = "instance-sg"
  }
}