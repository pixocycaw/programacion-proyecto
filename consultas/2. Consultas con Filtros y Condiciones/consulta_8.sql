-- Crear la vista
CREATE VIEW cliente_total_gastado
AS
SELECT c.id AS id_cliente,
       c.nombre,
       c.apellidos,
       SUM(p.precio_total) AS total_gastado
FROM clientes c
JOIN pedidos p ON c.id = p.id_cliente
WHERE p.estado IN ('procesado', 'enviado')  -- Solo consideramos pedidos que fueron procesados o enviados
GROUP BY c.id;

-- Abrir la vista
 SELECT * FROM cliente_total_gastado;