
################################################################################
# Source Path
################################################################################

terraform {
  source = "git@github.com:manikantatholeti/mani-terragruntzone.git//terraform-templates/jenkins"
  #source = "../../../terraform-templates/tde//"
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