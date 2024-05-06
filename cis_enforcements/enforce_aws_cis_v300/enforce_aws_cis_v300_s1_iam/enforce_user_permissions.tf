# AWS > IAM > User > Policy Attachments > Approved
resource "turbot_policy_setting" "aws_iam_user_policy_attachments_approved" {
  resource = turbot_smart_folder.aws_cis_v300_s1_iam.id
  type     = "tmod:@turbot/aws-iam#/policy/types/userPolicyAttachmentsApproved"
  value    = "Check: Approved"
  # value    = "Enforce: Delete unapproved"
  note     = "AWS CIS v3.0.0 - Controls: 1.15"
}

# AWS > IAM > User > Policy Attachments > Approved > Rules
resource "turbot_policy_setting" "aws_iam_user_policy_attachments_approved_rules" {
  resource = turbot_smart_folder.aws_cis_v300_s1_iam.id
  type     = "tmod:@turbot/aws-iam#/policy/types/userPolicyAttachmentsApprovedRules"
  value    = "REJECT *"
  note     = "AWS CIS v3.0.0 - Controls: 1.15"
}

# AWS > IAM > User > Inline Policy > Approved
resource "turbot_policy_setting" "aws_iam_user_inline_policy_approved" {
  resource = turbot_smart_folder.aws_cis_v300_s1_iam.id
  type     = "tmod:@turbot/aws-iam#/policy/types/userInlinePolicyApproved"
  value    = "Check: Approved"
  # value    = "Enforce: Delete unapproved"
  # value    = "Enforce: Delete unapproved if new"
  note     = "AWS CIS v3.0.0 - Controls: 1.15"
}

# AWS > IAM > User > Inline Policy > Approved > Usage
resource "turbot_policy_setting" "aws_iam_user_inline_policy_approved_usage" {
  resource = turbot_smart_folder.aws_cis_v300_s1_iam.id
  type     = "tmod:@turbot/aws-iam#/policy/types/userInlinePolicyApprovedUsage"
  value    = "Not approved"
  note     = "AWS CIS v3.0.0 - Controls: 1.15"
}



