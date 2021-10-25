variable  "azure_subscription_id" {
    type = string
}

variable  "azure_subscription_tenant_id" {
    type = string
}

variable  "service_principal_appid" {
 type = string
}

variable  "service_principal_password" {

type = string

}

variable "vnet_name" {
    description = "Name of the vnet to create"
    type        = string
    default     = "cloud-cb"
  }
  
  variable "resource_group_name" {
    description = "Name of the resource group to be imported."
    type        = string
  }
  
  variable "address_space" {
    type        = list(string)
    description = "The address space that is used by the virtual network."
    default     = ["10.0.0.0/16"]
  }
  
 
  variable "subnet_prefixes" {
    description = "The address prefix to use for the subnet."
    type        = list(string)
    default     = ["10.0.1.0/24"]
  }
  
  variable "subnet_names" {
    description = "A list of public subnets inside the vNet."
    type        = list(string)
    default     = ["subnet1", "subnet2", "subnet3"]
  }

  variable "nsg_ids" {
  description = "A map of subnet name to Network Security Group IDs"
  type        = map(string)

  default = {
  }
}

variable "route_tables_ids" {
  description = "A map of subnet name to Route table ids"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "The tags to associate with your network and subnets."
  type        = map(string)

  default = {
    ENV = "test"
  }
}

variable "vnet_location" {
  description = "The location of the vnet to create. Defaults to the location of the resource group."
  type        = string
  default     = null
}