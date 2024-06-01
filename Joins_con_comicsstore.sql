SELECT c.nombre, i.cantidad_disponible
FROM comics c
JOIN inventario i ON c.id_comic = i.id_comic
WHERE i.cantidad_disponible >= 0;



SELECT c.id_comic,c.nombre,c.enno,c.precio,cc.id_cc,cc.cantidad,cp.id_compra,cp.fecha_compra,cp.total,
i.cantidad_disponible AS inventario_cantidad
FROM comics c
LEFT JOIN 
    comics_compras cc ON c.id_comic = cc.id_comic
LEFT JOIN 
    compras cp ON cc.id_compra = cp.id_compra
LEFT JOIN 
    inventario i ON c.id_comic = i.id_comic;

SELECT c.id_comic,c.nombre, i.cantidad_disponible AS inventario_cantidad
FROM 
    comics c
LEFT JOIN inventario i ON c.id_comic = i.id_comic;

SELECT c.id_comic, c.nombre, c.enno,
    c.precio, i.id_inventario, i.cantidad_disponible, i.disponibilidad, cp.id_compra, cp.id_compra
FROM 
    comics c
LEFT JOIN inventario i ON c.id_comic = i.id_comic
LEFT JOIN compras cp ON c.id_comic = cp.id_compra;


SELECT cl.nombre AS nombre_cliente, co.id_compra AS compra, cm.nombre AS comic,
  cc.cantidad AS cantidad, inv.cantidad_disponible AS en_inventario
FROM clientes cl
INNER JOIN compras co ON cl.id_cliente = co.id_cliente
INNER JOIN comics_compras cc ON co.id_compra = cc.id_compra
INNER JOIN comics cm ON cc.id_comic = cm.id_comic
LEFT JOIN inventario inv ON cm.id_comic = inv.id_comic
WHERE cc.cantidad >= 0;
