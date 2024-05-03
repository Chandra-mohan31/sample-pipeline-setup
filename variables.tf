variable "function_name" {
  type = string
  description = "lambda function's name"
  default = "sample_node_app-cm"
}

variable "iam_role_for_lambda" {
  type = string
  description = "iam role for lambda function"
  default = "iam_for_lambda-cm"
}

variable "env" {
  type = string
  description = "env of execution"
  default = "dev"
}

variable "terra-test" {
  type = bool
  default = false
  description = "are we running terra-test"
}