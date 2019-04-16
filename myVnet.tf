resource "azurerm_virtual_network" "myterraformnetwork" {
    name                = "user06Vnet"
    address_space       = ["6.0.0.0/16"]
    location            = "koreacentral"
    resource_group_name = "${azurerm_resource_group.myterraformgroup.name}"

    tags {
        environment = "User06 Demo"
    }
}
