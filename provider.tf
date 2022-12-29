terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.37.0"
    }
  }
   backend "remote" {
   organization  = "trfrm_cloud"

   workspaces {
     name = "terraform_backend"
     }
   }

}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {
  }
}

