[![Build Status](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-template-gcp-tested-oses/job/master/badge/icon)](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-template-gcp-tested-oses/job/master/)
# Tested DC/OS OSes GCP

This is a module that properly configures the DC/OS prerequisites for selected OSes on top of GCP.

## EXAMPLE

```hcl
module "dcos-tested-gcp-oses" {
   source   = "dcos-terraform/tested-oses/gcp"
   version  = "~> 0.2.0"
   os       = "centos_7.5"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| os | Operating system to use | string | `"centos_7.5"` | no |
| os\_image\_version | GCP Images | map | `<map>` | no |
| traditional\_default\_os\_user | Standard Default OS Users | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| image\_family | GCP Image Family Name |
| image\_name | GCP Image Name |
| os-setup | os-setup |
| user | User |

