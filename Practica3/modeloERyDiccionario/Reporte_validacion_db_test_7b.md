# Reporte de validación

**Fuente:** `Practica3/Backups/db_test_7b (12).sql`  
**Documento:** `db_test_7b_modelo_er_diccionario.html`  
**Base y motor declarados:** `db_test_7b`, MySQL 8.0.42; las tablas detectadas usan InnoDB.

| Elemento | Detectado | Incluido |
|---|---:|---:|
| Tablas | 25 | 25 |
| Columnas | 227 | 227 |
| Claves foráneas declaradas | 38 | 38 |
| Claves foráneas con destino presente | 37 | 37 |
| Índices (PRIMARY, UNIQUE e INDEX) | 68 | 68 |
| Restricciones CHECK | 19 | 19 |
| Filas explícitas en INSERT del respaldo | 110,264 | Por tabla y total |
| Vistas | 23 | 23 |
| Procedimientos almacenados | 7 | 7 |
| Funciones | 0 | 0 |
| Triggers | 72 | 72 |
| Eventos | 0 | 0 |

## Conteo por tabla

| Tabla | Filas en respaldo |
|---|---:|
| `tb_logs` | 79,997 |
| `tb_people` | 7,500 |
| `tb_products` | 7,007 |
| `tb_users` | 7,506 |
| `tbc_categories` | 100 |
| `tbd_products_categories` | 8,154 |
| Otras 19 tablas | 0 cada una |

El conteo suma filas en tuplas de sentencias `INSERT ... VALUES`, incluyendo múltiples tuplas por sentencia. Los INSERT dentro de cuerpos de triggers no cuentan como filas del respaldo. Cero significa que no se encontraron filas de datos insertadas para esa tabla.

## Elementos no verificables o limitaciones

- `tb_payment_methods` declara `fk_payment_methods_type` hacia `tbc_payment_methods_types(ID)`, pero el respaldo no contiene un `CREATE TABLE` para `tbc_payment_methods_types`. La FK se documentó como referencia no resuelta; no se agregó una tabla ficticia.
- Los objetos almacenados están serializados en comentarios de versión de MySQL (`/*!...*/`). Se detectaron y extrajeron 23 vistas, 7 procedimientos y 72 triggers de esos bloques. Las funciones y eventos no aparecen en el respaldo.
- Las relaciones se derivan de constraints FK declaradas. La cardinalidad 1:1 se asigna cuando las columnas FK de la tabla hija están cubiertas por una clave única; de lo contrario se muestra 1:N. No se infieren N:M sin considerar las tablas de asociación.
- Los comentarios SQL de columnas no aparecen en las definiciones `CREATE TABLE` detectadas. Las descripciones de negocio se mantienen prudentes y se derivan del nombre, tipo, claves y contexto estructural; no se presentan como comentarios originales.
- El HTML incluye todas las definiciones `CREATE TABLE`, definiciones de vistas y cuerpos de triggers y procedimientos que pudieron leerse del dump. No se ejecutó el respaldo en un servidor MySQL.

## Comprobaciones del artefacto

- Comparación de objetos SQL detectados con las listas embebidas en el HTML: 25/25 tablas, 227/227 columnas, 38/38 constraints FK, 68/68 índices, 19/19 CHECK, 23/23 vistas, 7/7 procedimientos, 72/72 triggers.
- El JavaScript integrado pasó el análisis sintáctico de Node.js.
- El archivo es autocontenido y no carga bibliotecas, fuentes ni recursos externos.
- No se realizó revisión perceptual en Chrome o Edge; la comprobación de navegador de Archify no se ejecutó porque la entrega usa una aplicación HTML propia y embebida además del candidato Archify descrito abajo.
- Archify `validate` no completó: falló al inicializar su carpeta temporal administrada (`Temporary directory ancestor identity is unavailable: C:\Users\Dara\AppData\Local\Temp`). No se considera una validación Archify aprobada.
