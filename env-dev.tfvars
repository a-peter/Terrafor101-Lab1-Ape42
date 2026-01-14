environment_name = "dev"
instance_count = 5
enabled = true
regions = ["us-east-1", "us-west-2"]
region_instance_count = {
  "us-east-1" = 4
  "us-west-2" = 5
}
region_set = ["us-east-1", "us-west-2", "us-east-1"]
sku_settings = {
  kind = "D"
  tier = "business"
}