# Aprovisionamiento de infraestructura con Terraform

El equipo de desarrollo del servicio de notificaciones necesita versionar su infraestructura para garantizar la consistencia y la reproducibilidad en diferentes entornos. Utilizando Terraform, se requiere aprovisionar la red y el computo necesarios para el servicio de notificaciones.

## Informacion General

| Campo | Valor |
|-------|-------|
| **Tema** | Infraestructura como codigo con Terraform |
| **Nivel** | advanced-l2 |
| **Tipo** | practical |
| **Tiempo estimado** | 8 horas |

## Fases del Reto

### Fase 0: Configuración del Proyecto

**Objetivo:** Obtener el proyecto base funcional enviando el Código Base a un asistente de IA, que lo analizará, corregirá errores y entregará cada archivo con su ruta.

**Tiempo estimado:** 15-30 minutos

**Instrucciones:**

- Asegúrate de tener instalado para ejecutar el proyecto: Un IDE o editor de código.
- Copia todo el contenido del campo **Código Base** de este reto — incluyendo el texto de instrucciones que aparece al inicio.
- Abre un asistente de IA (Claude en claude.ai, ChatGPT o Gemini — se recomienda Claude), pega el contenido copiado en el chat y envíalo.
- El asistente analizará los archivos, corregirá errores y entregará cada archivo con su ruta. Guárdalos en la carpeta donde quieras trabajar, respetando las rutas.
- Verifica que el proyecto arranca sin errores.

**Entregable:** El proyecto compila/arranca sin errores.

<details>
<summary>Pistas de conocimiento</summary>

- Copia el Código Base completo incluyendo el texto de instrucciones al inicio — esas instrucciones le indican al asistente exactamente qué hacer con los archivos.
- Si el asistente no entrega todos los archivos al terminar el análisis, escríbele: "entrégame todos los archivos con su ruta".
- Si el proyecto tiene errores al arrancar, comparte el mensaje de error con el mismo asistente para que lo corrija.

</details>

### Fase 1: Configuración inicial de Terraform

**Objetivo:** Configurar el entorno de Terraform para el aprovisionamiento de la infraestructura.

**Tiempo estimado:** 2 horas

**Instrucciones:**

- Identificar los componentes de la infraestructura necesarios para el servicio de notificaciones.
- Configurar el archivo principal de Terraform para definir la estructura del proyecto.

**Entregable:** Archivo de configuración de Terraform listo para definir los recursos de la infraestructura.

<details>
<summary>Pistas de conocimiento</summary>

- Terraform permite definir la infraestructura como código.
- Es importante estructurar el proyecto de Terraform de manera que sea fácil de mantener y escalar.

</details>

### Fase 2: Definición de recursos de red

**Objetivo:** Definir los recursos de red necesarios para el servicio de notificaciones utilizando Terraform.

**Tiempo estimado:** 3 horas

**Instrucciones:**

- Identificar los recursos de red necesarios para el servicio de notificaciones.
- Definir los recursos de red en el archivo de configuración de Terraform.

**Entregable:** Archivo de configuración de Terraform con los recursos de red definidos.

<details>
<summary>Pistas de conocimiento</summary>

- Terraform permite definir recursos de red como VPCs, subredes y grupos de seguridad.
- Es importante definir los recursos de red de manera que se ajusten a las necesidades del servicio de notificaciones.

</details>

### Fase 3: Definición de recursos de computo

**Objetivo:** Definir los recursos de computo necesarios para el servicio de notificaciones utilizando Terraform.

**Tiempo estimado:** 3 horas

**Instrucciones:**

- Identificar los recursos de computo necesarios para el servicio de notificaciones.
- Definir los recursos de computo en el archivo de configuración de Terraform.

**Entregable:** Archivo de configuración de Terraform con los recursos de computo definidos.

<details>
<summary>Pistas de conocimiento</summary>

- Terraform permite definir recursos de computo como instancias de EC2, contenedores y funciones lambda.
- Es importante definir los recursos de computo de manera que se ajusten a las necesidades del servicio de notificaciones.

</details>

## Dimensiones Evaluadas

- **queEs**: ¿Qué es Terraform y cómo se utiliza para aprovisionar infraestructura?
- **paraQueSirve**: ¿Para qué sirve versionar la infraestructura con Terraform?
- **comoSeUsa**: ¿Cómo se utiliza Terraform para definir recursos de red y computo?
- **erroresComunes**: ¿Cuáles son los errores comunes al utilizar Terraform para aprovisionar infraestructura?
- **queDecisionesImplica**: ¿Qué decisiones implica el aprovisionamiento de infraestructura con Terraform?

## Criterios de Evaluacion

- Configuración inicial de Terraform.
- Definición de recursos de red.
- Definición de recursos de computo.

## Como trabajar con un asistente de IA

Hay dos caminos, elegi uno:

- **AGENTS.md** (recomendado) — instrucciones nativas del repo. Abri esta carpeta con tu agente local (Claude Code, Cursor, Codex, Copilot, Gemini) y las carga solo. Sabe que archivos faltan y con que comando se verifica, y completa el scaffold escribiendo en disco.
- **PROMPT_MEJORA.md** — para copiar y pegar en un chat (claude.ai, ChatGPT) si no tenes un agente en el IDE. Declara lo mismo que AGENTS.md; los archivos que te devuelva el chat los guardas en esta carpeta respetando las rutas.

Ninguno de los dos resuelve las fases del reto: eso es tu trabajo.

## Verificacion

El proyecto esta listo para trabajar cuando este comando corre sin errores:

```bash
terraform init -backend=false && terraform -chdir=modules/compute init -backend=false && terraform -chdir=modules/network init -backend=false && terraform validate && terraform -chdir=modules/compute validate && terraform -chdir=modules/network validate
```

---

*Reto generado automaticamente por Challenge Generator - Pragma*
