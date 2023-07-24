# Copyright (c) HashiCorp, Inc.

data "terraform_remote_state" "aws-example-network" {
  backend = "remote"
  config = {
    organization = "waypoints"
    workspaces = {
      name = "aws-example-network"
    }
  }
}

data "terraform_remote_state" "aws-example-microservice-infra" {
  backend = "remote"
  config = {
    organization = "waypoints"
    workspaces = {
      name = "aws-example-microservice-infra"
    }
  }
}

