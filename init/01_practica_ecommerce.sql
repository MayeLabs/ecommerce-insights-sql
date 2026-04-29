-- ============================================
-- Práctica guiada: E-commerce
-- Base de datos: anban
-- ============================================

-- Tablas
CREATE TABLE clientes (
    cliente_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    ciudad VARCHAR(80),
    fecha_registro DATE NOT NULL
);

CREATE TABLE productos (
    producto_id SERIAL PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    categoria VARCHAR(80) NOT NULL,
    precio DECIMAL(10,2) NOT NULL
);

CREATE TABLE pedidos (
    pedido_id SERIAL PRIMARY KEY,
    cliente_id INT NOT NULL REFERENCES clientes(cliente_id),
    fecha DATE NOT NULL,
    total DECIMAL(10,2) NOT NULL
);

CREATE TABLE lineas_pedido (
    linea_id SERIAL PRIMARY KEY,
    pedido_id INT NOT NULL REFERENCES pedidos(pedido_id),
    producto_id INT NOT NULL REFERENCES productos(producto_id),
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL
);

-- ============================================
-- Datos: Clientes (20)
-- ============================================
INSERT INTO clientes (nombre, email, ciudad, fecha_registro) VALUES
('Laura Martinez', 'laura.martinez@email.com', 'Madrid', '2023-01-15'),
('Carlos Ruiz', 'carlos.ruiz@email.com', 'Barcelona', '2023-02-20'),
('Ana Garcia', 'ana.garcia@email.com', 'Valencia', '2023-03-10'),
('Pedro Lopez', 'pedro.lopez@email.com', 'Sevilla', '2023-04-05'),
('Maria Fernandez', 'maria.fernandez@email.com', 'Madrid', '2023-05-12'),
('Javier Sanchez', 'javier.sanchez@email.com', 'Bilbao', '2023-06-18'),
('Elena Torres', 'elena.torres@email.com', 'Barcelona', '2023-07-22'),
('David Moreno', 'david.moreno@email.com', 'Zaragoza', '2023-08-30'),
('Sofia Navarro', 'sofia.navarro@email.com', 'Madrid', '2023-09-14'),
('Miguel Romero', 'miguel.romero@email.com', 'Malaga', '2023-10-01'),
('Carmen Diaz', 'carmen.diaz@email.com', 'Valencia', '2023-11-08'),
('Pablo Herrera', 'pablo.herrera@email.com', 'Sevilla', '2023-12-03'),
('Isabel Jimenez', 'isabel.jimenez@email.com', 'Madrid', '2024-01-10'),
('Raul Gutierrez', 'raul.gutierrez@email.com', 'Barcelona', '2024-02-14'),
('Lucia Alvarez', 'lucia.alvarez@email.com', 'Bilbao', '2024-03-20'),
('Fernando Castro', 'fernando.castro@email.com', 'Zaragoza', '2024-04-25'),
('Andrea Molina', 'andrea.molina@email.com', 'Malaga', '2024-05-30'),
('Roberto Ortega', 'roberto.ortega@email.com', 'Madrid', '2024-06-15'),
('Cristina Vega', 'cristina.vega@email.com', 'Valencia', '2024-07-01'),
('Alberto Campos', 'alberto.campos@email.com', 'Sevilla', '2024-08-10');

-- ============================================
-- Datos: Productos (15)
-- ============================================
INSERT INTO productos (nombre, categoria, precio) VALUES
('Portatil ProBook 15', 'Electronica', 899.99),
('Raton inalambrico MX', 'Electronica', 49.99),
('Teclado mecanico K70', 'Electronica', 129.99),
('Monitor 27 pulgadas', 'Electronica', 349.99),
('Auriculares Bluetooth', 'Electronica', 79.99),
('Camiseta basica algodon', 'Ropa', 19.99),
('Pantalon vaquero slim', 'Ropa', 49.99),
('Zapatillas running', 'Ropa', 89.99),
('Chaqueta impermeable', 'Ropa', 119.99),
('Cafetera espresso', 'Hogar', 199.99),
('Aspiradora robot', 'Hogar', 299.99),
('Lampara de escritorio', 'Hogar', 39.99),
('Set de sartenes', 'Hogar', 69.99),
('Mochila urbana', 'Accesorios', 45.99),
('Reloj deportivo', 'Accesorios', 159.99);

-- ============================================
-- Datos: Pedidos y lineas de pedido
-- ============================================

