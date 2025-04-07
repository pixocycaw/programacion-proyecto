-- Crear la vista
CREATE VIEW productos_de_yoga
AS
SELECT * 
FROM productos 
WHERE nombre LIKE '%yoga%'; -- no hay productos con palabra 'Laptop'
							-- pues comprobemos con productos que si
                            -- que tenemos
     
-- Abrir la vista
SELECT * FROM productos_de_yoga;