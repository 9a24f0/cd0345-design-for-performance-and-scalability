data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

data "aws_iam_policy_document" "lambda_logging" {
  statement {
    effect = "Allow"

    actions = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents",
    ]

    resources = ["arn:aws:logs:*:*:*"]
  }
}

data "archive_file" "zip_the_python_code" {
  type        = "zip"
  source_file = "greet_lambda.py"
  output_path = "lambda.zip"
}

data "aws_lambda_invocation" "lambda_execution" {
  function_name = aws_lambda_function.terraform_lambda_func.function_name  
  input = ""
}