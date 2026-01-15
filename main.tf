// Local variables
locals {
  min_nodes = 5
  max_nodes = 9
}

# Random String for suffix generation
resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}

/*
  prefix for the environment based on application name and environment name.
  This is used to create a unique identifier for resources in different environments.
*/
locals {
  environment_prefix = "${var.application_name}-${var.environment_name}-${random_string.suffix.result}"

  regional_stamps = {
    "foo" = {
      region         = "us-west-1"
      min_node_count = 4
      max_node_count = 8
    },
    "bar" = {
      region         = "us-east-1"
      min_node_count = 4
      max_node_count = 8
    }
  }
}

module "regional_stamps" {
  source = "./modules/regional-stamp"

  for_each = local.regional_stamps

  name           = each.key
  region         = each.value.region
  min_node_count = each.value.min_node_count
  max_node_count = each.value.max_node_count

}

