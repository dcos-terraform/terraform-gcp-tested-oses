# Output
output "user" {
  description = "user"
  value       = "${local.user}"
}

# GCP Image Family Name
output "image_family" {
  description = "image family"
  value       = "${local.image_family}"
}

# GCP Image Name
output "image_name" {
  description = "image name"
  value       = "${local.image_name}"
}

# Main Output
output "os-setup" {
  description = "os-setup"
  value       = "${local.script}"
}
