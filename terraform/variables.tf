variable "environment" {
  type        = string
  description = "Environment name: dev, test or prod"
}

variable "location" {
  type    = string
  default = "uksouth"
}

variable "vm_size" {
  type    = string
  default = "Standard_B2s"
}

variable "default_tags" {
  type = map(string)
  default = {
    environment = "dev"
    owner="platform-team"
    cost_centre="CC-4410"
    data_classification = "confidential"
  }
}
