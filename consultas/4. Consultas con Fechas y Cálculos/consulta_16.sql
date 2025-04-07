-- Crear la vista
CREATE VIEW pedidas_ultimas_7_dias
AS
SELECT
	* 
FROM
	pedidos
WHERE
	fecha >= NOW() - INTERVAL 7 DAY
ORDER BY
	fecha;
     
-- Abrir la vista
SELECT * FROM pedidas_ultimas_7_dias;