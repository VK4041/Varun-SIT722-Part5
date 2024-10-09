#Creating Resource Group for Cloud Native DevOps Project on Azure

resource "azurerm_resource_group" "cloud_native_project" {
  name     = var.app_name
  location = var.location
}
