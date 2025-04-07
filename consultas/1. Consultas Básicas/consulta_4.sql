SELECT 
    dp.id_pedido,
    c.nombre AS cliente,
    p.nombre AS nombre_producto,
    dp.cantidad,
    dp.precio_subtotal
FROM 
    detalles_pedido dp
JOIN 
    productos p ON dp.id_producto = p.id
JOIN 
    pedidos ped ON dp.id_pedido = ped.id
JOIN
	clientes c ON ped.id_cliente = c.id
ORDER BY 
    dp.precio_subtotal DESC;