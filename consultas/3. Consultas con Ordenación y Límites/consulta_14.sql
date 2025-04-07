-- Crear la vista
CREATE VIEW producto_mas_caro
AS
SELECT 
	nombre AS producto,
    precio
FROM
	productos
ORDER BY
	precio DESC
LIMIT
	1;
     
-- Abrir la vista
SELECT * FROM producto_mas_caro;