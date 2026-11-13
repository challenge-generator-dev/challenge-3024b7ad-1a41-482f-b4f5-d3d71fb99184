# Prompt para Mejorar el Codigo Base

Copia y pega el contenido del bloque de abajo en un asistente de IA (Claude, ChatGPT)
para obtener el proyecto completo y arrancable. Guarda los archivos que te devuelva en la
carpeta del repo, respetando exactamente las rutas.

Si preferis trabajar en tu editor con un agente local (Claude Code, Cursor, Copilot), usa `AGENTS.md` en vez de este archivo: dice lo mismo pero para que escriba los archivos en disco.

## Las dos reglas que no se negocian

1. **Completa el boilerplate.** Todo lo que el proyecto necesita para compilar y arrancar: manifiesto de dependencias, punto de entrada, configuracion, capa de interfaz, y las capas del patron arquitectonico declarado. Eso es andamiaje y es tu trabajo.
2. **NO resuelvas el reto.** Los entregables de las fases son el trabajo de la persona. El hueco pedagogico se deja como esta: el proyecto arranca, pero lo que el reto pide implementar NO esta implementado.

Dicho de otra forma: si algo impide compilar, arreglalo. Si algo es logica de negocio incompleta, validaciones ausentes, un secreto hardcodeado o un patron mejorable, dejalo exactamente como esta — es lo que la persona tiene que encontrar.

## Superficie de practica — NO resuelvas

Estos archivos SON el ejercicio de la persona. No los implementes; deja stubs.

- `main.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/network/main.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/network/variables.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/network/outputs.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/compute/main.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/compute/variables.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `modules/compute/outputs.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.

## Como saber que terminaste

```bash
terraform init -backend=false && terraform -chdir=modules/compute init -backend=false && terraform -chdir=modules/network init -backend=false && terraform validate && terraform -chdir=modules/compute validate && terraform -chdir=modules/network validate
```

Ese comando corriendo sin errores es la definicion de "listo".

---

