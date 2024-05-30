
--inner Join
SELECT c.id_compra, cl.nombre AS CLIENTE, c.fecha_compra, c.total
from compras c
JOIN clientes cl ON c.id_cliente = cl.id_cliente;

--LEFT Join
SELECT c.id_compra, cl.nombre AS CLIENTE, c.fecha_compra, c.total
from compras c
LEFT JOIN clientes cl ON c.id_cliente = cl.id_cliente;

--RIGHT Join
SELECT c.id_compra, cl.nombre AS CLIENTE, c.fecha_compra, c.total
from compras c
RIGHT JOIN clientes cl ON c.id_cliente = cl.id_cliente;


--FULL JOIM
SELECT * FROM clientes cl
FULL JOIN compras c ON c.id_cliente = cl.id_cliente;
