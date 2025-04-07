-- Crear la vista
CREATE VIEW stock_promedio
AS
SELECT
	AVG(stock) AS stock_promedio
FROM
	productos;
     
-- Abrir la vista
SELECT * FROM stock_promedio;