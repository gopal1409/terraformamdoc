variable "client_id"{
    description = "Enter Client ID"
}
variable "client_secret"{
    description = "Enter Client_secret"
}
variable "tenant_id"{
    description = "Enter tenant ID"
}

variable "resource_group"{
    default = "RG-2"
}

variable "location"{
    type = "map"
    default = {
        location1 = "eastus"
        location2 = "westus"
    }
}
variable "subnets"{
    type = "list"
    default = ["10.0.1.0/24","10.0.2.0/24"]
}






