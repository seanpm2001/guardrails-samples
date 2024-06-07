# Policy Pack
resource "turbot_smart_folder" "pack" {
  title       = "Enforce Lambda functions to restrict public access"
  description = "Ensure that the AWS Lambda function policy attached to functions blocks public access."
  parent      = "tmod:@turbot/turbot#/"
}

# AWS > Lambda > Enabled
resource "turbot_policy_setting" "aws_lambda_enabled" {
  resource = turbot_smart_folder.pack.id
  type     = "tmod:@turbot/aws-lambda#/policy/types/lambdaEnabled"
  value    = "Enabled"
}