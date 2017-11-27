CREATE DATABASE Angel_Fast DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

USE Angel_Fast;


CREATE TABLE usuario (
    id_usuario INT NOT NULL AUTO_INCREMENT,
	id_cuenta INT NOT NULL,
    nombre VARCHAR(255) NULL,
    apellidos VARCHAR(255) null,
    fecha_de_nacimiento varchar(255)NULL,
    edad int (15) null,
    email varchar(255)null,
    telefono int (8) null,
    nickname VARCHAR(10) null,
    clave BLOB NULL,
    PRIMARY KEY (id_usuario)
);

CREATE TABLE Cuenta (
    id_Cuenta INT NOT NULL AUTO_INCREMENT,
    clave BLOB NULL,
    PRIMARY KEY (id_cuenta)
);


CREATE TABLE Autos(
	id_autos INT NOT NULL AUTO_INCREMENT,
    nombre_del_auto INT NULL,
	id_marca varchar(255) NULL,
    velocidad int (100)null,
    cilindraje varchar(255) null,
    color varchar(255)null,
    motor varchar(255)null,
    PRIMARY KEY (id_autos)
);

CREATE TABLE Marca(
	id_marca INT NOT NULL AUTO_INCREMENT,
    marca_nombre varchar(255)null,
    primary key(id_marca)
    );

create table concesionaria(
	id_concesionaria INT NOT NULL AUTO_INCREMENT,
	id_autos int(100)null,
    id_marca Varchar(255)null, 
    nombre_concesionaria varchar(255)null,
    ciudad_de_ubicacion varchar(255)null,
    primary key(id_concesionaria)
);

CREATE TABLE interesporauto(
id_Usuario INT NOT NULL AUTO_INCREMENT,
id_auto int (100)null,
primary key(id_Usuario)
);