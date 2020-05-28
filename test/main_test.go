package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	test_structure "github.com/gruntwork-io/terratest/modules/test-structure"
	"github.com/stretchr/testify/assert"
)

func TestTerraformGcpRhel(t *testing.T) {
	t.Parallel()

	exampleDir := test_structure.CopyTerraformFolderToTemp(t, "../", "./")

	// Configure Terraform setting path to Terraform code, bucket name, and instance name.
	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: exampleDir,
		Vars: map[string]interface{}{
			"os": "rhel_7",
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)

	// Run `terraform output` to get the value of some of the output variables
	user := terraform.Output(t, terraformOptions, "user")
	imageName := terraform.Output(t, terraformOptions, "image_name")
	imageFamily := terraform.Output(t, terraformOptions, "image_family")

	assert.Equal(t, "ec2-user", user)
	assert.Equal(t, "rhel-7", imageName)
	assert.Equal(t, "rhel-cloud", imageFamily)
}

func TestTerraformGcpCentos(t *testing.T) {
	t.Parallel()

	exampleDir := test_structure.CopyTerraformFolderToTemp(t, "../", "./")

	// Configure Terraform setting path to Terraform code, bucket name, and instance name.
	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: exampleDir,
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)

	// Run `terraform output` to get the value of some of the output variables
	user := terraform.Output(t, terraformOptions, "user")
	imageName := terraform.Output(t, terraformOptions, "image_name")
	imageFamily := terraform.Output(t, terraformOptions, "image_family")

	assert.Equal(t, "centos", user)
	assert.Equal(t, "centos-7", imageName)
	assert.Equal(t, "centos-cloud", imageFamily)
}
