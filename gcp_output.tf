# Output
output "user" {
  value = "${data.template_file.traditional_os_user.rendered}"
}

# GCP Image Family Name
output "gcp_image_family" {
  value = "${data.template_file.gcp_image_family.rendered}"
}

# GCP Image Name
output "gcp_image_name" {
  value = "${data.template_file.gcp_image_name.rendered}"
}
