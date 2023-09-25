
################################################################################
# Source Path
################################################################################

terraform {
  #source = "git@github.com:manikantatholeti/mani-terragruntzone.git//terraform-templates/jenkins/"
  source = "../../../terraform-templates/jenkins"
}
generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  backend "s3" {
    bucket         = "vtsl-automation-mgmt"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "vtsl-automation-table-mgmt"
  }
}
EOF
}


################################################################################
# Dependancy Path (If Any)
################################################################################



################################################################################
# Inputs
################################################################################
inputs = {
  iam_role_name = "mani-iamrole"
  iam_role_profile = "mani-iamprofile"
  iam_role_policy = "mani-iampolicy"
}