create database PeluqueriaCan;

use PeluqueriaCan;

create table dueno (
dni_d int,
nom_d varchar (20),
apellido_d varchar (25),
tel_d bigint,
domic_d varchar (25),
constraint pk_cd primary key (dni_d)
);

insert into dueno values ( 30854585, "Esteban",  "Ferreyra", 351-7585455, "Echeverria 54");
insert into dueno values (51254875, "Juan" "del Diablo", 524-858658, "Lopez y planes 63");
insert into dueno values (92685475, "Pablo" "Gonzalez", 3543-52658, "Pedraza esq. Sucre 128");

create table perro (
id_perro int,
nom_p varchar (25),
fechaNac_p datetime,
sexo_p varchar (6),
dniD_h1 int, 
constraint pk_cp primary key (id_perro),
constraint fk_fh1 foreign key (dniD_h1) references dueno (dni_d)
);

insert into perro values (07, "Maxi", 12/12/2017, "Masculino", 51254875);
insert into perro values (08, "Pouppe", 08/01/2011, "Femenino", 30854585);
insert into perro values (11, "Jack", 25/03/2020, "Masculino", 92685475);

create table historial (
id_h int,
fecha_h datetime,
id_perro_h int,
descrip_h varchar (100),
monto_h float,
constraint pk_ch primary key (id_h),
constraint fk_fh2 foreign key (id_perro_h) references perro (id_perro)
);

insert into historial values ( 1, 15/01/2022, 07, "Mantonegro, presenta pierna quebrada", 7500);
insert into historial values (5, 23/03/2019, 11, "Vacunacion", 3500);
insert into histrial values (7, 20/05/2020, 08, "Desparasitacion", 2700);

update dueno
set domic_d = "Libertad 123"
where domic_d= "Echeverria 54"
 



