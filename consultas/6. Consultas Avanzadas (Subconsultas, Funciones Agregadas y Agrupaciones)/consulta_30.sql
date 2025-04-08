-- Crear la vista
CREATE VIEW pedidos_con_productos_y_clientes
AS
SELECT 
	p.id AS id_pedido,
	(SELECT c.nombre
	 FROM clientes c 
	 WHERE c.id = p.id_cliente) AS cliente,
	p.fecha,
    p.estado,
	p.precio_total,
	(SELECT GROUP_CONCAT(
		 pr.nombre
		 SEPARATOR ', '
     )
	 FROM
		 detalles_pedido dp
	 JOIN
		 productos pr ON dp.id_producto = pr.id
	 WHERE
		 dp.id_pedido = p.id
    ) AS productos_comprados
FROM pedidos p;
     
-- Abrir la vista
SELECT * FROM pedidos_con_productos_y_clientes;