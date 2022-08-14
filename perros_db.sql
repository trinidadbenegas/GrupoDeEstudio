CREATE DATABASE perros_db;
USE perros_db;
CREATE TABLE DUENO
(
DNI int (10) NOT NULL,
Nombre varchar (25) NOT NULL,
Apellido varchar (25) NOT NULL,
Telefono int (20),
Direccion varchar (50),
CONSTRAINT ID_dueno PRIMARY KEY (DNI)

);

CREATE TABLE PERRO
(
ID_Perro int NOT NULL,
Nombre varchar(25) NOT NULL,
Fecha_Nac date,
Sexo varchar (5),
DNI_dueno int NOT NULL,
CONSTRAINT ID_Perro PRIMARY KEY (ID_Perro),
CONSTRAINT FK_ID_dueno FOREIGN KEY (DNI_dueno) REFERENCES DUENO (DNI)
);

CREATE TABLE HISTORIAL
(
ID_Historial int NOT NULL,
Fecha date,
Perro int NOT NULL,
Descripcion varchar (100),
Monto int NOT NULL,
CONSTRAINT ID_Historial PRIMARY KEY (ID_Historial),
CONSTRAINT FK_ID_perro FOREIGN KEY (Perro) REFERENCES PERRO (ID_Perro)
);
INSERT INTO DUENO (DNI, Nombre, Apellido, Telefono, Direccion) VALUES
('1', 'Rogelio', 'Perez', '2020', 'San Luis');

INSERT INTO DUENO (DNI, Nombre, Apellido, Telefono, Direccion) VALUES
('2', 'Marta', 'Luna', '8745', 'Ascuenaga');

INSERT INTO DUENO (DNI, Nombre, Apellido, Telefono, Direccion) VALUES
('3', 'Rosa', 'Gauna', '456', 'Marbella');

INSERT INTO DUENO (DNI, Nombre, Apellido, Telefono, Direccion) VALUES
('4', 'Pedro', 'Ramirez', '25520', 'Uruguay 20');

INSERT INTO DUENO (DNI, Nombre, Apellido, Telefono, Direccion) VALUES
('5', 'Marta', 'Luna', '8999', 'Miramar 20');

INSERT INTO PERRO ( ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_dueno) VALUES
('1', 'Tomy', '2000-08-01', 'Masc', '1');

INSERT INTO PERRO ( ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_dueno) VALUES
('2', 'Lola', '2021-03-12', 'Fem', '2');

INSERT INTO PERRO ( ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_dueno) VALUES
('3', 'colita', '1995-01-01', 'Masc', '3');

INSERT INTO PERRO ( ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_dueno) VALUES
('4', 'Momo', '2022-07-09', 'Masc', '4');

INSERT INTO PERRO ( ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_dueno) VALUES
('5', 'Toto', '2000-08-01', 'Masc', '5');

INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES
('1', '2022-08-01', '1', 'Ninguna', '2000');

INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES
('2', '2000-03-02', '3', 'Ninguna', '500');

INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES
('3', '2022-08-08', '4', 'Ninguna', '1000');

INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES
('4', '2022-03-01', '2', 'Ninguna', '4500');

INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES
('5', '2021-08-01', '5', 'Ninguna', '2200');

SELECT P.ID_Perro, P.Nombre, H.Fecha
FROM PERRO P JOIN HISTORIAL H
ON P.ID_PERRO=H.PERRO
WHERE H.Fecha > '2021-12-31';







