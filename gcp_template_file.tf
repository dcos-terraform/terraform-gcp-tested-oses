## GCP Data Templates
#

data "template_file" "traditional_os_user" {
  count    = "${var.enabled == "true" ? 1 : 0 }"
  template = "$${aws_user_result}"

  vars {
    aws_user_result = "${lookup(var.traditional_default_os_user, element(split("_",var.os),0))}"
  }
}

data "template_file" "gcp_image_family" {
  count    = "${var.enabled == "true" ? 1 : 0 }"
  template = "$${result}"

  vars {
    result = "${element(var.gcp_os_image_version[var.os], 0)}"
  }
}

data "template_file" "gcp_image_name" {
  count    = "${var.enabled == "true" ? 1 : 0 }"
  template = "$${result}"

  vars {
    result = "${element(var.gcp_os_image_version[var.os], 1)}"
  }
}
