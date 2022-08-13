CREATE DATABASE IF NOT EXISTS PeluqueriaCanina;

USE PeluqueriaCanina;

CREATE TABLE IF NOT EXISTS Dueno(
DNI INT NOT NULL,
Nombre VARCHAR(45),
Apellido VARCHAR(45),
Telefono VARCHAR(20),
Direccion VARCHAR(45),
CONSTRAINT PK_Du PRIMARY KEY (DNI)
);

CREATE TABLE IF NOT EXISTS Perro(
idPerro INT NOT NULL,
Nombre VARCHAR (45),
Fecha_Nac DATE,
Sexo VARCHAR(45),
DNI INT NOT NULL,
CONSTRAINT PK_Pe PRIMARY KEY (idPerro),
CONSTRAINT FK_du_pe FOREIGN KEY (DNI)
REFERENCES Dueno(DNI)
 );
 
 CREATE TABLE IF NOT EXISTS Historial(
 idHistorial INT NOT NULL,
 Fecha DATE,
 idPerro INT NOT NULL,
 CONSTRAINT FK_pe_his FOREIGN KEY (idPerro)
 REFERENCES Perro(idPerro),
 Descripcion VARCHAR (200),
 Monto int,
 CONSTRAINT PK_hist PRIMARY KEY (idHistorial)
 );
 
 
 
 INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Direccion) VALUES (30000000,'Andres','Calamaro','3541-101010','Los Angeles 33');
 INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Direccion) VALUES (33333333,'Luciana','Sanchez','3541-202020','Cordoba 50');
 INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Direccion) VALUES  ( 20800700,'Jenifer','Lopez','3541-151515','Cuba 20');
 
 INSERT INTO Perro (idPerro,Nombre,Fecha_Nac,Sexo,DNI) VALUES (1,'Sultan','2010-10-10','Macho',30000000);
 INSERT INTO Perro (idPerro,Nombre,Fecha_Nac,Sexo,DNI) VALUES (2,'Luly','2020-10-15','Hembra',33333333);
 INSERT INTO Perro (idPerro,Nombre,Fecha_Nac,Sexo,DNI) VALUES (3,'Pupy','2022-01-15','Hembra',20800700);
 
 
 INSERT INTO Historial(idHistorial,Fecha,idPerro,Descripcion,Monto) VALUES (1,'2022-03-03',1,'vacunas',15000);
 INSERT INTO Historial(idHistorial,Fecha,idPerro,Descripcion,Monto) VALUES (2,'2022-04-03',2,'corte y lavado',3000);
 INSERT INTO Historial(idHistorial,Fecha,idPerro,Descripcion,Monto) VALUES (3,'2022-06-10',2,'corte',2000);
 INSERT INTO Historial(idHistorial,Fecha,idPerro,Descripcion,Monto) VALUES (4,'2022-07-10',2,'lavado',2000);
 INSERT INTO Historial(idHistorial,Fecha,idPerro,Descripcion,Monto) VALUES (5,'2022-08-10',3,'corte ,lavado y vacunas',18000);
 
 use PeluqueriaCanina;
 # obtener los ingresos percibidos en julio 2022
SELECT MONTO
FROM Historial where Fecha BETWEEN '2022-07-01' AND '2022-07-31' ;
 