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

  regional_stamps = [
    {
      region         = "us-west-1"
      name           = "foo"
      min_node_count = 4
      max_node_count = 8
    },
    {
      region         = "us-east-1"
      name           = "bar"
      min_node_count = 4
      max_node_count = 8
    }
  ]
}

module "regional_stamps" {
  source = "./modules/regional-stamp"

  count = length(local.regional_stamps)

  region         = local.regional_stamps[count.index].region
  name           = local.regional_stamps[count.index].name
  min_node_count = local.regional_stamps[count.index].min_node_count
  max_node_count = local.regional_stamps[count.index].max_node_count

}

