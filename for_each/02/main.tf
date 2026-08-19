resource "azurerm_resource_group" "rg" {
    for_each = toset(["naushad-rg","book-rg","pen-rg"])
  name = each.key
  location = "westus"
  
}



resource "azurerm_resource_group" "rg1" {
    for_each ={"naushad-rg"="westus","pintu"="central India"}
  name = each.key
  location = each.value
  
}