provider "aws" {
  region = var.aws_region
}

locals {
  availability_zones = ["${var.aws_region}a", "${var.aws_region}b"]
}
