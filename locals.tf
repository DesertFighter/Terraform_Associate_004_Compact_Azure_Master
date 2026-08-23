locals {
  local_resource_group_name     = "rg-${var.var_application_name}-${var.var_environment_name}"
  local_resource_group_location = var.var_resource_group_location
  common_tags = {
    project                 = "Terraform Associate 004 Compact Azure Master"
    environment             = var.var_environment_name
    owner                   = var.var_commong_tags_owner
    managed_by              = "Terraform"
    resource_group_tag_name = var.var_commong_tags_name

  }

}
locals {

  common_tags_stg = {
    project                 = "Terraform Associate 004 Compact Azure Master Storage account name"
    environment             = var.var_environment_name
    owner                   = var.var_commong_tags_owner
    managed_by              = "Terraform"
    resource_group_tag_name = var.var_commong_tags_name

  }

}


