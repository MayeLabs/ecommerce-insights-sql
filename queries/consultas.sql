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


