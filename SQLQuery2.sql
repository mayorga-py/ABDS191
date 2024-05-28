insert into clientes(nombre, email, pass) values 
('luis Mayorga', 'luis@gmail.com', '123456'),
('Eduardo Becerra', 'edu@gmail.com', '123456'),
('Oscar Arroyo', 'oscar@gmail.com', '123456'),
('Itzel Lopez', 'itzel@gmail.com', '123456'),
('Oswaldo Larrinaga', 'os@gmail.com', '123456'),
('Karen Olvera', 'kare@gmail.com', '123456'),
('Dioego Armando', 'diego@gmail.com', '123456'),
('Rommel Pacheco', 'rommel@gmail.com', '123456'),
('Jose Torres', 'jose@gmail.com', '123456'),
('Jorge Rivera', 'jorge@gmail.com', '123456'),
('Alejandra Ugalde', 'ale@gmail.com', '123456'),
('Karla Tamayo', 'karla@gmail.com', '123456');




INSERT INTO inventario (id_comic, cantidad_disponible)
SELECT id_comic, 10
FROM comics;


INSERT INTO compras (id_cliente, fecha_compra, total) VALUES
(1, '2024-05-25', 500),
(2, '2024-05-26', 550),
(3, '2024-05-27', 300),
(4, '2024-05-28', 600),
(5, '2024-05-29', 600),
(6, '2024-05-30', 900),
(7, '2024-05-31', 550);

INSERT INTO compras (id_cliente, fecha_compra, total) VALUES
(1, '2024-06-01', 400.00),
(2, '2024-06-02', 650.00),
(3, '2024-06-03', 250.00);


select * from compras;