terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.7.2" # ~> means: 3.6.x, only patches allowed, 3.7.x *not* allowed
    }
  }
}
