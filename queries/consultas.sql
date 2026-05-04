/* *** PARTE I *** */

/* Ejercicio 1: 
    Nombres y correos electrónicos de todos nuestros clientes*/
SELECT nombre,
	email 
FROM clientes c 

/* Ejercicio 2: 
    Qué clientes viven en 'Madrid' */
SELECT *
FROM clientes c 
WHERE c.ciudad = 'Madrid'

/* Ejercicio 3: 
    Qué productos tienen un precio mayor a 100€ */
SELECT *
FROM productos p 
WHERE p.precio > 100

/* Ejercicio 4: 
    Cuáles son los productos que pertenecen a la categoría 'Electronica' */
SELECT *
FROM productos p 
WHERE p.categoria = 'Electronica'


/* Ejercicio 5: 
    Muestra el nombre y precio de todos los productos, ordenados del más barato al más caro */
SELECT p.nombre,
	p.precio 
FROM productos p 
ORDER BY p.precio DESC 


/* *** PARTE II *** */

/* Ejercicio 1: 
    ¿Cuántos clientes tenemos registrados en total? */
SELECT COUNT(*) AS cliente_total
FROM clientes c


SELECT COUNT(c.cliente_id) 
FROM clientes c

/* Ejercicio 2: 
    ¿Cuál es el precio del producto más caro que vendemos?*/
SELECT MAX(p.price)
FROM productos p 

/* Ejercicio 3: 
    ¿Cuál es el valor total promedio de los pedidos realizados?*/
SELECT AVG(ped.total)
FROM pedidos ped

/* Ejercicio 4: 
    Cuánto dinero ha ingresado la tienda en total (suma de la columna total en la tabla pedidos)? */
SELECT SUM(ped.total)
FROM pedidos ped

/* *** PARTE III *** */

/* Ejercicio 0: 
    Puedes mostrar el nombre del cliente y la fecha de cada pedido que se ha hecho? (Une clientes y pedidos) */
SELECT  c.nombre,
	p.fecha
FROM clientes c 
JOIN pedidos p ON c.cliente_id = p.cliente_id 

/* Ejercicio 1: 
    Lista los 10 clientes que más han gastado en total (nombre, email, total gastado) */
SELECT c.nombre,
		c.email,
		SUM(p.total) AS total
FROM clientes c 
JOIN pedidos p ON c.cliente_id = p.cliente_id 
GROUP BY p.cliente_id 
ORDER BY total DESC
LIMIT 10

/* Ejercicio 2: 
  	Para cada categoría de producto, muestra el número de unidades vendidas y el ingreso total */
SELECT p.categoria AS categoria,
		SUM(lp.cantidad) AS unidades_vendidas,
		SUM(lp.cantidad*lp.precio_unitario) AS ingreso_total
FROM productos p 
JOIN lineas_pedido lp on p.producto_id = lp.producto_id 
GROUP BY p.categoria 
ORDER BY p.categoria

/* Ejercicio 3:
	Encuentra los clientes que se registraron en 2024 pero no han hecho ningun pedido*/
SELECT c.*
FROM clientes c 
WHERE EXTRACT (YEAR FROM c.fecha_registro ) = 2024 AND  c.cliente_id  NOT IN (SELECT p.cliente_id FROM pedidos p)

/* Ejercicio 4: 
	Muestra el ranking de productos más vendidos, incluyendo el porcentaje sobre el total de ventas  */
WITH productos_totales (producto_id, nombre, categoria, und_total, total_precio)
AS (
	SELECT p.producto_id,
			p.nombre,
			p.categoria,
			SUM(lp.cantidad) as und_total,
			SUM(lp.cantidad * p.precio) total_precio
	FROM productos p 
	JOIN lineas_pedido lp on p.producto_id = lp.producto_id 
	GROUP BY p.producto_id, p.nombre, p.categoria
) 
SELECT producto_id,
	nombre,
	categoria,
	und_total, 
	total_precio,
	RANK() OVER (ORDER BY total_precio DESC) AS ranking,
	ROUND(und_total*100 / SUM(und_total) OVER (), 2) AS porcentaje_unidades,
	ROUND(total_precio * 100 / SUM(total_precio) OVER (),2 ) AS porcentaje_ingresos
from productos_totales
order by ranking;

