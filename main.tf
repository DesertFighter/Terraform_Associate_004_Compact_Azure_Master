// Phase 1 Foundation
// Create Resource Group
resource "azurerm_resource_group" "resource_group_name" {
  name     = local.local_resource_group_name
  location = var.var_resource_group_location
  tags     = local.common_tags
}

// create storage account name
resource "random_string" "suffix_storage_account" {
  upper   = false
  lower   = true
  special = false
  numeric = false
  length  = 6

}

// Create storage account name within resource group

resource "azurerm_storage_account" "storage_account_name" {
  name                     = random_string.suffix_storage_account.result
  location                 = local.local_resource_group_location
  resource_group_name      = local.local_resource_group_name
  account_tier             = "Standard"
  account_replication_type = "LRS"
  is_hns_enabled           = true
  min_tls_version          = "TLS1_2"
  tags                     = local.common_tags_stg

}

// create containers with storage account
resource "azurerm_storage_container" "container_names" {
  for_each              = var.var_containers_name
  name                  = each.value
  container_access_type = "private"
  storage_account_id    = azurerm_storage_account.storage_account_name.id


}