-- Pedido 1: Laura Martinez - 2 productos
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (1, '2023-03-01', 949.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 1, 899.99),
(1, 2, 1, 49.99);

-- Pedido 2: Laura Martinez - 1 producto
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (1, '2023-06-15', 349.99);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(2, 4, 1, 349.99);

-- Pedido 3: Carlos Ruiz - 3 productos
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (2, '2023-04-10', 199.97);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(3, 6, 2, 19.99),
(3, 7, 1, 49.99),
(3, 14, 2, 45.99);

-- Pedido 4: Ana Garcia - 2 productos
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (3, '2023-05-20', 579.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(4, 1, 1, 899.99),
(4, 5, 1, 79.99);

-- Pedido 5: Pedro Lopez - 1 producto
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (4, '2023-06-01', 299.99);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(5, 11, 1, 299.99);

-- Pedido 6: Maria Fernandez - 4 productos
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (5, '2023-07-10', 289.96);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(6, 6, 3, 19.99),
(6, 8, 1, 89.99),
(6, 12, 1, 39.99),
(6, 14, 2, 45.99);

-- Pedido 7: Maria Fernandez - 2 productos
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (5, '2023-09-22', 1059.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(7, 1, 1, 899.99),
(7, 15, 1, 159.99);

-- Pedido 8: Javier Sanchez - 2 productos
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (6, '2023-08-15', 179.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(8, 3, 1, 129.99),
(8, 2, 1, 49.99);

-- Pedido 9: Elena Torres - 3 productos
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (7, '2023-09-05', 309.97);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(9, 9, 1, 119.99),
(9, 8, 1, 89.99),
(9, 7, 1, 49.99);

-- Pedido 10: Elena Torres - 1 producto
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (7, '2023-11-20', 199.99);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(10, 10, 1, 199.99);

-- Pedido 11: David Moreno - 2 productos
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (8, '2023-10-12', 389.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(11, 4, 1, 349.99),
(11, 12, 1, 39.99);

-- Pedido 12: Sofia Navarro - 5 productos
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (9, '2023-11-01', 469.95);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(12, 6, 2, 19.99),
(12, 7, 1, 49.99),
(12, 8, 1, 89.99),
(12, 9, 1, 119.99),
(12, 14, 1, 45.99);

-- Pedido 13: Sofia Navarro - 1 producto
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (9, '2024-01-15', 899.99);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(13, 1, 1, 899.99);

-- Pedido 14: Miguel Romero - 2 productos
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (10, '2023-12-01', 249.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(14, 10, 1, 199.99),
(14, 2, 1, 49.99);

-- Pedido 15: Carmen Diaz - 3 productos
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (11, '2023-12-20', 159.97);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(15, 6, 1, 19.99),
(15, 13, 1, 69.99),
(15, 12, 1, 39.99);

-- Pedido 16: Pablo Herrera - 1 producto
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (12, '2024-01-05', 899.99);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(16, 1, 1, 899.99);

-- Pedido 17: Pablo Herrera - 2 productos
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (12, '2024-03-10', 209.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(17, 3, 1, 129.99),
(17, 5, 1, 79.99);

-- Pedido 18: Raul Gutierrez - 2 productos
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (14, '2024-04-18', 539.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(18, 4, 1, 349.99),
(18, 8, 1, 89.99);

-- Pedido 19: Lucia Alvarez - 3 productos
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (15, '2024-05-22', 269.97);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(19, 13, 1, 69.99),
(19, 10, 1, 199.99),
(19, 6, 1, 19.99);

-- Pedido 20: Laura Martinez - 3 productos
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (1, '2024-06-10', 579.97);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(20, 9, 1, 119.99),
(20, 15, 1, 159.99),
(20, 11, 1, 299.99);

-- Pedido 21: Maria Fernandez - 2 productos
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (5, '2024-07-05', 229.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(21, 3, 1, 129.99),
(21, 12, 1, 39.99);

-- Pedido 22: Elena Torres - 2 productos
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (7, '2024-08-12', 195.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(22, 14, 1, 45.99),
(22, 15, 1, 159.99);

-- Pedido 23: Sofia Navarro - 2 productos
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (9, '2024-09-01', 149.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(23, 2, 1, 49.99),
(23, 7, 1, 49.99);

-- Pedido 24: David Moreno - 1 producto
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (8, '2024-09-15', 899.99);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(24, 1, 1, 899.99);

-- Pedido 25: Carlos Ruiz - 2 productos
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (2, '2024-10-01', 509.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(25, 4, 1, 349.99),
(25, 15, 1, 159.99);