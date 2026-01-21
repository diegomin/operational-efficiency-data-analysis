--Pregunta
--¿Tiempo promedio de entrega por estado?
SELECT 
    status,
    AVG(delivery_time_days) AS avg_delivery_time
FROM operations
GROUP BY status;
--Impacto
--Ayuda a detectar cuellos de botella operativos.