```
## Briefing del reto (autoridad)
Este bloque manda sobre los archivos adjuntos. El stack y el rol salen de AQUÍ, no de un topic genérico ni de markdown placeholder.

### Perfil
Chapter DevOps, Especialidad Ingenieria, Tecnología Terraform, Advanced L2

### Brecha de conocimiento
Aprovisionar infraestructura con Terraform, Aprovisiona con Terraform la red y el computo del servicio de notificaciones

### Misión / candidato
Versionar la infraestructura del servicio de notificaciones

### Reto
- Tema: Infraestructura como codigo con Terraform
- Seniority: advanced-l2
- Tipo: practical
- Título: Aprovisionamiento de infraestructura con Terraform
- Tiempo estimado: 8 horas

### Fases (trabajo del HUMANO — PROHIBIDO completarlas)
No implementes estos entregables. Dejalos como hueco pedagógico. El asistente solo materializa el proyecto arrancable para que el participante pueda trabajar.
- Fase 1: Configuración inicial de Terraform — objetivo: Configurar el entorno de Terraform para el aprovisionamiento de la infraestructura. — entregable (NO resolver): Archivo de configuración de Terraform listo para definir los recursos de la infraestructura.
- Fase 2: Definición de recursos de red — objetivo: Definir los recursos de red necesarios para el servicio de notificaciones utilizando Terraform. — entregable (NO resolver): Archivo de configuración de Terraform con los recursos de red definidos.
- Fase 3: Definición de recursos de computo — objetivo: Definir los recursos de computo necesarios para el servicio de notificaciones utilizando Terraform. — entregable (NO resolver): Archivo de configuración de Terraform con los recursos de computo definidos.

Eres un asistente experto en análisis, corrección y generación de archivos de cualquier tipo:
código fuente, documentación, hojas de cálculo, documentos Word, configuraciones, entre otros.
Voy a enviarte una cadena de texto que contiene uno o más archivos. Cada archivo está delimitado por un marcador con el siguiente formato:
// === ARCHIVO: ruta/del/archivo.extension ===
o también puede aparecer como:
## === ARCHIVO: ruta/del/archivo.extension ===
Lo que sigue al marcador puede ser:

El contenido real del archivo (código, texto, YAML, etc.)
Una descripción en lenguaje natural de lo que debe contener el archivo


TU TAREA
PASO 0 — ¿Esto es un proyecto o una carcasa?
Antes de extraer archivos, leé el Briefing (si está) y diagnosticá el adjunto.

Es CARCASA si ocurre CUALQUIERA de estas:
- No hay manifiesto de dependencias del stack del briefing (manifest.json de VTEX IO / package.json / pom.xml / build.gradle / requirements.txt / go.mod / *.tf / *.csproj, según corresponda)
- Hay un "binario" que en realidad es un comentario ("no puede ser mostrado como texto plano", placeholder .fig/.docx vacío)
- Los markdowns ya completan entregables de fases posteriores ("se implementó fade-in", lista de áreas ya resuelta)

Si es CARCASA:
- MATERIALIZÁ un proyecto que arranca en el stack del briefing (VTEX IO Store Framework, Angular, Terraform, pytest, Nest, etc.). Incluí manifiesto, punto de entrada y capa de interfaz reales.
- NO copies los markdowns de "solución" como si fueran el producto. Son ruido de generación.
- NO resuelvas las fases del briefing (están marcadas PROHIBIDO). Dejá el hueco pedagógico: el flujo existe, las microinteracciones/calidad/infra que el reto pide NO están hechas.
- Después seguí al PASO 5 (entrega de archivos).

Si es un proyecto REAL (manifiesto + código que compila o arranca):
- Seguí PASO 1 en adelante. 🔴 compilación sí. 🟡 pedagógico no.

PASO 1 — Detección y extracción
Identifica todos los archivos presentes en la cadena. Para cada archivo extrae:

Su ruta completa (ej: src/main/java/com/pragma/Service.java)
Su contenido o descripción

PASO 2 — Clasificación por tipo
Clasifica cada archivo en una de estas categorías:
A) Código fuente (Java, Python, TypeScript, JavaScript, Kotlin, etc.)
B) Configuración / documentación (YAML, properties, Markdown, JSON, txt, etc.)
C) Excel (.xlsx, .xls, .csv)
D) Word (.docx, .doc)
E) Otro tipo de archivo binario o especial
PASO 3 — Clasificación de errores en código fuente

Objetivo prioritario: que el proyecto compile. No corrijas flujo de negocio ni lógica funcional.

Antes de modificar cualquier archivo de código fuente, clasifica cada problema encontrado en una de estas dos categorías:
🔴 ERROR DE COMPILACIÓN — corregir siempre
Son errores que impiden que el proyecto arranque, sin valor pedagógico:

Import faltante o incorrecto
Clase, método o variable referenciada que no existe en ningún archivo del proyecto
Error de sintaxis
Anotación con atributos inválidos
Dependencia ausente en pom.xml, package.json, etc.
Archivo referenciado que no existe y debe ser creado con implementación mínima

→ CORREGIR estos errores.
🟡 PROBLEMA FUNCIONAL O DE CALIDAD — preservar siempre
Son problemas que no impiden compilar. Pueden ser intencionales para el aprendizaje:

Clave secreta hardcodeada ("secret", "password123")
API deprecada que funciona pero tiene reemplazo moderno
Lógica de negocio incorrecta o incompleta
Código redundante o de baja legibilidad
Falta de validaciones en flujo de negocio
Patrones de diseño incorrectos pero funcionales
Concurrencia no segura
Configuración funcional pero no óptima

→ PRESERVAR tal cual. No corregir, no mejorar, no comentar.
PASO 4 — Procesamiento según tipo de archivo
Tipo A — Código fuente
Aplica únicamente las correcciones clasificadas como 🔴 ERROR DE COMPILACIÓN.
No alteres ningún elemento clasificado como 🟡 PROBLEMA FUNCIONAL O DE CALIDAD.
Si falta un archivo referenciado, créalo con la implementación mínima necesaria para compilar.
Tipo B — Configuración / documentación
Extrae el contenido tal cual, sin modificaciones salvo errores evidentes de sintaxis
(ej: YAML mal indentado).
Tipo C — Excel (.xlsx)
Si viene con contenido real, genera el archivo respetando ese contenido.
Si viene con descripción en lenguaje natural, genera un archivo Excel funcional con:

Fila de encabezados en negrita con color de fondo distintivo
Columnas con ancho ajustado al contenido
Tipos de dato correctos por columna
Validaciones si la descripción lo indica
Hojas nombradas descriptivamente si hay más de una
Filas de ejemplo si no hay datos reales

Tipo D — Word (.docx)
Si viene con contenido real, genera el archivo respetando ese contenido.
Si viene con descripción en lenguaje natural, genera un documento Word funcional con:

Estilos de título (Título 1, Título 2) para jerarquía de secciones
Fuente legible (Calibri o equivalente), tamaño 11-12pt para cuerpo
Márgenes estándar
Tabla de contenido si tiene múltiples secciones
Tablas con encabezados en negrita si aplica

Tipo E — Otro
Genera el archivo con el contenido o estructura más apropiada según la descripción.
PASO 5 — Entrega de archivos
Entregá cada archivo con su ruta completa, respetando exactamente la estructura de rutas
indicada por los marcadores: un bloque por archivo, precedido por su ruta. No generes ZIPs
ni archivos adjuntos.
La entrega debe incluir:

Archivos de código con únicamente los errores de compilación corregidos
Archivos de configuración y documentación sin cambios
Archivos nuevos creados para resolver dependencias de compilación faltantes
Archivos Excel y Word generados desde descripción

IMPORTANTE: Entregá los archivos completos al finalizar. No preguntes si el usuario
quiere recibirlos. Simplemente entregalos; No debes desplegar en el chat el resumen de lo que arreglaste, solo entregá los archivos.

REGLAS IMPORTANTES

No omitas ningún archivo aunque no tenga errores ni modificaciones
Respeta los nombres y rutas exactas indicadas por los marcadores
Si un archivo no tiene marcador claro, infiere el nombre desde su contenido
Si la cadena contiene solo documentación, placeholders o binarios fake, NO la reproduzcas:
aplicá PASO 0 (materializar el proyecto del briefing). Reproducir la carcasa es un fallo.
No agregues texto después del último archivo entregado
No preguntes si el usuario quiere los archivos: simplemente entregalos siempre
Si detectas que falta un archivo de configuración necesario para compilar
(pom.xml, package.json, requirements.txt, build.gradle, etc.), créalo e inclúyelo
inferiendo su contenido desde los imports y frameworks detectados en el código
Nunca corrijas problemas 🟡 aunque parezcan obvios o fáciles de mejorar.
El participante que recibirá este proyecto los debe encontrar y resolver él mismo.


INPUT
Aquí está la cadena con los archivos:

// === ARCHIVO: versions.tf ===
terraform {
  required_version = ">= 1.9.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 5.100.0"
    }
  }
}

// === ARCHIVO: providers.tf ===
provider "aws" {
  region = "us-east-1"
}

// === ARCHIVO: modules/network/main.tf ===
# Módulo de red para el servicio de notificaciones
# TODO(reto): Define los recursos de red necesarios (VPC, subredes, grupos de seguridad)
# para el servicio de notificaciones. Asegúrate de que los recursos sean reutilizables
# y estén correctamente parametrizados mediante variables.

# TODO(reto): implementa este bloque
# resource "aws_vpc" "notifications_vpc" {
#   # TODO(reto): Configura el CIDR block y habilita DNS support
# }

# TODO(reto): implementa este bloque
# resource "aws_subnet" "notifications_subnet" {
#   # TODO(reto): Define las subredes públicas y privadas según el diseño
# }

# TODO(reto): implementa este bloque
# resource "aws_security_group" "notifications_sg" {
#   # TODO(reto): Configura las reglas de seguridad para el servicio de notificaciones
# }

// === ARCHIVO: modules/network/variables.tf ===
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

// === ARCHIVO: modules/network/outputs.tf ===
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

// === ARCHIVO: modules/compute/main.tf ===
# Módulo de computo para el servicio de notificaciones
# TODO(reto): Define los recursos de computo necesarios (EC2, Lambda) para el servicio.
# Asegúrate de que los recursos estén correctamente parametrizados y vinculados
# a los outputs del módulo de red.

# TODO(reto): implementa este bloque
# resource "aws_instance" "notifications_instance" {
#   # TODO(reto): Configura la instancia EC2 para el servicio de notificaciones
# }

# Ejemplo de recurso Lambda (opcional)
# TODO(reto): implementa este bloque
# resource "aws_lambda_function" "notifications_lambda" {
#   # TODO(reto): Configura la función Lambda si es necesaria para el servicio
# }

// === ARCHIVO: modules/compute/variables.tf ===
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

// === ARCHIVO: modules/compute/outputs.tf ===
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

// === ARCHIVO: environments/dev/terraform.tfvars ===
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

// === ARCHIVO: main.tf ===
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
```
