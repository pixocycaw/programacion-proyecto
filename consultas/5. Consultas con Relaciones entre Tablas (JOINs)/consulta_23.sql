-- Crear la vista
CREATE VIEW todos_pedidos_de_cliente
AS
SELECT
	p.id AS pedido_id, p.estado, p.fecha, p.precio_total
FROM
	pedidos p
JOIN
	clientes c ON p.id_cliente = c.id
WHERE
	c.nombre = 'Juan' AND c.apellidos = 'Muñoz Pérez';

-- Abrir la vista
SELECT * FROM todos_pedidos_de_cliente;