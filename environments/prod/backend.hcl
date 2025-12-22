bucket         = "terraform-states-gogs"
key            = "environments/prod/terraform.tfstate"
region         = "us-east-1"
dynamodb_table = "gogs-locks"
encrypt        = true
