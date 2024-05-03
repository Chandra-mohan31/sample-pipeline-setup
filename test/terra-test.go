package test

import (
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
	"testing"
)

func TerraTestFunc(t *testing.T) {
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../",
	})

	terraform.InitAndPlan(t, terraformOptions)
	defer terraform.Destroy(t, terraformOptions)

	terraform.Apply(t, terraformOptions)

}
