module "lambda_fn" {
  source              = "../../"
  env                 = "terratest"
  iam_role_for_lambda = "iam_role_for_lambda-terratest"
  function_name       = "sample-node-app-terratest"
}