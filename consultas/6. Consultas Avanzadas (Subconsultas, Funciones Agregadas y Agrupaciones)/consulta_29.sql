-- Crear la vista
CREATE VIEW clientes_con_multiples_pedidos
AS
SELECT
	c.id,
	c.nombre,
	c.apellidos,
	c.email,
	COUNT(p.id) AS num_pedidos
FROM
	clientes c
JOIN
	pedidos p ON c.id = p.id_cliente
GROUP BY
	c.id
HAVING
	COUNT(p.id) > 1
ORDER BY
	num_pedidos;
     
-- Abrir la vista
SELECT * FROM clientes_con_multiples_pedidos;