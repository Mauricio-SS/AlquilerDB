--Creacion de la base de datos 
create database RentaDeAutos

use RentaDeAutos

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
garage varchar(20) not null,
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
Garage varchar(20) not null
primary key (IdReservacion,Placa),
foreign key (IdReservacion) references Reservacion,
foreign key (Placa,Garage) references Autos
)

Create table Agencia(
IdAgencia int not null,
NombreAgencia varchar(20) not null,
placa varchar(10) not null,
garage varchar(20) not null,
IdReservacion int not null,
foreign key (Placa,garage) references autos,
foreign key (IdReservacion) references Reservacion
)

/*
--insercion de datos de prueba 
--aval
insert into Aval values ('abc123','Mau','Sandoval','calle 9','5512415820')
insert into Aval values ('bcd456','Victor','Salinas','calle 2','5547812465')
insert into Aval values ('cde789','Ricardo','Montes','calle 8','5541213487') 

--cliente 
insert into cliente values ('def123','Jonathan','Becerril','calle 13','5514213248','abc123') 
insert into cliente values ('efg456','Alberto','Vazquez','calle 15','5547213485','bcd456') 
insert into cliente values ('fgh','Alejandro','Hernandez','calle 1','5547871234','cde789') 

--autos
insert into autos values ('mar3030',1,'Ford','Mustang','Rojo')
insert into autos values ('asdf1414',1,'Lamborghini','Gallardo','negro')
insert into autos values ('zxcv2020',2,'BMV','m4','azul')
insert into autos values ('qwer4781',2,'Audi','a3','blanco')
insert into autos values ('swer4848',3,'Jeep','patriot','gris')

--Reservacion

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente) values (GETDATE(),'2020-04-15','80 litros','3000','3800','entregado','def123')
insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente) values (GETDATE(),'2020-06-12','100 litros','5000','6000','no entregado','efg456')
insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente) values (GETDATE(),'2020-06-22','60 litros','4000','4600','entregado','fgh')

--ReservacionAuto

insert into ReservacionAuto values (1,'qwer4781',2)
insert into ReservacionAuto values (2,'swer4848',3)
insert into ReservacionAuto values (4,'mar3030',1)

--agencia 

insert into Agencia values(1,'surman',1)
insert into Agencia values(1,'surman',2)
insert into Agencia values(2,'AWM',4)
*/ 


