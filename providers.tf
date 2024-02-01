terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "terraform-github-actions"
    storage_account_name = "terraformgithubpoc"
    container_name       = "tfstatefile"
    key                  = "state"
    use_oidc             = false
  }
}

provider "azurerm" {
  features {}
  use_oidc = false

}
