CREATE DATABASE Angel_Fast DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

USE Angel_Fast;


CREATE TABLE Usuario (
    idUsuario INT NOT NULL AUTO_INCREMENT,
	idCuenta INT NOT NULL,
    nombre VARCHAR(255) NULL,
    apellidos VARCHAR(255) null,
    fechaDeNacimiento varchar(255)NULL,
    edad int (15) null,
    email varchar(255)null,
    telefono int (8) null,
    nickname VARCHAR(10) null,
    clave BLOB NULL,
    PRIMARY KEY (idUsuario)
);

CREATE TABLE Cuenta (
    idCuenta INT NOT NULL AUTO_INCREMENT,
    clave BLOB NULL,
    PRIMARY KEY (idCuenta)
);


CREATE TABLE Autos(
	idAutos INT NOT NULL AUTO_INCREMENT,
    nombreDelAuto INT NULL,
	idMarca INT NOT NULL,
  	idConcesionaria INT NOT NULL,
    velocidad int (100)null,
    cilindraje varchar(255) null,
    color varchar(255)null,
    motor varchar(255)null,
    PRIMARY KEY (idAutos)
);

CREATE TABLE Marca(
	idMarca INT NOT NULL AUTO_INCREMENT,
    marcaNombre varchar(255)null,
    primary key(idMarca)
    );

CREATE TABLE Concesionaria(
	idConcesionaria INT NOT NULL AUTO_INCREMENT,
	idAutos INT NOT NULL,
    idMarca INT NOT NULL, 
    nombreConcesionaria varchar(255)null,
    ciudadDeUbicacion varchar(255)null,
    primary key(idConcesionaria)
);

CREATE TABLE InteresPorAuto(
	idUsuario INT NOT NULL AUTO_INCREMENT,
	idAutos INT NOT NULL,
	primary key(idUsuario)
);

ALTER TABLE Usuario add constraint R_1 FOREIGN KEY (idUsuario) REFERENCES Cuenta(idCuenta);
ALTER TABLE Cuenta add constraint R_2 FOREIGN KEY (idCuenta) REFERENCES Autos(idAutos);
ALTER TABLE Autos  add constraint R_3 FOREIGN KEY (idAutos) REFERENCES  Concesionaria(idConcesionaria);
ALTER TABLE Marca add constraint R_4 FOREIGN KEY (idMarca)	REFERENCES Autos(idAutos);
ALTER TABLE Usuario add constraint R_5 FOREIGN KEY (idUsuario) REFERENCES InteresPorAuto(idUsuario);
ALTER TABLE InteresPorAuto add constraint R_6 FOREIGN KEY (idUsuario) REFERENCES Autos(idAutos);