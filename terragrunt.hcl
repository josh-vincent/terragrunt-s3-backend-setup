# stage/terragrunt.hcl
remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    #this is the name of the s3 Bucket where your state will be stored
    bucket = "my-terraform-state-random-uuid-to-make-unique-000"

    key = "${path_relative_to_include()}/terraform.tfstate"
    region         = "ap-southeast-2"
    encrypt        = true
    dynamodb_table = "my-lock-table"
  }
}
