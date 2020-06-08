/**
 * [![Build Status](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-template-gcp-tested-oses/job/master/badge/icon)](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-template-gcp-tested-oses/job/master/)
 * # Tested DC/OS OSes GCP
 *
 * This is a module that properly configures the DC/OS prerequisites for selected OSes on top of GCP.
 *
 * ## EXAMPLE
 *
 *```hcl
 * module "dcos-tested-gcp-oses" {
 *    source   = "dcos-terraform/tested-oses/gcp"
 *    version  = "~> 0.2.0"
 *    os       = "centos_7.5"
 * }
 *```
 */

locals {
  os_name    = element(split("_", var.os), 0)
  os_version = element(split("_", var.os), 1)

  user         = var.traditional_default_os_user[local.os_name]
  image_family = element(var.os_image_version[var.os], 0)
  image_name   = element(var.os_image_version[var.os], 1)
}
