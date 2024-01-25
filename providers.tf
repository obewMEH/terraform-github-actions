terraform {
  required_version = ">=1"

  backend "azurerm" {
    resource_group_name  = "terraform-github-actions"
    storage_account_name = "terraformgithubpoc"
    container_name       = "tfstatefile"
    key                  = "state"
    use_oidc             = true
  }

}

provider "azurerm" {
  features {}
  use_oidc = true

}
