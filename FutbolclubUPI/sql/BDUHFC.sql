


--1 Crear una base de datos
create database UHFC

--2 Crear tablas
create table Jugador
(
	id int,
	nombre varchar(50),
	edad int,
)

create table entrenador
(
	id int primary key identity(1,1), --Pone automatico un pk
	nombre varchar(50),
	titulos varchar (150),
)

--3 Ingreso de registros 
insert into Jugador (id, nombre, edad) values (1,'Kevin Chamorro', 25)
insert into Jugador (id, nombre, edad) values (2,'Douglas Sequeira', 22)

--Consultar
select id, nombre, edad from Jugador 
select * from entrenador
select * from Jugador where edad = 25

--borrar un registro
delete jugador where id = 1

-- Actualizar un registro
update Jugador set edad = 20 where id = 2

insert into entrenador (nombre, titulos) values ('Jafet', 'Heredia')