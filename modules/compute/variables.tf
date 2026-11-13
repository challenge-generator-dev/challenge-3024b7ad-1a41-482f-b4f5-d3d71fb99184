# Variables de entrada para el módulo de computo
# TODO(reto): Define las variables necesarias para parametrizar los recursos de computo.
# Considera incluir AMI IDs, tipos de instancia, conteo de instancias y referencias
# a recursos de red.

variable "instance_count" {
  description = "Número de instancias EC2 a crear"
  type        = number
  default     = 1
}

variable "ami_id" {
  description = "ID de la AMI para las instancias EC2"
  type        = string
  default     = "ami-0c55b159cbfafe1f0" # Amazon Linux 2
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "ID de la subred donde se desplegarán las instancias"
  type        = string
}

variable "security_group_id" {
  description = "ID del grupo de seguridad para las instancias"
  type        = string
}

variable "lambda_role_arn" {
  description = "ARN del rol IAM para la función Lambda"
  type        = string
  default     = ""
}