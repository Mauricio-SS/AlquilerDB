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

Create table Agencia(
IdAgencia int not null identity,
garage varchar(20) not null ,
NombreAgencia varchar(20) not null
primary key (IDAgencia)
)

create table autos(
placa varchar(10) not null,
Marca varchar(20) not null,
Modelo varchar(20) not null,
color varchar(10) not null,
IdAgencia int not null,
primary key(placa),
foreign key (idAgencia) references Agencia
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
IdAgencia int,
foreign key (RFCCliente) references cliente,
foreign key (IdAgencia) references agencia
)

create table ReservacionAuto(

IdReservacion int not null,
Placa varchar(10) not null,
primary key (IdReservacion,Placa),
foreign key (IdReservacion) references Reservacion,
foreign key (Placa) references autos
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

--Agencia
insert into Agencia values ('Norte','Azul')
insert into Agencia values ('Sur','Rojo')
insert into Agencia values ('Este','Verde')
insert into Agencia values ('Oeste','Amarillo')


--autos 

insert into autos values ('777ABC','Ford','2005','Azul',1) 
insert into autos values ('123ZWS','Ford','2008','Gris',1) 
insert into autos values ('222DDT','Chevrolet','2006','Plata',2) 

insert into autos values ('343SWT','Chevrolet','2007','Rojo',3) 
insert into autos values ('454DCB','VW','2008','Negro',3) 
insert into autos values ('981RCT','VW','2007','Negro',2) 

insert into autos values ('879TFV','Chrysler','2007','Rojo',4) 
insert into autos values ('234GGF','Pontiac','2007','Gris',1) 
insert into autos values ('345yhj','Pontiac','2006','Amarillo',1) 

insert into autos values ('456KLO','BMW','2008','Azul',4) 
insert into autos values ('567PMX','BMW','2006','Plata',2)
insert into autos values ('678UZA','BMW','2007','Azul',2) 

insert into autos values ('789QII','Ford','2007','Verde',4) 
insert into autos values ('890JJD','Chevrolet','2008','Negro',1) 
insert into autos values ('107FDL','Chrysler','2006','Negro',2) 

insert into autos values ('119LKD','Chrysler','2007','Azul',3) 
insert into autos values ('236DLK','VW','2006','Negro',3) 
insert into autos values ('248GFB','Chevrolet','2007','Rojo',4) 

insert into autos values ('327HHT','Ford','2008','Rojo',4)
insert into autos values ('4120OPO','Pontiac','2008','Azul',2) 
insert into autos values ('376AZA','Pontiac','2007','Gris',3) 

--Aval 

insert into Aval values ('XXXXXXXX','Angelica','Lopez','Centro','5555555555')
insert into Aval values ('YYYYYYYY','Ruben','Silva','Linda Vista','4444444444')
insert into Aval values ('zzzzzzzz','Javier','Perez','Pedregal','5487214681')

insert into Aval values ('WWWWWWWW','Monica','Zamora','Satelite','3218457430')
insert into Aval values ('VVVVVVVV','Manuel','Dominguez','Nezahualcoyotl','8401235847')
insert into Aval values ('UUUUUUUU','Genaro','Zabala','Linda Vista','7845201354')

insert into Aval values ('MMMMMMMM','Eduardo','Rivas','Centro','4842013542')
insert into Aval values ('NNNNNNNN','Teresa','Garcia','Nezahualcoyotl','1548723451')
insert into Aval values ('OOOOOOOO','Everardo','Villaseñor','Ecatepec','1023487650')

insert into Aval values ('PPPPPPPP','Octavio','Velasco','Ecatepec','8412301487')
insert into Aval values ('QQQQQQQQ','Jorge','Patiño','Satelite','2487985016')
insert into Aval values ('TTTTTTTT','Marcela','Mendez','Pedregal','8752013498')

insert into Aval values ('KKKKKKKK','Alejandro','Flores','Pedregal','7894201325')
insert into Aval values ('GGGGGGGG','Juan','Jimenez','San Angel','7812305420')
insert into Aval values ('DDDDDDDD','Pedro','Juarez','Centro','1023154870')

insert into Aval values ('AAAAAAAA','Gabriela','Aguirre','Ajusco','7801324820')
insert into Aval values ('RRRRRRRR','Isabel','Torres','Linda Vista','2013487502')
insert into Aval values ('BBBBBBBB','Guadalupe','Ramirez','Ajusco','1023487510')

insert into Aval values ('LLLLLLLL','Enrique','Aguilar','San Angel','2018743201')
insert into Aval values ('JJJJJJJJ','Natalia','Gamboa','Centro','4510325481')
insert into Aval values ('HHHHHHHH','Roberto','Valencia','San Angel','2018463215')
insert into Aval values ('FFFFFFFF','Raul','Villalobos','Satelite','8423016498')