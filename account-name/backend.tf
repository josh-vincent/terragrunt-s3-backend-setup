# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-random-uuid-to-make-unique-000"
    dynamodb_table = "my-lock-table"
    encrypt        = true
    key            = "account-name/terraform.tfstate"
    region         = "ap-southeast-2"
  }
}
