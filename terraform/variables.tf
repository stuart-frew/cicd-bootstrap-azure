
#
# Azure variables
#
variable "location" {
  type        = string
  description = "The location for the Azure resources"
  default     = "AustraliaEast"
}

variable "subscription_name" {
  type        = string
  description = "The actual subscription name, as opposed to the Id"
}

variable "subscription_id" {
  type        = string
  description = "The subscription Id that is used to interact with Azure, this is for configuration and not running these terraform scripts"
}

variable "tenant_id" {
  type        = string
  description = "The tenant Id, this is for configuration and not running these terraform scripts"
}

#
# Azure DevOps Variables
#
variable "devops_url" {
  type        = string
  description = "The url to the Azure DevOps Organisation"
}
variable "devops_personal_access_token" {
  type        = string
  description = "The token created in the DevOps Organisation to allow the creation of DevOps resources"
  sensitive   = true
}

variable "project_name" {
  type        = string
  description = "The name of the DevOps project to be created"
}

variable "project_description" {
  type = string
}

#
# GitHub variables
#
variable "github_personal_access_token" {
  type        = string
  description = "The access token that is used to create and configure GitHub"
  sensitive   = true
}
variable "github_organisation" {
  type        = string
  description = "The GitHub organisation that will contain the repositories"
}

#
# General
#
variable "prefix" {
  type        = string
  description = "A prefix that will be prepended to a random Id, normally used for a form of Identification"
}

variable "tags" {
  description = "General tags that can be applied to all resources"
  default = {
    "env" = "demo"
    # Add tags as required`
  }
}


