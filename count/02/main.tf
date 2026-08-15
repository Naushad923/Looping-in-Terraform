variable "xyz" {
  default = ["app","new","old"]
}


resource "azurerm_resource_group" "rg" {
  count    = length(var.xyz)     
  name     = "nau_${var.xyz[count.index]}"
  location = "westus"
}