locals {
  domain_name   = "ramana3490.online"
  zone_id       = "Z0334118RKRPXJ4WGTZ7"
  instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
  # count.index will not work in locals
}