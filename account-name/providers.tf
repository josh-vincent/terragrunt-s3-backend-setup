# ------------------------------------------------------------------------------
# requires AWS SSO profiles to be configured. For stuff in AWS Organisations,
# will need access to root. I have personal-root configured as an SSO profile on my
# local machine.
# ------------------------------------------------------------------------------

provider "aws" {
  profile = var.aws_sso_profile
  region  = var.aws_region
}