CREATE VIEW VISTA_CLientesCompras AS
SELECT c.id_cliente, c.nombre AS CLIENTE, c.email, cm.id_compra, cm.fecha_compra, cm.total
FROM clientes c
LEFT JOIN compras cm
ON c.id_cliente=cm.id_cliente;

SELECT * FROM vista_4tablas;