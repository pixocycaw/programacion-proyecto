-- Crear la vista
CREATE VIEW inventario_total
AS
SELECT 
	SUM(precio * stock) AS valor_total_inventario
FROM
	productos;
     
-- Abrir la vista
SELECT * FROM inventario_total;