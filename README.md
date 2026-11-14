# Practicas de la asignatura de Base de Datos en la Nube
# Ingenieria en Tecnologias de la Información
### Docente: M.T.I. Marco A. Ramirez Hernandez

Periodo Septiembre -Diciembre 2026

---
# Tabla de Practicas de la Materia
| No. | Nombre | Descripcion | Potenciador | Estatus |
|---|---|---|---|---|
|1.|Metodologia de Evaluacion de la Materia|Transcribir en libreta y comprender la metodologia y fechas de Evaluacion de la asignatura| 5|🟢 Concluida
|2.|Conexiones Remotas para Bases de Datos SQL|Crear y Administrar usuario y privilegios de origenes remotos a travez de internet o una red local| 60| 🟢 Concluida

# 🛒 Práctica 03: Arquitectura y Gestión de E-Commerce en MySQL VPS
**Modelado Relacional, Rutinas Avanzadas, Seguridad RBAC y Operación Remota**

> **Asignatura:** Bases de Datos en la Nube  
> **Programa:** Ingeniería en Tecnologías de la Información e Innovación Digital  
> **Catedrático:** M.T.I. Marco A. Ramírez Hernández  
> **Periodo Académico:** Septiembre - Diciembre 2026

🔗 [📖 Consultar Diccionario de Datos](#) | 🔗 [🗺️ Explorar Modelo MERE](#) *(Reemplaza los `#` con tus enlaces reales)*

---

## 🎯 Propósito del Proyecto
Diseñar, desplegar y administrar de forma remota el backend de base de datos para una plataforma E-Commerce sobre un Servidor Privado Virtual (VPS). El alcance abarca la normalización de 25 tablas, la creación de un sistema de auditoría automatizado (triggers y vistas), la implementación de seguridad basada en roles (RBAC) y el desarrollo de rutinas SQL complejas para la inyección masiva de datos, complementado con documentación técnica web interactiva.

---

## 🌐 Recursos Web y Documentación Técnica

| Componente Interactivo | Descripción Técnica | Enlace |
| :--- | :--- | :--- |
| **📖 Diccionario de Datos** | Catálogo exhaustivo de las 25 entidades, atributos, tipos de datos, restricciones y llaves referenciales. | [Abrir Web ↗](#) |
| **🗺️ Diagrama MERE** | Modelo Entidad-Relación Extendido interactivo, con segmentación por módulos y visualización de relaciones. | [Abrir Web ↗](#) |
| **🏠 Repositorio de Respaldos** | Historial de versiones `.sql` del esquema, rutinas y evidencias operativas del despliegue. | [Abrir Web ↗](#) |

---

## 🏗️ Diseño Arquitectónico y Desarrollo

### 1. Estructura Relacional (25 Entidades)
* **Esquema Central y Auditoría:** Diseño lógico y físico de 25 tablas interconectadas (incluyendo `tb_users`, `tb_people`, `tb_products`, `tb_carts`, `tb_buyer_orders`, `tb_cancellations` y la tabla central de registro `tb_logs`).
* **Integridad de Datos:** Aplicación estricta de constraints (Primary Keys, Foreign Keys), garantizando la integridad referencial y el soporte de operaciones concurrentes remotas.

### 2. Sistema de Auditoría Activa (72 Triggers + 25 Vistas)
* **72 Disparadores DML:** Automatización de eventos `AFTER INSERT`, `AFTER UPDATE` y `AFTER DELETE` en 24 tablas operativas. Cada alteración registra en `tb_logs` el usuario remoto, timestamp, tabla afectada, tipo de operación y el payload del cambio.
* **25 Vistas de Extracción (Data Views):**
  * **24 Vistas de Trazabilidad:** Consultas precompiladas que cruzan las tablas operacionales con `tb_logs` para el rastreo histórico de movimientos por usuario.
  * **1 Vista Analítica de Negocio:** Reporte de *Productos por Categoría*, consolidando jerarquías de subcategorías y filtrando por estatus de disponibilidad.

### 3. Control de Accesos Remotos
