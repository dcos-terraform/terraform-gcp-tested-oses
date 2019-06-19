# Standard Default OS Users
variable "traditional_default_os_user" {
  description = "Standard Default OS Users"
  type        = "map"

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
  type        = "map"

  # GCP Image Schema # Image project  /   image name
  #                                  V                  V
  # mayor version only should match latest updated from upstream and stable
  default = {
    "centos_7.2"      = ["centos-cloud", "centos-7-v20170523"]
    "centos_7.3"      = ["centos-cloud", "centos-7-v20170719"]
    "centos_7.5"      = ["centos-cloud", "centos-7-v20181011"]
    "centos_7"        = ["centos-cloud", "centos-7"]
    "coreos_stable"   = ["coreos-cloud", "coreos-stable"]
    "coreos_1576.5.0" = ["coreos-cloud", "coreos-stable-1576-5-0-v20180105"]
    "coreos_1855.5.0" = ["coreos-cloud", "coreos-stable-1855-5-0-v20181024"]
    "coreos_2023.5.0" = ["coreos-cloud", "coreos-stable-2023-5-0-v20190312"]
    "rhel_7.3"        = ["rhel-cloud", "rhel-7-v20170523"]
    "rhel_7"          = ["rhel-cloud", "rhel-7"]
    ""                = ["", ""]
  }
}

# OS name_version
variable "os" {
  description = "Operating system to use"
  default     = "centos_7.5"
}
