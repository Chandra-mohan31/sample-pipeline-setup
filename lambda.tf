resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_lambda_function" "test_lambda" {
  filename      = "sample-node-app.zip"
  function_name = "sample_node_app"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "exports.index"

  source_code_hash = filebase64sha256("sample-node-app.zip")

  runtime = "nodejs16.x"

  environment {
    variables = {
      env = "dev"
    }
  }
}