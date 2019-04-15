resource "azurerm_virtual_machine" "myterraformvm" {
    name                  = "myVM"
    location              = "koreacentral"
    resource_group_name   = "${azurerm_resource_group.myterraformgroup.name}"
    network_interface_ids = ["${azurerm_network_interface.myterraformnic.id}"]
    vm_size               = "Standard_DS1_v2"

    storage_os_disk {
        name              = "myOsDisk"
        caching           = "ReadWrite"
        create_option     = "FromImage"
        managed_disk_type = "Premium_LRS"
    }

    storage_image_reference {
        publisher = "Canonical"
        offer     = "UbuntuServer"
        sku       = "16.04.0-LTS"
        version   = "latest"
    }
	os_profile {
        computer_name  = "user06vm"
        admin_username = "azureuser"
        admin_password = "***************"
    }

	os_profile_linux_config {
        disable_password_authentication = true

        ssh_keys {
            path     = "/home/azureuser/.ssh/authorized_keys"
            key_data = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC4dmjRHo+Ay6NdPA3xC8RYP3YQl8YmIJvic2HUejfoyjP9FwxcI+IVPvKJdLqDjDpXBx4DOdedVv1jAZ/bomIvz6RaYcTVeR5Hg+7t2sg4Zf5noAmXMsWTqToVxoFsRyBY4T/qgI0sHoEUOKVI7aNX+WimmX8Dzatxei8BVBnnxHTfJoPMV3/rXZYL/2ubqpcIQ4jWL268Rx67tlOmpH+tTAKPIzGDX1fT2xliAO5Y4ovuT8SSSlLZ4WulyLIHSYJ4c9ZlHbcvDKHCv9kov24c3lhMEpV6RoZCaRtVec38X5F5Mi0zxfhkat4pY5yMDk8gGw+biPHmcM0HxP+x5UoJ user06@cc-9cc36db7-59b5c48d94-9nq88"
        }
    }

    boot_diagnostics {
        enabled     = "true"
        storage_uri = "${azurerm_storage_account.mystorageaccount.primary_blob_endpoint}"
    }

    tags {
        environment = "User06 Demo"
    }
}
