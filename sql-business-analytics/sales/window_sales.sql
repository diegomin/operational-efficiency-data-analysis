--Pregunta
--¿Cuáles son los productos más vendidos por categoría?
SELECT *
FROM (
    SELECT 
        p.category,
        p.product_name,
        SUM(s.quantity) AS units_sold,
        RANK() OVER (
            PARTITION BY p.category
            ORDER BY SUM(s.quantity) DESC
        ) AS rank_in_category
    FROM sales s
    JOIN products p ON s.product_id = p.product_id
    GROUP BY p.category, p.product_name
) ranked_products
WHERE rank_in_category <= 3;
--Uso empresarial
--Permite priorizar productos clave por categoría para inventario, promociones o negociación con proveedores.
