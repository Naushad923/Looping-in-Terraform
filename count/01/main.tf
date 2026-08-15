resource "azurerm_resource_group" "rg" {
  count    = 4
  name     = "naushad_${count.index}"
  location = "westus"
}