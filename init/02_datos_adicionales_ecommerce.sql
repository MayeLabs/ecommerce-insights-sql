-- ============================================
-- Datos adicionales para práctica e-commerce
-- Todos los totales están calculados y verificados
-- ============================================
-- Añade: 12 clientes nuevos (IDs 21-32)
--        23 pedidos nuevos  (IDs 26-48)
-- 2 clientes sin pedidos para el Ejercicio 3 (Natalia Ramos, Oscar Vargas)
-- ============================================

-- ============================================
-- Clientes adicionales (21-32)
-- ============================================
INSERT INTO clientes (nombre, email, ciudad, fecha_registro) VALUES
('Marta Iglesias',  'marta.iglesias@email.com',  'Madrid',    '2024-01-20'),
('Diego Serrano',   'diego.serrano@email.com',    'Barcelona', '2024-02-10'),
('Nuria Blanco',    'nuria.blanco@email.com',     'Valencia',  '2024-03-05'),
('Alvaro Prieto',   'alvaro.prieto@email.com',    'Sevilla',   '2024-04-12'),
('Beatriz Reyes',   'beatriz.reyes@email.com',    'Madrid',    '2024-05-08'),
('Gonzalo Soto',    'gonzalo.soto@email.com',     'Bilbao',    '2024-06-22'),
('Patricia Lara',   'patricia.lara@email.com',    'Zaragoza',  '2024-07-14'),
('Victor Medina',   'victor.medina@email.com',    'Malaga',    '2024-08-03'),
('Silvia Pascual',  'silvia.pascual@email.com',   'Madrid',    '2024-09-18'),
('Hector Fuentes',  'hector.fuentes@email.com',   'Barcelona', '2024-10-05'),
-- Sin pedidos (enriquecen el Ejercicio 3: clientes de 2024 sin pedidos)
('Natalia Ramos',   'natalia.ramos@email.com',    'Valencia',  '2024-11-01'),
('Oscar Vargas',    'oscar.vargas@email.com',     'Sevilla',   '2024-12-10');

-- ============================================
-- Pedidos adicionales (26-48)
-- ============================================

-- Pedido 26: Marta Iglesias
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (21, '2024-02-14', 1109.97);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(26, 1,  1, 899.99),
(26, 3,  1, 129.99),
(26, 5,  1, 79.99);

-- Pedido 27: Marta Iglesias
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (21, '2024-05-20', 509.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(27, 4,  1, 349.99),
(27, 15, 1, 159.99);

-- Pedido 28: Diego Serrano
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (22, '2024-03-08', 379.97);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(28, 11, 1, 299.99),
(28, 12, 2, 39.99);

-- Pedido 29: Diego Serrano
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (22, '2024-07-19', 949.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(29, 1,  1, 899.99),
(29, 2,  1, 49.99);

-- Pedido 30: Nuria Blanco
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (23, '2024-04-01', 301.96);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(30, 8,  1, 89.99),
(30, 9,  1, 119.99),
(30, 14, 2, 45.99);

-- Pedido 31: Nuria Blanco
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (23, '2024-08-25', 109.96);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(31, 6,  3, 19.99),
(31, 7,  1, 49.99);

-- Pedido 32: Alvaro Prieto
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (24, '2024-05-10', 479.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(32, 4,  1, 349.99),
(32, 3,  1, 129.99);

-- Pedido 33: Alvaro Prieto
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (24, '2024-09-30', 339.96);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(33, 15, 1, 159.99),
(33, 5,  1, 79.99),
(33, 2,  2, 49.99);

-- Pedido 34: Beatriz Reyes (cliente de mayor gasto)
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (25, '2024-06-05', 1409.97);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(34, 1,  1, 899.99),
(34, 4,  1, 349.99),
(34, 15, 1, 159.99);

-- Pedido 35: Beatriz Reyes
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (25, '2024-10-12', 429.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(35, 11, 1, 299.99),
(35, 3,  1, 129.99);

-- Pedido 36: Gonzalo Soto
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (26, '2024-07-22', 179.97);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(36, 13, 2, 69.99),
(36, 12, 1, 39.99);

-- Pedido 37: Gonzalo Soto
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (26, '2024-11-03', 175.96);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(37, 8,  1, 89.99),
(37, 6,  2, 19.99),
(37, 14, 1, 45.99);

-- Pedido 38: Patricia Lara
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (27, '2024-08-15', 219.97);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(38, 9,  1, 119.99),
(38, 7,  2, 49.99);

-- Pedido 39: Patricia Lara
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (27, '2024-11-28', 979.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(39, 1,  1, 899.99),
(39, 5,  1, 79.99);

-- Pedido 40: Victor Medina
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (28, '2024-09-10', 269.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(40, 10, 1, 199.99),
(40, 13, 1, 69.99);

-- Pedido 41: Victor Medina
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (28, '2024-12-01', 449.97);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(41, 4,  1, 349.99),
(41, 2,  2, 49.99);

-- Pedido 42: Silvia Pascual
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (29, '2024-10-08', 979.96);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(42, 1,  1, 899.99),
(42, 12, 1, 39.99),
(42, 6,  2, 19.99);

-- Pedido 43: Hector Fuentes
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (30, '2024-11-15', 265.97);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(43, 3,  1, 129.99),
(43, 8,  1, 89.99),
(43, 14, 1, 45.99);

-- Pedido 44: Hector Fuentes
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (30, '2024-12-20', 209.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(44, 15, 1, 159.99),
(44, 7,  1, 49.99);

-- Pedidos extra de clientes originales (para enriquecer el top 10)

-- Pedido 45: Maria Fernandez (cliente_id 5)
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (5, '2024-11-10', 1249.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(45, 1,  1, 899.99),
(45, 4,  1, 349.99);

-- Pedido 46: Laura Martinez (cliente_id 1)
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (1, '2024-12-05', 459.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(46, 11, 1, 299.99),
(46, 15, 1, 159.99);

-- Pedido 47: Sofia Navarro (cliente_id 9)
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (9, '2024-10-20', 479.98);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(47, 4,  1, 349.99),
(47, 3,  1, 129.99);

-- Pedido 48: Elena Torres (cliente_id 7)
INSERT INTO pedidos (cliente_id, fecha, total) VALUES (7, '2024-11-30', 899.99);
INSERT INTO lineas_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(48, 1,  1, 899.99);
