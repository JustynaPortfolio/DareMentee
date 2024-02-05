provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "terra_group" {
  name     = "terra-resources"
  location = "West Europe"
}

resource "azurerm_sql_server" "first_project_server" {
  name                         = "dareitprojectsqlserver"
  resource_group_name          = azurerm_resource_group.terra_group.name
  location                     = azurerm_resource_group.terra_group.location
  version                      = "12.0"
  administrator_login          = "justynaadmin"
  administrator_login_password = "Diuna123!"

  
}

resource "azurerm_storage_account" "project_storage_account" {
  name                     = "justynastorageaccount"
  resource_group_name      = azurerm_resource_group.terra_group.name
  location                 = azurerm_resource_group.terra_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "bronze" {
  name                  = "bronze"
  storage_account_name  = azurerm_storage_account.project_storage_account.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "silver" {
  name                  = "silver"
  storage_account_name  = azurerm_storage_account.project_storage_account.name
  container_access_type = "private"
}

resource "azurerm_sql_database" "justynadb" {
  name                = "myprojectdb"
  resource_group_name = azurerm_resource_group.terra_group.name
  location            = azurerm_resource_group.terra_group.location
  server_name         = azurerm_sql_server.first_project_server.name

   
  lifecycle {
    prevent_destroy = true
  }
}
