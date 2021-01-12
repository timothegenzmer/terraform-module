provider "aws" {
  version = ">= 2.70"
  region  = "eu-central-1"
}

module "test" {
  source   = "../../"
  password = "testtesttest"
}
