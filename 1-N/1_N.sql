/*
Se crean las tablas Marcas y Articulos con relación de uno a varios ya que una marca puede tener varios artículos pero
un artículo solo posee una marca.
*/

create database relac1_N
go
use relac1_N

go
create table Marcas(
	IDMarca bigint not null primary key,
	DescMarca varchar(50) not null
)

go
create table Articulos(
	ID bigint not null primary key,
	Descripcion varchar(50) not null,
	IDMarca bigint not null foreign key references Marcas(IDMarca),
	Stock int not null check(Stock > 0),
)