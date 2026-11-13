# Outputs del módulo de red
# TODO(reto): Define los outputs necesarios para que otros módulos puedan consumir
# los recursos creados por este módulo (ej. IDs de VPC, subredes, grupos de seguridad).

output "vpc_id" {
  description = "ID de la VPC creada"
  value = null # TODO(reto): aws_vpc.notifications_vpc.id
}

output "subnet_ids" {
  description = "IDs de las subredes creadas"
  value = null # TODO(reto): aws_subnet.notifications_subnet[*].id
}

output "security_group_id" {
  description = "ID del grupo de seguridad creado"
  value = null # TODO(reto): aws_security_group.notifications_sg.id
}