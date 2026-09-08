terraform  {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">3.1"
    }
  }
  

}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "nfrg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_service_plan" "nfwebplan" {
  name                = var.asp_name
  location            = azurerm_resource_group.nfrg.location
  resource_group_name = azurerm_resource_group.nfrg.name
  os_type             = "Windows"
  sku_name            = "B1"
  
}

resource "azurerm_windows_web_app" "nfwebapp" {
  name                = var.webapp
  location            = azurerm_resource_group.nfrg.location
  resource_group_name = azurerm_resource_group.nfrg.name
  service_plan_id     = azurerm_service_plan.nfwebplan.id

  site_config {
    always_on = false
  }

}