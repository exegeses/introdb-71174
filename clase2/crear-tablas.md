# Crear tablas dentro de una base de datos

> Para crear una tabla utilizamos el comando **CREATE TABLE** 

> Sintáxis: 

    CREATE TABLE nombreTabla  
    ( 
        nombreColumna1 tipo características,
        nombreColumna2 tipo características,
        nombreColumna3 tipo características,
        nombreColumna4 tipo características
    );

> Ejemplo práctico:

    CREATE TABLE personas  
    (  
        id smallint unsigned auto_increment primary key not null,  
        apellido varchar(30) not null,
        nombre varchar(30) not null,
        dni int unsigned unique not null,
        alta date not null
    );