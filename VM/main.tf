resource "azurerm_resource_group" "rg-0009" {
  name     = "rg0001"
  location = "West Europe"

}
resource "azurerm_virtual_network" "vnet0009" {
  name                = "vnet0001"
  location            = azurerm_resource_group.rg-0009.location
  resource_group_name = azurerm_resource_group.rg-0009.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

}
resource "azurerm_subnet" "subnet0009" {
  name                 = "subnet0001"
  resource_group_name  = azurerm_resource_group.rg-0009.name
  virtual_network_name = azurerm_virtual_network.vnet0009.name
  address_prefixes     = ["10.0.1.0/24"]
}
resource "azurerm_network_interface" "nic0009" {
  name                = "example-nic"
  location            = azurerm_resource_group.rg-0009.location
  resource_group_name = azurerm_resource_group.rg-0009.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet0009.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "vm0009" {
  name                = "vm0001"
  resource_group_name = azurerm_resource_group.rg-0009.name
  location            = azurerm_resource_group.rg-0009.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [
    azurerm_network_interface.nic0009.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
