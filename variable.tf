variable "location" {
  type = string
  default = "Japan East"
  description = "Localização padrão (Japan East)"
}

variable "rg01" {
  type = string
  default = "rg-projeto1-001"
  description = "Nome do RG"
}

variable "nic" {
  type = string
  default = "nic-vm-00"
  description = "nic virtual machine"
}
variable "vnet" {
  type = string
  default = "vnet-projeto1-001"
}

variable "snet" {
    type = string
    default = "snet-projeto1-001"
  
}

variable "vm-win10" {
    type = string
    default = "vm-win-00"
  
}
