# Sesión 07 | Laboratorio Antigravity
## Guía: El Interrogatorio (SQL con NovaMarket)

Hoy aprenderás a transformar datos de Excel a una base de datos SQLite usando Python, y luego realizarás el "Interrogatorio" (SELECT y WHERE) usando VS Code, con el apoyo de **Antigravity** como tu tutor.

---

## 1. El Puente de Datos: Del Excel al SQLite
En lugar de escribir cientos de comandos `INSERT` a mano, usaremos un pequeño script de Python para automatizar el proceso de carga. Así es como se hace en el mundo profesional.

### Paso A: Preparar el Entorno
Abre la terminal de VS Code y asegúrate de tener instaladas las librerías necesarias:
```bash
pip install pandas openpyxl
```

> [!NOTE]
> **¿Para qué sirven estas librerías?**
> - **Pandas:** Es la herramienta líder para manipulación y análisis de datos en Python. Nos permite leer y procesar tablas de forma ultra rápida.
> - **Openpyxl:** Es el "motor" o traductor que permite a Pandas abrir equipos y leer archivos modernos de Excel (`.xlsx`).

### Paso B: Ejecutar el Cargador
Localiza el archivo **`03_Cargador_Excel_a_SQLite.py`** y ejecútalo. Este script leerá el archivo de Excel **`04_Ventas_Datos_Limpios_S03.xlsx`** y creará automáticamente el archivo de base de datos **`Novamarket_S07.db`**.

> [!TIP]
> **¿Quieres entender el código?** Revisa la guía **[03_Detalle_Codigo_Python.md](file:///Users/macbookpro/Developer/Learning/SQL/02_Sesion_07/03_Detalle_Codigo_Python.md)** para ver la explicación paso a paso de lo que hace Python con tus datos.

> [!NOTE]
> Puedes ejecutarlo haciendo clic en el botón ▶️ (Run) de Python en la esquina superior derecha o escribiendo en la terminal:
> `python 03_Cargador_Excel_a_SQLite.py`

---

## 2. Conexión con SQLTools (Paso Crítico)
Una vez generada la base de datos `Novamarket_S07.db`, debemos conectar VS Code. **Para evitar errores de "Archivo no encontrado", usaremos la ruta absoluta.**

1.  Ve al menú de **SQLTools** (icono del cilindro).
2.  Crea una **Nueva Conexión** (Add New Connection).
    - **Driver:** SQLite (Node.js).
    - **Nombre:** `NovaMarket_S07`.
    - **Database File:** **NO** uses el buscador. Copia y pega la ruta completa:
      `/Users/macbookpro/Developer/Learning/SQL/02_Sesion_07/Novamarket_S07.db`
3.  Haz clic en **SAVE CONNECTION** y luego en el icono del enchufe (**Connect**).

> [!TIP]
> **¿Cómo obtengo la ruta exacta?**
> Haz click derecho sobre el archivo `Novamarket_S07.db` en tu explorador de archivos de VS Code (a la izquierda) y elige **"Copy Path"**. Esa es la ruta que debes pegar en SQLTools.

---

## 3. Laboratorio: El Interrogatorio (Bloques A - E)
Abre el archivo **`06_Laboratorio_Consultas.sql`**. Escribe allí tus propias consultas SQL y ejecútalas contra la base de datos confirmando que tienes los 500 registros iniciales.

**Recuerda pedir ayuda a Antigravity de esta forma:**
- **Sintaxis:** *"@antigravity, ¿cómo funciona el operador BETWEEN para fechas?"*
- **Lógica:** *"@antigravity, ¿qué expresión necesito para calcular el margen bruto?"*
- **Errores:** *"@antigravity, mi SQL da error, ¿puedes explicarme qué está mal?"*

### Bloques de Práctica (El Interrogatorio)
Para cada ejercicio, escribe la consulta en tu archivo `.sql`, selecciónala y ejecútala. Compara el número de filas obtenidas con el **Criterio de Éxito**.

#### **Bloque A: Exploración Inicial**
*(Referencia: Guía Conceptual Sección A)*
| # | Ejercicio | Criterio de Éxito |
|---|---|---|
| A1 | Ver las primeras 10 transacciones de la tabla `FactVentas`. | Se muestran exactas 10 filas. |
| A2 | Contar el total de registros en la tabla `FactVentas`. | Resultado: 1 sola fila con el valor **500**. |

#### **Bloque B: Columnas y Cálculos**
*(Referencia: Guía Conceptual Sección B)*
| # | Ejercicio | Criterio de Éxito |
|---|---|---|
| B1 | Mostrar `TransaccionID`, `Cantidad`, `Precio_Venta` y una nueva columna `Venta_Bruta` (Cantidad * Precio_Venta). | Las 4 columnas son visibles. |
| B2 | Calcular la `Venta_Neta` redondeada a 2 decimales usando el `Descuento_Pct`. | El resultado coincide con `ROUND(...)`. |

#### **Bloque C: Filtros WHERE**
*(Referencia: Guía Conceptual Sección C)*
| # | Ejercicio | Criterio de Éxito |
|---|---|---|
| C1 | Filtrar todas las ventas realizadas en la ciudad de **Leticia** (`CiudadID = 6`). | Debes obtener **82 filas**. |
| C2 | Mostrar ventas con un **descuento superior al 15%** (`Descuento_Pct > 0.15`). | Debes obtener **70 filas**. |

#### **Bloque D: Orden y Límites**
*(Referencia: Guía Conceptual Sección D)*
| # | Ejercicio | Criterio de Éxito |
|---|---|---|
| D1 | Mostrar las 10 transacciones con el **Costo de Envío más alto**, de mayor a menor. | Top 10 visible. |
| D2 | Mostrar las 5 ventas más económicas (`Precio_Venta`) de Leticia. | 5 filas ordenadas por precio. |

#### **Bloque E: Desafíos de Negocio**
*(Referencia: Guía Conceptual Sección E)*
| # | Ejercicio | Criterio de Éxito |
|---|---|---|
| E1 | ¿Cuántas ventas hubo en **noviembre de 2023**? (`FechaID` entre 20231101 y 20231130). | Debes obtener **85 filas**. |
| E2 | Encuentra las 10 ventas que más "destruyen valor" (Venta Neta - Costo Envío más bajo). | Resultados con margen negativo. |

---

> [!IMPORTANT]
> **Consistencia del Nombre:** Asegúrate de que el archivo generado sea **`Novamarket_S07.db`**. Si usas un nombre diferente, SQLTools no encontrará los datos.

---
*Sesión 07 | Antigravity Lab | NovaMarket Tech*
