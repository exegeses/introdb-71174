# creación de tablas monedas

create table monedas
(
    id tinyint unsigned auto_increment primary key not null,
    aprox float not null,
    exacto decimal(10,2) not null
);

-- Inserción de datos
insert into monedas
    VALUES
        ( DEFAULT, 21, 83 ),
        ( DEFAULT, 83, 76.5 ),
        ( DEFAULT, 76.5, 4 ),
        ( DEFAULT, 4, 15.3 ),
        ( DEFAULT, 15.3, 21 );