output "application_name" {
  value = var.application_name
}
output "environment_name" {
  value = var.environment_name
}
output "environment_prefix" {
  value = local.environment_prefix
}
output "suffix" {
  value = random_string.suffix.result
}
output "api_key" {
  value     = var.api_key
  sensitive = true
}
output "instance_count" {
  value = var.instance_count
}
output "enabled" {
  value = var.enabled
}
output "regions" {
  value = var.regions
}
output "region_instance_count" {
  value = var.region_instance_count
}
output "primary_region" {
  value = element(var.regions, 0)
}
output "primary_region_instance_count" {
  # value = lookup(var.region_instance_count, var.regions[0], 0)
  value = var.region_instance_count[var.regions[0]]
}
output "regionA" {
  value = module.regional_stamps["foo"].name
}
output "regionB" {
  value = module.regional_stamps["bar"].name
}
output "all_regions" {
  value = [for region in module.regional_stamps: "${region.name} - ${region.random_string}"]
}
