-- Crear la vista
CREATE VIEW pedidos_detalles_con_producto
AS
SELECT 
	dp.id AS id_detalle, 
	p.nombre AS producto_nombre, 
	dp.cantidad, 
	dp.precio_subtotal, 
	ped.fecha, 
	ped.estado, 
	ped.precio_total
FROM
	detalles_pedido dp
JOIN
	productos p ON dp.id_producto = p.id
JOIN
	pedidos ped ON dp.id_pedido = ped.id
ORDER BY
	ped.fecha DESC;
     
-- Abrir la vista
SELECT * FROM pedidos_detalles_con_producto;