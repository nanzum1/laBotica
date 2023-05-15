CREATE DATABASE laBotica;
USE laBotica;

CREATE TABLE usuario (
idusuario int not null auto_increment primary key, 
username varchar(30) not null,
nombre varchar(30) not null, 
apellido varchar(30) not null, 
fechanacimiento date not null, 
clave varchar(15) not null,
run VARCHAR(10) not null unique
);

CREATE TABLE cliente (
idcliente INT not null auto_increment PRIMARY KEY,
telefono numeric (20) NOT NULL,
email VARCHAR(25) NOT NULL,
rutcliente VARCHAR(10) not null
);

CREATE TABLE administrativo (
idadministrativo int not null auto_increment primary key, 
area varchar(20) not null,
rutadmin varchar(10) not null
);

ALTER TABLE administrativo
ADD CONSTRAINT fk_rutadmin
FOREIGN KEY (rutadmin)
REFERENCES usuario(run)
ON DELETE CASCADE;

ALTER TABLE cliente
ADD CONSTRAINT fk_rutcliente
FOREIGN KEY (rutcliente)
REFERENCES usuario(run)
ON DELETE CASCADE;

INSERT INTO usuario values (1, 'nan', 'Fernanda', 'Zuniga', '1991-01-01',  'notiene', '17623365-6');
INSERT INTO usuario values (2, 'santa', 'Pablo', 'Munoz', '1991-01-01',  'notiene', '8061245-1');
INSERT INTO usuario values (3, 'crespi', 'Olivia', 'Paredes', '1991-01-01',  'notiene', '7032429-6');
INSERT INTO usuario values (4, 'rucio', 'Andres', 'Molina', '1991-01-01',  'notiene', '16091621-4');
INSERT INTO usuario values (5, 'klivert', 'Ignacio', 'Sepulveda', '1991-01-01',  'notiene', '16940094-6');
INSERT INTO usuario values (6, 'nene', 'Belen', 'Pantoja', '1991-01-01',  'notiene', '17600133-K');
INSERT INTO administrativo values (1, 'Gerencia', '17623365-6');
INSERT INTO administrativo values (2, 'RRHH', '7032429-6');
INSERT INTO administrativo values (3, 'Administrativo', '16940094-6');
INSERT INTO cliente values (1, '77777777', 'a@gmail.com', '8061245-1');
INSERT INTO cliente values (2, '88888888', 'b@gmail.com', '16091621-4');
INSERT INTO cliente values (3, '99999999', 'c@gmail.com', '17600133-K');