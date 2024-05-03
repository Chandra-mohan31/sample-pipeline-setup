package test

import (
	"github.com/gruntwork-io/terratest/modules/terraform"
	"testing"
)

func TestBasic(t *testing.T) {
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../examples/basic",
	})

	terraform.InitAndPlan(t, terraformOptions)
	defer terraform.Destroy(t, terraformOptions)

	terraform.Apply(t, terraformOptions)

}
