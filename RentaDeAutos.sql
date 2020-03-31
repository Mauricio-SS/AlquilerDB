--Creacion de la base de datos 
create database RentaDeAutos

--creacion de tablas 

create table aval(

RFCAval varchar(15) primary key not null,
Nombre varchar(30) not null,
Apellido varchar(30) not null,
Direccion varchar(60) null,
Telefono varchar(20) not null
)

create table cliente (

RFCCliente varchar(15) primary key not null,
Nombre varchar(30) not null,
Apellido varchar(30) not null,
Direccion varchar(60) null,
Telefono varchar(20) not null,
RFCAval varchar(15) not null,
foreign key (RFCAval) references aval
)

create table autos(
placa varchar(10) not null,
garage int not null,
Marca varchar(20),
Modelo varchar(20),
color varchar(10),
constraint PKAuto primary key(placa,garage)
)

create table Reservacion(
IdReservacion int identity primary key not null,
FecInicio date not null,
FecFin date not null,
Gasolina varchar(20) not null,
precioAlquiler money not null,
precioTotal money not null, 
estado varchar (12) check(estado = 'entregado' or estado ='no entregado'),
RFCCliente varchar(15),
foreign key (RFCCliente) references cliente
)

create table ReservacionAuto(

IdReservacion int not null,
Placa varchar(10) not null,
Garage int not null
primary key (IdReservacion,Placa),
foreign key (IdReservacion) references Reservacion,
foreign key (Placa,Garage) references Autos
)

Create table Agencia(

IdAgencia int identity primary key not null,
NombreAgencia varchar(20) not null,
IdReservacion int not null,
foreign key (IdReservacion) references Reservacion
)