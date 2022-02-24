
terraform {
    backend "azurerm" {
            resource_group_name  = "vmssdemo"
    storage_account_name = "ngkstor4517001"
    container_name       = "tfbackend"
    access_key                  = "VBh/5Fnf8pigJubHqgsOd3/p4Fwup1WCQxbYZ7z+jZEsGANU7zqeyVaDNzI9iLpW9HWCXilxsNHd+AStDFCscQ=="
    key = "terraform.tfstate"
      
    }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  
  subscription_id = "35a0c0cf-a662-4688-980d-d532b22f93c0"
  client_id       = "950be8fb-2531-4aea-b44a-54a081213f46"
  client_secret   = "g_77Q~TZ.jcXuHXR5lF2.awWMpdydxSOHhDGc"
  tenant_id       = "6dfb77b4-c9e1-4f45-ba05-02c1592c6232" 
}
resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "West Europe"
}