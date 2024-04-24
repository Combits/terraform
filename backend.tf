terraform {
  required_version = ">=1.6.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.1"
    }
  }
  cloud {
    organization = "SandBox_Combits"

    workspaces {
      name = "Combits_Test"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
  client_id                  = "9b05d1f4-bee8-4933-9601-0d17a58fcf32"
  client_secret              = var.client_secret
  tenant_id                  = "16db2d1c-affd-4e45-a1ba-9265d34ce935"
  subscription_id            = "6eec740d-28f5-483c-a7fd-fbc45d1699cd"
}
