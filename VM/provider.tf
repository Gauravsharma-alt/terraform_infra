terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.28.0"
    }
  }
backend "azurerm" {
      resource_group_name  = "RG-NORTH"
      storage_account_name = "sanorthh"
      container_name       = "connorth"
      key                  = "vmterraform.tfstate"
  subscription_id = "49782cb5-b203-4f5b-806c-9eb30192aa29"
  }

}

provider "azurerm" {
  features {}
  subscription_id = "49782cb5-b203-4f5b-806c-9eb30192aa29"
}
