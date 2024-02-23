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

    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos, marcas  
      WHERE productos.idMarca = marcas.idMarca;

