CREATE VIEW Vista_ComprasComic AS
SELECT cc.id_cc, cc.cantidad, c.nombre, cp.id_compra, cp.fecha_compra, cp.total
FROM comics_compras cc
JOIN comics c ON c.id_comic = cc.id_comic
JOIN compras cp ON cp.id_compra = cp.id_compra;
SELECT cc.id_cc, c.nombre, cc.cantidad AS cantidad_comicscomprados
FROM clientes c
JOIN compras co ON c.id_cliente = co.id_cliente
JOIN comics_compras cc ON co.id_compra = cc.id_compra;

SELECT * From Vista_ComicsComprados;


SELECT * From Vista_AutoresComics;

SELECT * FROM Vista_ComprasClienteAutores;