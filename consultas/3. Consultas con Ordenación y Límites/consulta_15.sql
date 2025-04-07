-- Crear la vista
CREATE VIEW cliente_mas_pedidos
AS
SELECT 
	c.id,
	c.nombre,
    c.apellidos,
    COUNT(p.id) AS total_pedidos
FROM 
	clientes c
JOIN 
	pedidos p ON c.id = p.id_cliente
GROUP BY 
	c.id
ORDER BY 
	total_pedidos DESC
LIMIT 
	1;
     
-- Abrir la vista
SELECT * FROM cliente_mas_pedidos;