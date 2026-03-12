variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "from_port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}