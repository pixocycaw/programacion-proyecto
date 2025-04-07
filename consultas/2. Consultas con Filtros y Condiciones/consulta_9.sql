SELECT 
    ped.id AS id_pedido,
    c.nombre AS cliente_nombre,
    c.apellidos AS cliente_apellidos,
    ped.fecha,
    ped.estado,
    ped.precio_total,
    p.nombre AS nombre_producto
FROM 
    pedidos ped
JOIN 
    clientes c ON ped.id_cliente = c.id
JOIN 
    detalles_pedido dp ON ped.id = dp.id_pedido
JOIN 
    productos p ON dp.id_producto = p.id
ORDER BY
	precio_total DESC;