resource "azurerm_resource_group" "rg" {
  name     = "rg_terraform_sandbox"
  location = "westeurope"
}
resource "azurerm_storage_account" "storage" {
  resource_group_name      = azurerm_resource_group.rg.name
  name                     = "stgcombitstftest005"
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
    owner   = "TDB"
    project = "Terraform-test"
  }
}
