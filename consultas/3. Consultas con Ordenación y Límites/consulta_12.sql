-- Crear la vista
CREATE VIEW cantidad_pedidos
AS
SELECT 
	COUNT(*) AS total_pedidos
FROM 
	pedidos;
     
-- Abrir la vista
SELECT * FROM cantidad_pedidos;