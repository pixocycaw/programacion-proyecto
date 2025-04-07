-- Crear la vista
CREATE VIEW clientes_cantidad
AS
SELECT
	COUNT(*) AS total_clientes
FROM
	clientes;
     
-- Abrir la vista
SELECT * FROM clientes_cantidad;