output "output_subscription_id" {
  value = var.subscription_id

}
output "output_resource_group_name" {
  value = azurerm_resource_group.resource_group_name.name

}
output "output_resource_group_location" {
  value = azurerm_resource_group.resource_group_name.location

}
output "output_resource_group_tags" {
  value = local.common_tags

}
