-- Crear la vista
CREATE VIEW clientes_con_email
AS
SELECT
	c.id,
    c.nombre,
    c.apellidos,
    c.email
FROM
	clientes c
WHERE
	email IS NOT NULL;
     
-- Abrir la vista
SELECT * FROM clientes_con_email;