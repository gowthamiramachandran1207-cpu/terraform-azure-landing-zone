locals {
  env_name = lower(replace(var.environment, "-", ""))
  common_tags = merge(var.tags, {
    environment = var.environment
    location    = var.location
  })
}
