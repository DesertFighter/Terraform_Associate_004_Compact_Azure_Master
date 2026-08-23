variable "subscription_id" {
  description = "subscription id"
  type        = string

}
variable "var_application_name" {
  description = "Name of Application name "
  type        = string
  default     = "tf-associate"

}
variable "var_environment_name" {
  description = "Name of environment name "
  type        = string
  default     = "dev"
  validation {
    condition     = contains(["dev", "test", "prod"], lower(var.var_environment_name))
    error_message = "environment name should be either dev, test or prod"
  }
}
variable "var_resource_group_location" {
  description = "Location of resource group "
  type        = string
  default     = "east us"
}
variable "var_commong_tags_owner" {
  description = "Tag Owner Value"
  type        = string
  default     = "Data Engineer Owner"

}

variable "var_commong_tags_name" {
  description = "Resourec group  Tag name"
  type        = string
  default     = "Resourec group  Tag name"

}
variable "var_containers_name" {
  description = "Containers name within Resource group and storage account"
  type        = set(string)
  default     = ["bronze", "silver", "gold"]

}
