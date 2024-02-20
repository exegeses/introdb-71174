# Consultas en SQL

> Instrucciones vistas

    -- listar tablas en una base  
    SHOW TABLES;  

    -- ver la estructura de una tabla  
    DESCRIBE nombreTabla;

> Para hacer consultas una base de datos la palabra reservada 
> más utilizada es la palabra **SELECT**

## Consultas a una tabla de una base de datos

> Cuando damos una consulta a una tabla de una base de datos
> Vamos a combinar la palabra **SELECT** con la palabra **FROM**

> Traer todos los datos de la tabla destinos

    SELECT * FROM destinos;  

> Traer los datos de solamente algunas columnas

    SELECT nombreCol, nombreCol FROM nombreTabla;

    SELECT aeropuerto, precio  
      FROM destinos;

## Ordenando los registros

> Para ordenar los registros utilizamos **ORDER BY**

    SELECT aeropuerto, precio    
      FROM destinos  
      ORDER BY idRegion, precio;

## Filtrado de registros

> Filtrar registros significa aplicar una condición que restrinja la cantidad de registros que vamos a traer
> Hay una palabra reservada para implementar un filtro: **WHERE**

> Traer aeropuerto y precio de los destinos de la región 5

    SELECT aeropuerto, precio  
    FROM destinos  
    WHERE idRegion = 5;  

> Traer aeropuerto y precio de los destinos 
> con precio entre 6400 y 8600

    SELECT aeropuerto, precio    
      FROM destinos  
      WHERE precio >= 6400  
      AND precio <= 8600;

    SELECT aeropuerto, precio    
      FROM destinos  
      WHERE precio BETWEEN 6400 AND 8600;