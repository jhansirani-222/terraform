variable "instance_names" {
    default = ["mongodb","redis","mysql","rabbitmq","web","catalogue","user","cart","shipping","payment","dispatch"]
    type = list
  }
variable "zone_id" {
    default = "xyz"
}
variable "domain" {
    default = "jhansidevops.icu"
  
}