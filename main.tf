resource "azurerm_resource_group" "rg" {
    name = "${var.resource_group}"
}
resource "azure_virtual_network" "vnet"{
    name = "TF-virtualnetwork1"
    location = "${azure_resource_group.rg.location}"
    resource_group_name = "${azure_resource_group.rg.name}"
    address_space = ["10.0.0.0/16"]
    dns_servers = ["10.0.0.4","10.0.0.5"]

    subnet {
        name = "subnet1"
        address_prefix = "${var.subnet[0]}"
    }
    subnet {
        name = "subnet2"
        address_prefix = "${var.subnet[1]}"
    }
}