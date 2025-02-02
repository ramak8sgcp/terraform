locals {
  domain_name   = "ramana3490.online"
  zone_id       = "Z07026951IZYV04HDC3NF"
  instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
  # count.index will not work in locals
}