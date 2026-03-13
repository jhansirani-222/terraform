variable "instance_names" {
    default = ["mongodb","redis","mysql","rabbitmq","web","catalogue","user","cart","shipping","payment","dispatch"]
    type = list
  }