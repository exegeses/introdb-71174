-- tabla combustibles
create table combustibles
(
    idCombustible tinyint unsigned auto_increment primary key not null,
    nombre varchar(30) unique not null
);

insert into combustibles
    values
    ( DEFAULT, 'nafta' ),
    ( DEFAULT, 'diesel' ),
    ( DEFAULT, 'ecodiesel' );

-- Tabla vehículos
create table vehiculos
(
    idVehiculo smallint unsigned auto_increment primary key not null,
    nombre varchar(30) unique not null,
    idCombustible tinyint unsigned not null,
    ruedas tinyint unsigned not null
);

insert into vehiculos
    values
    ( default, 'moto', 3, 2 ),
    ( default, 'auto', 1, 4 ),
    ( default, 'avion', 1, 6 ),
    ( default, 'bote', 2, 0 );

-- Consulta con relación
SELECT vehiculos.nombre, combustibles.nombre
  FROM vehiculos, combustibles
  WHERE vehiculos.idCombustible = combustibles.idCombustible;

