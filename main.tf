terraform {
  required_providers {
    tfe = {
      version = "~> 0.48.0"
    }
  }
}

provider "tfe" {
  organization = "hashicorp-learn-phase-1"
}

resource "tfe_workspace" "foo" {
  name         = "foo"

  vcs_repo {
    identifier = "RahulPanchal0110/tfe_provider_repo"
    branch = "main"
    github_app_installation_id = "ghain-DWZkmKDd8TxMuPn6"
  }
}
