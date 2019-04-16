resource "azurerm_resource_group" "myterraformgroup" {
	name	 = "user06ResourceGroup"
	location = "koreacentral"

	tags {
		environment = "user06 Demo"
	}
}
