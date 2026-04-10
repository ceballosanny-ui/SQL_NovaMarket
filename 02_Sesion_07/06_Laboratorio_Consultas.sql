-- 💻 LABORATORIO SESIÓN 7: EL INTERROGATORIO (SQL en VS Code)
-- ═══════════════════════════════════════════════════════════════
-- Guía de Referencia: 02_Guia_S07_Antigravity.md
-- Base de Datos: Novamarket_S07.db (500 registros)
-- ═══════════════════════════════════════════════════════════════

-- INSTRUCCIONES:
-- 1. Escribe tu código debajo de cada bloque.
-- 2. Asegúrate de estar conectado a 'Novamarket_S07.db'.
-- 3. Para ejecutar: Selecciona tu código con el mouse y presiona Cmd + E.

-- ══ BLOQUE A — Exploración Inicial ═════════════════════════════
-- A1: Ver las primeras 10 transacciones de 'FactVentas'
-- Carencia: ¿Qué columnas ves? ¿Están los IDs o los nombres?


-- A2: Contar el total de registros en 'FactVentas' (Éxito: 500)



-- ══ BLOQUE B — Columnas y Cálculos (Suma, Mult, Alias) ═════════
-- B1: Mostrar TransaccionID, Cantidad, Precio_Venta y Venta_Bruta (Cant * Precio)


-- B2: Venta_Neta redondeada a 2 decimales aplicando Descuento_Pct
-- TIP: ROUND(Precio_Venta * Cantidad * (1 - Descuento_Pct), 2) AS Venta_Neta



-- ══ BLOQUE C — Filtros WHERE (Leticia, Descuentos) ═════════════
-- C1: Todas las ventas de Leticia (CiudadID = 6). Éxito: 82 filas.


-- C2: Ventas con descuento agresivo (Mayor al 15%). Éxito: 70 filas.



-- ══ BLOQUE D — Orden y Límites (Top 10, Peores Márgenes) ══════
-- D1: Top 10 transacciones con mayor Costo_Envio (DESC)


-- D2: Las 5 ventas de Leticia con el Precio_Venta más bajo (ASC)



-- ══ BLOQUE E — Desafíos Autónomos (ENTREGABLES) ════════════════
-- E1: ¿Cuántas ventas hubo en noviembre de 2023? (Éxito: 85 filas)
-- Tip: FechaID BETWEEN 20231101 AND 20231130


-- E2: Las 10 ventas con peor margen (Venta_Neta - Costo_Envio)
-- Queremos ver los valores más negativos arriba.

-- ═══════════════════════════════════════════════════════════════
-- Fin del Laboratorio 07
