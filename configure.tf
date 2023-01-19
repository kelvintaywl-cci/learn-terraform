terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    # TODO: replace this accordingly if needed
    organization = "kelvintaywl"

    workspaces {
      # TODO: replace this accordingly if needed
      name = "circleci"
    }
  }

  required_providers {
    pagerduty = {
      source  = "pagerduty/pagerduty"
      version = "2.2.1"
    }
  }
}
