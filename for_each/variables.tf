variable "instance" {
  type        = map 
  default     = {
    mysql = "t3.small"
    backend = "t3.micro"
    frontend  = "t3.micro"
  }
}


variable "domain_name" {
  default = "ramana3490.online"
}

variable "zone_id" {
  default = "Z07026951IZYV04HDC3NF"
}

