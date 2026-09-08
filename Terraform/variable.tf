variable "resource_group_name" {
    description = "The name of the resource group where the resources will be created."
    type        = string
    default = "nfrg"
 
}

variable "location" {
    description = "The Azure region where the resources will be created."
    type        = string
    default = "canadacentral"
}

variable "asp_name" {
    type        = string
    default    = "aspnetflix"
}
variable "webapp" {
    type        = string
    default     = "nfapp"
}