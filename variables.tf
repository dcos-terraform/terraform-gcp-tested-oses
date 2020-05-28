# Standard Default OS Users
variable "traditional_default_os_user" {
  description = "Standard Default OS Users"
  type        = map(string)

  default = {
    coreos = "core"
    centos = "centos"
    ubuntu = "ubuntu"
    rhel   = "ec2-user"
  }
}

# GCP Images
variable "os_image_version" {
  description = "GCP Images"
  type        = map(list(string))

  # GCP Image Schema # Image project  /   image name
  #                                  V                  V
  # mayor version only should match latest updated from upstream and stable
  default = {
    "centos_7" = ["centos-cloud", "centos-7"]
    "rhel_7"   = ["rhel-cloud", "rhel-7"]
  }
}

# OS name_version
variable "os" {
  description = "Operating system to use"
  default     = "centos_7"
}
