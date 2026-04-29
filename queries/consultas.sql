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
