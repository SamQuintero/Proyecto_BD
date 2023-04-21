--Proyecto Final  chan chan chan
CREATE DATABASE Futbol

use Futbol

create table EQUIPO(
	idEquipo int primary key,
	Nombre varchar(20),
	País varchar(20)
)

create table ARBITRO(
	idArbitro int primary key,
	Nombre varchar(20),
	País varchar(20)
)

--drop table PARTIDO

create table PARTIDO(
	Jornada int not null,
	Equipo_Local int not null,
	Equipo_Visitante int not null,
	GolesL int,
	GolesV int,
	Clasificacion varchar(50),
	Arbitro_fk int,
	primary key (Equipo_Local,Jornada, Equipo_Visitante),
	constraint fk_EquipoLocal foreign key (Equipo_Local) references EQUIPO(idEquipo),
	constraint fk_EquipoVisitante foreign key (Equipo_Visitante) references EQUIPO(idEquipo),
	constraint fk_Arbitro foreign key (Arbitro_fk) references ARBITRO(idArbitro),
	)


	
insert into EQUIPO
values (1, 'Barcelona', 'España'),
		(2, 'Real Madrid', 'España'),
		(3, 'Roma', 'Italia'),
		(4, 'Juvens', 'Italia'),
		(5, 'Chelsea', 'Inglaterra'),
		(6, 'Liverpool', 'Inglaterra')

insert into ARBITRO
values (1, 'Atkinson', 'Inglaterra'),
		(2, 'Mateu', 'España'),
		(3, 'Eriksson', 'Suecia'),
		(4, 'Bebek', 'Croacia'),
		(5, 'Brrych', 'Alemania')

insert into PARTIDO
values (1,1,3,2,2,'Empate',5),
		(1,2,6,5,0,'Local',1),
		(2,3,1,1,0,'Local',1),
		(2,4,5,2,3,'Visitante',2),
		(3,5,2,1,2,'Visitante',3),
		(3,6,4,3,3,'Empate',2),
		(4,4,1,1,0,'Local',5),
		(4,5,3,2,1,'Local',4),
		(5,2,1,3,0,'Local',5),
		(1,6,5,2,0,'Local',1)
