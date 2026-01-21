--Pregunta
--Ventas mensuales y crecimiento
WITH monthly_sales AS (
    SELECT 
        DATE_FORMAT(order_date, '%Y-%m') AS month,
        SUM(total_amount) AS total_sales
    FROM sales
    GROUP BY month
)
SELECT *
FROM monthly_sales
ORDER BY month;
--Por qué un CTE
--Facilita mantenimiento, lectura y escalabilidad del análisis (muy valorado en equipos data).
