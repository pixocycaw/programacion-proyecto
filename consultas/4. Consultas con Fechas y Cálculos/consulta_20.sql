-- Crear la vista
CREATE VIEW productos_mas_de_20_unidades
AS
SELECT
	* 
FROM
	productos
WHERE
	stock > 20
ORDER BY
	stock;
     
-- Abrir la vista
SELECT * FROM productos_mas_de_20_unidades;