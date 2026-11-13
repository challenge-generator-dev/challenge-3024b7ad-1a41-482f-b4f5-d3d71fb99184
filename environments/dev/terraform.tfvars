# Valores de variables para el entorno de desarrollo
# Este archivo define la configuración específica del ambiente dev

# Configuración de compute
instance_type    = "t3.micro"
ami_id           = "ami-0c55b159cbfafe1f0"

# Configuración de red - valores que serán consumidos por los módulos
vpc_cidr         = "10.0.0.0/16"
subnet_cidrs     = ["10.0.1.0/24", "10.0.2.0/24"]
availability_zones = ["us-east-1a", "us-east-1b"]

# Configuración de seguridad
# Los IDs de subnet y security group se obtienen del módulo de red
# Se dejan vacíos para que Terraform los tome del output del módulo network
subnet_id        = ""
security_group_id = ""

# Configuración de Lambda
lambda_role_arn  = ""

# Configuración adicional para desarrollo
instance_count   = 1

# Tags específicos del entorno
environment_tags = {
  Environment = "dev"
  Team        = "notifications"
  Project     = "notification-service"
}