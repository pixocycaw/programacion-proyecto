-- Crear la vista
CREATE VIEW Vista_Clientes_Pedidos
AS
SELECT DISTINCT
	c.id AS id_cliente,
    c.nombre,
	c.email
FROM
	clientes c
JOIN
	pedidos p ON c.id = p.id_cliente;
    
-- Abrir la vista
SELECT * FROM Vista_Clientes_Pedidos;