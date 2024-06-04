select *from comics;
select *from comics_compras

select a.nombre as nombre_autor, count(cc.id_comic) as cantidad_compras
FROM autores a 
join comics c on a.id_autor = c.id_autor
join comics_compras cc on c.id_comic = cc.id_comic
group by a.nombre;

SELECT c.nombre as comic, a.nombre as autor, a.pais_origen
from comics c
left join autores a ON c.id_autor = a.id_autor;




