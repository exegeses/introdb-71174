# Vistas

-- una vista es una consulta
-- que podemos almacenar dentro de nuestra base de datos

/* el objetivo es no tener que escribir varias veces
   una misma consulta si tuviéramos que ejecutarla
   varias veces en el día/semana/mes
 */

#! Parece una tabla independiente, pero en realidad no lo es

SELECT idProducto AS id,
       prdNombre AS Producto,
       prdPrecio AS Contado,
       format( prdPrecio * 1.05, 2 ) AS 'Precio Lista',
       mkNombre AS Marca,
       catNombre AS Categoría
    FROM productos AS p
         JOIN marcas AS m
              ON p.idMarca = m.idMarca
         JOIN categorias AS c
              ON p.idCategoria = c.idCategoria;
