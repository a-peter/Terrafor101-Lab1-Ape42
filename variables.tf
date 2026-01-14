variable "application_name" {
  type = string

  validation {
    condition     = length(var.application_name) >= 3 && length(var.application_name) <= 10
    error_message = "App name must be between 3 and 10 characters"
  }
}
variable "environment_name" {
  type = string
}
variable "api_key" {
  type = string
   sensitive = true
}
variable "instance_count" {
  type = number

  validation {
    condition = var.instance_count >= local.min_nodes && var.instance_count <= local.max_nodes && var.instance_count % 2 == 1
    error_message = "Must be between 5 and 9 and an odd number"
  }
}
variable "enabled" {
  type = bool
}
variable "regions" {
  type = list(string)
}
variable "region_instance_count" {
  type = map(string)
}
variable "region_set" {
  type = set(string)
}
variable "sku_settings" {
  type = object({
    kind = string
    tier = string
  })
}