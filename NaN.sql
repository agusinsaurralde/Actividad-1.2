/*
Base de datos N a N

Se crea una base de datos con tres tablas, las cuales van a contener los socios de un polideportivo, otra tabla va a contener los deportes
que se hacen en ese polideportivo y la ultima contiene las inscripciones de distintos socios a distintos deportes
*/

create database NaN
go

use NaN
go

Create table Personas(
	N_Socio int not null primary key identity(1000,1),
	Nombre varchar(40) not null,
	Apellido varchar(50) not null,
	Dni varchar(10) not null unique,
	FdeNacimiento date not null,
	Telefono varchar(30) not null,
	Mail varchar(50) null
)
go

Create table Polideportivo(
	N_deDeporte tinyint not null primary key identity(1,1),
	NombreDeporte varchar(50) not null,
	Profesor varchar(50) not null,
)
go

Create table PersonasxDeportes(
	N_Socio int not null foreign key references Personas(N_Socio),
	N_deDeporte tinyint not null foreign key references Polideportivo(N_deDeporte)
	primary key (N_Socio, N_deDeporte)
)
go