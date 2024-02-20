# creación de tabla regiones

create table regiones
(
    idRegion smallint unsigned auto_increment primary key not null,
    nombre varchar(45) unique not null
);

INSERT INTO regiones
    VALUES
        ( DEFAULT, 'América del Sur' ),
        ( DEFAULT, 'América Central' ),
        ( DEFAULT, 'Caribe y México' ),
        ( DEFAULT, 'América del Norte' ),
        ( DEFAULT, 'Europa Occidental'),
        ( DEFAULT, 'Europa del Este'),
        ( DEFAULT, 'Asia'),
        ( DEFAULT, 'Oceanía');