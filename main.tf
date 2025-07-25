# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "Terraform_RG"
  location = "Eastus"
  tags = {
    environment = "dev"
    source = "terraform"
    owner = "yogi"
  }
} 