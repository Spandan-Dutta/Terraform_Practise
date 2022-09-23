variable "access_key" {
    type = string
    description = "This is the access key for this aws account"
    sensitive = true
    default = ""
}

variable "secret_key" {
    type = string
    description = "This is the secret key for this aws account"
    sensitive = true
    default = ""
}

variable "region" {
    type = string
    description = "This is the region where resources will be deployed"
    default = "ap-south-1"
}
