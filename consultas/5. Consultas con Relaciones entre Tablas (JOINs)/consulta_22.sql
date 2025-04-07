-- Crear la vista
CREATE VIEW total_ingresos
AS
SELECT
	SUM(precio_total) AS total_ingresos
FROM
	pedidos
WHERE
	estado = 'procesado' OR estado = 'enviado';	-- solo los que son procesados o enviados
     
-- Abrir la vista
SELECT * FROM total_ingresos;