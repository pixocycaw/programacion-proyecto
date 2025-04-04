# Proyecto de Base de Datos para Tienda en Línea

Este proyecto consiste en diseñar una base de datos para gestionar los elementos esenciales de una tienda en línea. La base de datos debe permitir administrar clientes, productos, pedidos y los detalles de cada pedido.

## Tablas Principales

1. **Clientes**: Contendrá información de los clientes, como nombre, correo electrónico, teléfono y dirección.
2. **Productos**: Almacenará los productos disponibles, incluyendo nombre, descripción, precio y stock.
3. **Pedidos**: Registrará los pedidos realizados por los clientes, con su fecha y total.
4. **Detalles_Pedido**: Relacionará los productos con los pedidos, almacenando la cantidad y el subtotal de cada producto en un pedido.

## Requisitos

1. Crear la base de datos y las tablas mencionadas.
2. Insertar algunos datos de prueba en cada tabla.

## Consultas Básicas

1. Obtener la lista completa de clientes registrados.
2. Mostrar todos los productos disponibles en la tienda.
3. Obtener todos los pedidos realizados en la tienda.
4. Ver los detalles de todos los pedidos (productos y cantidades compradas).

## Consultas con Filtros y Condiciones

5. Listar los clientes que han realizado al menos un pedido.
6. Mostrar los productos con un stock menor a 20 unidades.
7. Contar la cantidad total de pedidos realizados por cada cliente.
8. Calcular el total gastado por cada cliente en pedidos.
9. Listar los pedidos junto con el nombre del cliente que los realizó.
10. Obtener la lista de productos más vendidos, ordenados por cantidad de unidades vendidas.

## Consultas con Ordenación y Límites

11. Obtener el pedido con el total más alto.
12. Contar la cantidad total de pedidos registrados en la tienda.
13. Obtener el stock promedio de los productos.
14. Mostrar el producto más caro disponible en la tienda.
15. Identificar el cliente que ha realizado más pedidos.

## Consultas con Fechas y Cálculos

16. Listar los pedidos realizados en los últimos 7 días.
17. Calcular el valor total del inventario (precio de productos por cantidad en stock).
18. Contar la cantidad total de clientes registrados.
19. Buscar productos cuyo nombre contenga la palabra "Laptop".
20. Obtener los productos que tienen más de 20 unidades en stock.

## Consultas con Relaciones entre Tablas (JOINs)

21. Mostrar los detalles de los pedidos junto con el nombre del producto correspondiente.
22. Calcular el total de ingresos generados por la tienda a partir de los pedidos.
23. Obtener todos los pedidos realizados por un cliente específico (por ejemplo, "Juan Pérez").
24. Listar los productos ordenados por precio de mayor a menor.
25. Mostrar los clientes que tienen registrado un correo electrónico.

## Consultas Avanzadas (Subconsultas, Funciones Agregadas y Agrupaciones)

26. Obtener el precio promedio de todos los productos.
27. Identificar los productos que no han sido vendidos en ningún pedido.
28. Calcular la cantidad total de productos vendidos en la tienda.
29. Mostrar los clientes que han realizado más de un pedido.
30. Obtener la lista de pedidos junto con los productos comprados y el cliente correspondiente.
