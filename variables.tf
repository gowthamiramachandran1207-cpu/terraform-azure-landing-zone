variable "location" {
  description = "Azure region for the landing zone resources."
  type        = string
  default     = "eastus"
}

variable "environment" {
  description = "Environment name used in resource names and tags."
  type        = string
  default     = "dev"
}

variable "tags" {
  description = "Common tags applied to all Azure resources."
  type        = map(string)
  default = {
    managed_by = "terraform"
    owner      = "platform-team"
    workload   = "landing-zone"
  }
}

variable "resource_groups" {
  description = "Dictionary of resource groups to create for the Azure landing zone."
  type = map(object({
    location = string
  }))
  default = {
    network = {
      location = "eastus"
    }
    shared = {
      location = "eastus"
    }
    app = {
      location = "eastus"
    }
  }
}

variable "vnet_address_space" {
  description = "Address space used for the landing zone virtual network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_prefixes" {
  description = "Subnet address prefixes inside the VNet."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}
