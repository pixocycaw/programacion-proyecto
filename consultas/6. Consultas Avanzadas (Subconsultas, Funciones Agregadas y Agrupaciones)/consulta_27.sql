-- Crear la vista
CREATE VIEW productos_sin_pedido
AS
SELECT
	p.id,
    p.nombre
FROM
	productos p
LEFT JOIN	-- con LEFT JOIN nos aseguramos que todos los pedidos se incluyen
	detalles_pedido dp ON p.id = dp.id_producto
WHERE
	dp.id_producto IS NULL;
     
-- Abrir la vista
SELECT * FROM productos_sin_pedido;