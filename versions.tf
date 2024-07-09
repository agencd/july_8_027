terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "027-spring-cloud"

    workspaces {
      prefix = "client-"
    }
  }
}

