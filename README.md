# Tested DC/OS OSes GCP

This is a module that properly configures the DC/OS prerequisites for selected OSes on top of GCP.

## EXAMPLE

```hcl
module "dcos-tested-gcp-oses" {
   source   = "./modules/dcos-tested-gcp-oses"
   os       = "${var.os}"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| gcp_os_image_version | GCP Images | map | `<map>` | no |
| os |  | string | - | yes |
| provider |  | string | `gcp` | no |
| traditional_default_os_user | Standard Default OS Users | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| gcp_image_family |  |
| gcp_image_name |  |
| os-setup | Main Output |
| user | Output |
