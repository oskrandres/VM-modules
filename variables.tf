variable "location" {
  description = "Región de Azure"
  default     = "canadacentral"
}

variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
  default     = "miGrupoDeRecursos"
}

variable "virtual_network_name" {
  description = "Nombre de la red virtual"
  default     = "miRedVirtual"
}

variable "subnet_name" {
  description = "Nombre de la subred"
  default     = "miSubred"
}

variable "vm_name" {
  description = "Nombre de la máquina virtual"
  default     = "miMaquinaVirtual"
}

variable "admin_username" {
  description = "Nombre de usuario administrador"
  default     = "adminuser"
}

variable "admin_password" {
  description = "Contraseña del usuario administrador"
  default     = "P@ssw0rd1234"
}
