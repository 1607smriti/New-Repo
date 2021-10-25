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
    default     = "acctvnet"
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
