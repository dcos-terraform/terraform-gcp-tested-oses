# Cloud Image Instruction
data "template_file" "os-setup" {
#  count    = "${var.enabled == "true" ? 1 : 0 }"
  template = "${file("${path.module}/platform/cloud/${var.provider}/${var.os}/setup.sh")}"
}
