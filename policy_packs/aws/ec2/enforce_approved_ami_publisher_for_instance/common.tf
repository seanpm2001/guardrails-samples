# Policy Pack
resource "turbot_smart_folder" "pack" {
  title       = "Enforce AWS EC2 instances to use approved AMIs and/or publisher accounts"
  description = "Stop/Terminate EC2 instances that use unapproved AMIs and/or publisher accounts"
  parent      = "tmod:@turbot/turbot#/"
}

# AWS > EC2 > Enabled
resource "turbot_policy_setting" "aws_ec2_enabled" {
  resource = turbot_smart_folder.pack.id
  type     = "tmod:@turbot/aws-ec2#/policy/types/ec2Enabled"
  value    = "Enabled"
}