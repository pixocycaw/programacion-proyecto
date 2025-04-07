SELECT 
    c.id AS id_cliente,
    c.nombre AS cliente_nombre,
    c.apellidos AS cliente_apellidos,
    COUNT(ped.id) AS num_pedidos
FROM 
    clientes c
JOIN 
    pedidos ped ON c.id = ped.id_cliente
GROUP BY 
    c.id
ORDER BY
	num_pedidos;