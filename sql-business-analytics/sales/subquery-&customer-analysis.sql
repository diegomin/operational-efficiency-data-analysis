--Pregunta
--¿Qué clientes gastan más que el promedio?
SELECT 
    customer_id,
    SUM(total_amount) AS customer_sales
FROM sales
GROUP BY customer_id
HAVING SUM(total_amount) > (
    SELECT AVG(total_amount) FROM sales
);
--Insight
--Identifica clientes de alto valor para programas de fidelización o ventas personalizadas.
