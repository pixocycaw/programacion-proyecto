-- Crear la vista
CREATE VIEW productos_cantidad_total
AS
SELECT
	SUM(cantidad) AS total_productos_vendidos
FROM
	detalles_pedido;
     
-- Abrir la vista
SELECT * FROM productos_cantidad_total;