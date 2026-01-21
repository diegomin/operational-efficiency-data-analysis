--Business scenario (context)
--Retail company with:
--Daily sales
--Products in inventory
--Delivery operations

--Base tables (simplified)

sales(order_id, product_id, customer_id, order_date, quantity, total_amount)
products(product_id, product_name, category)
inventory(product_id, stock, warehouse)
operations(order_id, delivery_time_days, status)
