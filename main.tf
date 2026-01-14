// Local variables
locals {
  min_nodes = 5
  max_nodes = 9
}

# Random String for suffix generation
resource "random_string" "suffix" {
  length  = 6
  upper = false
  special = false
}

/*
  prefix for the environment
*/
locals {
  environment_prefix = "${var.application_name}-${var.environment_name}-${random_string.suffix.result}"
}


