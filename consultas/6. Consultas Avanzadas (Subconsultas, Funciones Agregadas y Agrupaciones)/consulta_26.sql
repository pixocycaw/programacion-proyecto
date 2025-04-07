-- Crear la vista
CREATE VIEW productos_promedio
AS
SELECT
	AVG(precio) AS precio_promedio
FROM
	productos;
     
-- Abrir la vista
SELECT * FROM productos_promedio;