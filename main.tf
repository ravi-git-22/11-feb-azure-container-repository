resource "azurerm_resource_group" "azure_registry_resource_group" {
  name = "az-ravi-registry-resource-group"
  location = var.location
}

resource "azurerm_container_registry" "terraform_docker_acr" {
  name                = "terraformdockeracr"
  resource_group_name = azurerm_resource_group.azure_contianer_rg.name
  location            = azurerm_resource_group.azure_contianer_rg.location
  sku                 = "Basic"
}

