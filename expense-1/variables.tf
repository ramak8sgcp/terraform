variable "instance_names" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]
  description = "description"
}


variable "domain_name" {
  default = "ramana3490.online"
}

variable "zone_id" {
  default = "Z0334118RKRPXJ4WGTZ7"
}
