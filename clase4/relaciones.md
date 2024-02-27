# Relaciones entre tablas

> Si queremos traer datos de dos o más tablas 
> tenemos dos técnicas para lograrlo

## 1.- Table relation

> La técnica **table relation** se logra 
> mencionando en el listado de tablas (después del **FROM**)  
> las tablas necesarias separadas por comas.
> Y luego mediante un filtro (**WHERE**) igualamos la columna en común

> Sintáxis: 

    SELECT colTablaA, colTablaA, colTablaB  
        FROM tablaA, tablaB  
        WHERE tablaA.colFK = tablaB.PK;  

> Ejemplo práctico: 

    SELECT aeropuerto, precio, nombre  
      FROM destinos, regiones  
      WHERE destinos.idRegion = regiones.idRegion;  

    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos, marcas  
      WHERE productos.idMarca = marcas.idMarca;

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos, marcas, categorias  
      WHERE productos.idMarca = marcas.idMarca  
        AND productos.idCategoria = categorias.idCategoria;


## 2.- JOIN

> En la técnica **JOIN** no se mencionan 
> en el listado de tablas (después del **FROM**)
> todas las tablas necesarias,  
> sólo se menciona la tabla principal.
> Utilizamos la palabra reservada **JOIN** 
> para mencionar la tabla secundaria
> Y finalizamos igualando la columna en común 
> después de la palabra reservada **ON**

> Sintáxis:

    SELECT colTablaA, colTablaA, colTablaB  
        FROM tablaA  
        JOIN tablaB  
          ON tablaA.fk = tablaB.pk;

> Ejemplo práctico: 

    SELECT aeropuerto, precio, nombre  
      FROM destinos  
      JOIN regiones  
        ON destinos.idRegion = regiones.idRegion;

    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca;

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria; 