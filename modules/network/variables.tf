# Variables de entrada para el módulo de red
# TODO(reto): Define las variables necesarias para parametrizar los recursos de red.
# Considera incluir CIDR blocks, zonas de disponibilidad y etiquetas.

variable "vpc_cidr" {
  description = "CIDR block para la VPC del servicio de notificaciones"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  description = "Lista de CIDR blocks para las subredes"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zones" {
  description = "Lista de zonas de disponibilidad para las subredes"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}