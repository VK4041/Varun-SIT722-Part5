#Creating Resource Group for Cloud Native DevOps Project on Azure

resource "azurerm_resource_group" "res_grp" {
  name     = var.app_name
  location = var.location
}
