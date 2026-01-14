environment_name = "prod"
instance_count = 7
enabled = true
regions = ["us-east-1", "us-west-2", "us-west-1"]
region_instance_count = {
  "us-east-1" = 5
  "us-west-2" = 5
  "us-west-1" = 7
}
region_set = ["us-east-1", "us-west-2", "us-east-1"]
sku_settings = {
  kind = "D"
  tier = "business"
}