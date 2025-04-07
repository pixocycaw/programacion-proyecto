-- Crear la vista
CREATE VIEW pedido_mas_caro
AS
SELECT 
	*
FROM 
	pedidos
ORDER BY 
	precio_total DESC
LIMIT 
	1;
     
-- Abrir la vista
SELECT * FROM pedido_mas_caro;