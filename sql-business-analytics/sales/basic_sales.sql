--1. SQL BÁSICO ORIENTADO A NEGOCIO (VENTAS)
--Pregunta de negocio/
--¿Cuánto estamos vendiendo por categoría?
SELECT 
    p.category,
    SUM(s.total_amount) AS total_sales
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY total_sales DESC;
--Explicación (para empresa)
--Esta consulta permite identificar qué categorías generan mayor ingreso, información clave para decisiones de marketing, inventario y promociones.
