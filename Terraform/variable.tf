variable "resource_group_name" {
    description = "The name of the resource"
    type        = string
    default = "rg-netflix"
 
}

variable "location" {
    description = "The Azure region where the resources will be created."
    type        = string
    default = "canadacentral"
}

variable "asp_name" {
    type        = string
    default    = "asp-netflix"
}
variable "webapp" {
    type        = string
    default     = "webapp-netflix1986"
}