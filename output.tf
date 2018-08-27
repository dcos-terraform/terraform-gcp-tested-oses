# Output
output "user" {
  value = "${data.template_file.traditional_os_user.rendered}"
}

# GCP Image Family Name
output "image_family" {
  value = "${data.template_file.image_family.rendered}"
}

# GCP Image Name
output "image_name" {
  value = "${data.template_file.image_name.rendered}"
}

# Main Output
output "os-setup" {
  value = "${data.template_file.os-setup.rendered}"
}
