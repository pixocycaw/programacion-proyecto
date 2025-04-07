-- Crear la vista
CREATE VIEW productos_mas_vendidos
AS
SELECT 
	p.id AS id_producto,
	p.nombre AS producto,
	SUM(dp.cantidad) AS unidades_vendidas
FROM 
	detalles_pedido dp
JOIN 
	productos p ON dp.id_producto = p.id
GROUP BY 
	p.id
ORDER BY 
	unidades_vendidas DESC;
    
-- Abrir la vista
SELECT * FROM productos_mas_vendidos;