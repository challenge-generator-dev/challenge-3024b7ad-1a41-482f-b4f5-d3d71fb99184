# main.tf - Orquestación de módulos para el servicio de notificaciones
# Superficie de práctica: completar la invocación de módulos y gestión de outputs

terraform {
  # TODO(reto): Configurar backend para almacenamiento de estado
  # Opciones: local, s3, azurerm, gcs
}

# Módulo de red para el servicio de notificaciones
module "network" {
  source = "./modules/network"

  vpc_cidr         = "10.0.0.0/16"
  subnet_cidrs     = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones = ["us-east-1a", "us-east-1b"]
}

# Módulo de compute para el servicio de notificaciones
module "compute" {
  source = "./modules/compute"

  # Conexión con los outputs del módulo de red
  subnet_id         = module.network.subnet_ids[0]
  security_group_id = module.network.security_group_id
  instance_count    = 1
  ami_id            = "ami-0c55b159cbfafe1f0"
  instance_type     = "t3.micro"
  lambda_role_arn   = ""
}

# Outputs a nivel de root que exponen los recursos aprovisionados
output "vpc_id" {
  description = "ID de la VPC creada para el servicio de notificaciones"
  value       = module.network.vpc_id
}

output "subnet_ids" {
  description = "IDs de las subnets creadas para el servicio de notificaciones"
  value       = module.network.subnet_ids
}

output "security_group_id" {
  description = "ID del security group creado para el servicio de notificaciones"
  value       = module.network.security_group_id
}

output "instance_id" {
  description = "ID de la instancia EC2 creada"
  value       = module.compute.instance_id
}

output "lambda_function_name" {
  description = "Nombre de la función Lambda creada"
  value       = module.compute.lambda_function_name
}

output "lambda_arn" {
  description = "ARN de la función Lambda creada"
  value       = module.compute.lambda_arn
}