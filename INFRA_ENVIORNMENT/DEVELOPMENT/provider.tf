terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }
   backend "azurerm" {
      resource_group_name  = "noree"
      storage_account_name = "noreesa"
      container_name       = "noreecon1"
      key                  = "noree1terraform.tfstate"
   }
}
provider "azurerm" {
  subscription_id = "49782cb5-b203-4f5b-806c-9eb30192aa29"
   features  { }
}