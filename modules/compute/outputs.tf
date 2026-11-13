# Outputs del módulo de compute
# Superficie de práctica: el participante debe definir los outputs necesarios

output "instance_id" {
  description = "ID de la instancia EC2 aprovisionada"
  value = null # TODO(reto): aws_instance.notifications_instance.id
}

output "lambda_function_name" {
  description = "Nombre de la función Lambda"
  value = null # TODO(reto): aws_lambda_function.notifications_lambda.function_name
}

output "lambda_arn" {
  description = "ARN de la función Lambda"
  value = null # TODO(reto): aws_lambda_function.notifications_lambda.arn
}