--Pregunta
--¿Qué productos están en riesgo de desabasto?
SELECT 
    p.product_name,
    i.stock,
    i.warehouse
FROM inventory i
JOIN products p ON i.product_id = p.product_id
WHERE i.stock < 20
ORDER BY i.stock ASC;
--Decisión
--Permite generar alertas tempranas para reabastecimiento.
