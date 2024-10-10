# Set up cloud vendor i.e., Azure's Configuration

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.71.0"
    }
  }

}

provider "azurerm" {
  features {}

  skip_provider_registration = true
  
  subscription_id = "5f098897-a23a-4b9a-8b12-6634e6722fd8"
  client_id = "8c785aaf-3027-47ad-8d09-aec8365fa712"
  tenant_id = "2625129d-99a2-4df5-988e-5c5d07e7d0fb"
}
