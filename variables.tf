variable "resource_group_name" {
  type        = string
  description = "Name of the Azure Resource Group."
  default     = "my-rg"
}

variable "location" {
  type        = string
  description = "Azure region for resources."
  default     = "East US"
}

variable "vnet_name" {
  type        = string
  description = "Name of the Virtual Network."
  default     = "my-vnet"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space for the Virtual Network."
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  type        = string
  description = "Name of the Subnet."
  default     = "my-subnet"
}

variable "subnet_address_prefixes" {
  type        = list(string)
  description = "Address prefixes for the Subnet."
  default     = ["10.0.1.0/24"]
}

variable "nsg_name" {
  type        = string
  description = "Name of the Network Security Group."
  default     = "my-nsg"
}

variable "lb_public_ip_name" {
  type        = string
  description = "Name of the Public IP for the Load Balancer."
  default     = "lb-public-ip"
}

variable "lb_name" {
  type        = string
  description = "Name of the Load Balancer."
  default     = "my-lb"
}

variable "lb_backend_name" {
  type        = string
  description = "Name of the Load Balancer Backend Pool."
  default     = "lb-backend"
}

variable "lb_probe_name" {
  type        = string
  description = "Name of the Load Balancer Health Probe."
  default     = "http-probe"
}

variable "lb_rule_name" {
  type        = string
  description = "Name of the Load Balancer Rule."
  default     = "http-rule"
}

variable "lb_nat_rule_name" {
  type        = string
  description = "Name of the Load Balancer NAT Rule for SSH."
  default     = "ssh-nat"
}

variable "avset_name" {
  type        = string
  description = "Name of the Availability Set."
  default     = "my-avset"
}

variable "nic_name" {
  type        = string
  description = "Name of the Network Interface."
  default     = "my-nic"
}

variable "vm_name" {
  type        = string
  description = "Name of the Virtual Machine."
  default     = "my-vm"
}

variable "vm_size" {
  type        = string
  description = "Size of the Virtual Machine."
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  type        = string
  description = "Admin username for the VM."
  default     = "adminuser"
}

variable "admin_password" {
  type        = string
  description = "Admin password for the VM."
  sensitive   = true
  default     = "Password1234!" # Use SSH keys in production
}