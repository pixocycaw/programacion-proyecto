-- Crear la vista
CREATE VIEW pedidos_con_productos_y_clientes
AS
SELECT 
    ped.id AS id_pedido,
    ped.fecha AS fecha_pedido,
    ped.estado AS estado_pedido,
    ped.precio_total AS precio_total_pedido,
    c.id AS id_cliente,
    c.nombre AS nombre_cliente,
    c.apellidos AS apellidos_cliente,
    c.direccion AS direccion_cliente,
    dp.id_producto AS id_producto,
    p.nombre AS nombre_producto,
    dp.cantidad AS cantidad_producto,
    dp.precio_subtotal AS precio_subtotal_producto
FROM 
    pedidos ped
JOIN 
    clientes c ON ped.id_cliente = c.id
JOIN 
    detalles_pedido dp ON ped.id = dp.id_pedido
JOIN 
    productos p ON dp.id_producto = p.id
ORDER BY 
    ped.id, dp.id;
     
-- Abrir la vista
SELECT * FROM pedidos_con_productos_y_clientes;