-- Crear la vista
CREATE VIEW productos_en_orden
AS
SELECT
	p.nombre AS producto,
    p.descripcion,
    p.precio
FROM
	productos p
ORDER BY
	precio DESC;
     
-- Abrir la vista
SELECT * FROM productos_en_orden;