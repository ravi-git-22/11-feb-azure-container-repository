resource "azurerm_resource_group" "azure_registry_resource_group" {
  name = "az-ravi-registry-resource-group"
  location = var.location
}

resource "azurerm_container_registry" "terraform_docker_acr" {
  name                = "dockeracrravi"
  resource_group_name = azurerm_resource_group.azure_registry_resource_group.name
  location            = azurerm_resource_group.azure_registry_resource_group.location
  sku                 = "Basic"
}

