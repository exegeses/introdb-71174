# alias en SQL

-- Los alias nos van a servir principalmente
-- para renombrar una columna o una tabla
#! El renombrado no es permanente es solamente para el reporte

-- Se implementa un alias con la palabra reservada **AS**

SELECT prdNombre AS Producto,
       prdPrecio AS Precio,
       mkNombre AS Marca,
       catNombre AS Categoria
FROM productos
         JOIN marcas
              ON productos.idMarca = marcas.idMarca
         JOIN categorias
              ON productos.idCategoria = categorias.idCategoria;


SELECT v.nombre, c.nombre
    FROM vehiculos AS v, combustibles AS c
    WHERE v.idCombustible = c.idCombustible;


SELECT prdNombre AS Producto,
       prdPrecio AS Precio,
       mkNombre AS Marca,
       catNombre AS Categoria
    FROM productos AS p
         JOIN marcas as m
              ON p.idMarca = m.idMarca
         JOIN categorias as c
              ON p.idCategoria = c.idCategoria;

#! Advertencia! podemos implementar un alias
# sin mencionar la palabra **AS**