# Modificación de datos de una tabla

> Para modificar los datos de una tabla 
> utilizamos el comando **UPDATE**

> Sintáxis: 

    UPDATE nombreTabla  
        SET  
            nombreColumna = valor,
            nombreColumna2 = valor2,
            nombreColumna3 = valor3
      WHERE colID = valorID;

> Ejemplo práctico: 

    UPDATE personas  
        SET  
            apellido = 'Gonzáles',  
            alta = '2005-09-29'
      WHERE id = 2;


    UPDATE productos  
        SET  
            precio = precio*1.05  
        WHERE idProveedor = 25; 

    UPDATE productos  
        SET  
            precio = precio*1.05  
        WHERE idProveedor = 25  
        AND idMarca = 6  
        AND idCategoria = 11;

    UPDATE destinos  
        SET   
            idRegion = 7  
      WHERE idDestino = 5  
        OR idDestino = 6;  

    UPDATE destinos  
        SET   
            idRegion = 7  
      WHERE idDestino IN( 5, 6 );  