-- Crear la vista
CREATE VIEW stock_menor_de_20
AS
SELECT
	*
FROM
	productos
WHERE
	stock < 20
ORDER BY
	stock;
 
 -- Abrir la vista
SELECT * FROM stock_menor_de_20;