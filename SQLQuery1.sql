create table clientes(
id_cliente bigint identity(1,1) PRIMARY KEY,
nombre varchar(100),
email Nvarchar (255),
pass Varchar (255)
);

create table comics(
id_comic bigint identity(1,1) PRIMARY KEY,
nombre varchar(100),
enno tinyint,
precio decimal (10, 2)
);

create table compras(
id_compra bigint identity (100, 3) PRIMARY KEY,
id_cliente bigint,
fecha_compra DATE,
total DECIMAL (10, 2),
FOREIGN KEY (id_cliente) REFERENCES Clientes (id_cliente),
);

create table inventario (
id_inventario bigint identity (200,1) primary key,
id_comic bigint,
cantidad_disponible INT,
disponibilidad binary,
FOREIGN KEY (id_comic) references comics (id_comic)
);

CREATE TABLE comics_compras (
id_cc bigint identity (1000,2) PRIMARY KEY,
cantidad tinyint,
id_compra bigint,
id_comic bigint,
FOREIGN KEY (id_compra) references compras (id_compra),
FOREIGN KEY (id_comic) references comics (id_comic),
);