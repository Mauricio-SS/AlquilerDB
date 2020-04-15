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

--clientes 

insert into cliente values ('XXXXXXXX','Angelica','Lopez','Centro','5555555555','FFFFFFFF')
insert into cliente values ('YYYYYYYY','Ruben','Silva','Linda Vista','4444444444','HHHHHHHH')
insert into cliente values ('zzzzzzzz','Javier','Perez','Pedregal','5487214681','JJJJJJJJ')

insert into cliente values ('WWWWWWWW','Monica','Zamora','Satelite','3218457430','LLLLLLLL')
insert into cliente values ('VVVVVVVV','Manuel','Dominguez','Nezahualcoyotl','8401235847','BBBBBBBB')
insert into cliente values ('UUUUUUUU','Genaro','Zabala','Linda Vista','7845201354','RRRRRRRR')

insert into cliente values ('MMMMMMMM','Eduardo','Rivas','Centro','4842013542','AAAAAAAA')
insert into cliente values ('NNNNNNNN','Teresa','Garcia','Nezahualcoyotl','1548723451','DDDDDDDD')
insert into cliente values ('OOOOOOOO','Everardo','Villaseñor','Ecatepec','1023487650','GGGGGGGG')

insert into cliente values ('PPPPPPPP','Octavio','Velasco','Ecatepec','8412301487','KKKKKKKK')
insert into cliente values ('QQQQQQQQ','Jorge','Patiño','Satelite','2487985016','TTTTTTTT')
insert into cliente values ('TTTTTTTT','Marcela','Mendez','Pedregal','8752013498','QQQQQQQQ')

insert into cliente values ('KKKKKKKK','Alejandro','Flores','Pedregal','7894201325','PPPPPPPP')
insert into cliente values ('GGGGGGGG','Juan','Jimenez','San Angel','7812305420','OOOOOOOO')
insert into cliente values ('DDDDDDDD','Pedro','Juarez','Centro','1023154870','NNNNNNNN')

insert into cliente values ('AAAAAAAA','Gabriela','Aguirre','Ajusco','7801324820','MMMMMMMM')
insert into cliente values ('RRRRRRRR','Isabel','Torres','Linda Vista','2013487502','UUUUUUUU')
insert into cliente values ('BBBBBBBB','Guadalupe','Ramirez','Ajusco','1023487510','VVVVVVVV')

insert into cliente values ('LLLLLLLL','Enrique','Aguilar','San Angel','2018743201','WWWWWWWW')
insert into cliente values ('JJJJJJJJ','Natalia','Gamboa','Centro','4510325481','ZZZZZZZZ')
insert into cliente values ('HHHHHHHH','Roberto','Valencia','San Angel','2018463215','YYYYYYYY')
insert into cliente values ('FFFFFFFF','Raul','Villalobos','Satelite','8423016498','XXXXXXXX')

--insercion de 30 reservacones 
-- 5 clientes con mas de 2 reservaciones 

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-1-10','2020-2-10','40 litros',2000,2400,'entregado','XXXXXXXX',1)

insert into ReservacionAuto values(2,'123ZWS')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-1-15','2020-2-15','60 litros',2000,2600,'entregado','XXXXXXXX',1)

insert into ReservacionAuto values(3,'234GGF')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-1-20','2020-2-20','20 litros',2000,2200,'entregado','XXXXXXXX',1)

insert into ReservacionAuto values(4,'345yhj')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-1-30','2020-2-28','70 litros',4000,4700,'entregado','YYYYYYYY',1)

insert into ReservacionAuto values(5,'777ABC')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-2-2','2020-3-2','60 litros',4000,2600,'entregado','YYYYYYYY',1)

insert into ReservacionAuto values(6,'890JJD')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-2-8','2020-3-8','30 litros',3000,3300,'entregado','YYYYYYYY',2)

insert into ReservacionAuto values(7,'107FDL')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-2-12','2020-3-12','40 litros',5000,5400,'entregado','ZZZZZZZZ',2)

insert into ReservacionAuto values(8,'222DDT')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-2-18','2020-3-18','30 litros',6000,6300,'entregado','ZZZZZZZZ',2)

insert into ReservacionAuto values(9,'4120OPO')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-2-21','2020-3-21','70 litros',5000,5700,'entregado','ZZZZZZZZ',2)

insert into ReservacionAuto values(10,'567PMX')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-2-27','2020-3-27','80 litros',4000,4800,'entregado','WWWWWWWW',2)

insert into ReservacionAuto values(11,'678UZA')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-3-4','2020-4-4','20 litros',2000,2200,'entregado','WWWWWWWW',2)

insert into ReservacionAuto values(12,'981RCT')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-3-8','2020-4-8','40 litros',4000,4400,'entregado','WWWWWWWW',3)

insert into ReservacionAuto values(13,'119LKD')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-3-20','2020-4-20','90 litros',5000,5900,'entregado','VVVVVVVV',3)

insert into ReservacionAuto values(14,'236DLK')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-3-26','2020-4-26','30 litros',4000,4300,'entregado','VVVVVVVV',3)

insert into ReservacionAuto values(15,'343SWT')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-3-29','2020-4-29','50 litros',5000,5500,'entregado','VVVVVVVV',3)

insert into ReservacionAuto values(16,'376AZA')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-4-2','2020-4-2','30 litros',3000,3300,'entregado','UUUUUUUU',3)

insert into ReservacionAuto values(17,'454DCB')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-4-6','2020-5-6','30 litros',3000,3300,'entregado','MMMMMMMM',4)

insert into ReservacionAuto values(18,'248GFB')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-4-8','2020-5-8','40 litros',5000,5400,'entregado','NNNNNNNN',4)

insert into ReservacionAuto values(19,'327HHT')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-4-9','2020-5-9','40 litros',4000,4400,'entregado','OOOOOOOO',4)

insert into ReservacionAuto values(20,'456KLO')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-4-11','2020-5-11','60 litros',6000,6600,'entregado','PPPPPPPP',4)

insert into ReservacionAuto values(21,'789QII')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-4-13','2020-5-13','70 litros',6000,6700,'entregado','QQQQQQQQ',4)

insert into ReservacionAuto values(22,'879TFV')
 
insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-4-15','2020-5-15','20 litros',6000,6200,'entregado','TTTTTTTT',1)

insert into ReservacionAuto values(23,'123ZWS')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-4-18','2020-5-18','60 litros',8000,8600,'no entregado','KKKKKKKK',1)

insert into ReservacionAuto values(24,'234GGF')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-4-23','2020-5-23','30 litros',4000,4300,'no entregado','GGGGGGGG',1)

insert into ReservacionAuto values(25,'345yhj')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-4-27','2020-5-27','60 litros',5000,5600,'no entregado','DDDDDDDD',1)

insert into ReservacionAuto values(26,'777ABC')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-4-30','2020-5-30','30 litros',5000,5300,'no entregado','AAAAAAAA',1)

insert into ReservacionAuto values(27,'890JJD')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-5-5','2020-6-5','40 litros',3000,3400,'no entregado','RRRRRRRR',1)

insert into ReservacionAuto values(28,'107FDL')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-5-7','2020-6-7','20 litros',3000,3200,'no entregado','BBBBBBBB',2)

insert into ReservacionAuto values(29,'222DDT')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-5-10','2020-6-10','60 litros',5000,5600,'no entregado','LLLLLLLL',2)

insert into ReservacionAuto values(30,'567PMX')

insert into Reservacion (FecInicio,FecFin,Gasolina,precioAlquiler,precioTotal,estado,RFCCliente,IdAgencia)
values ('2020-5-15','2020-6-10','60 litros',5000,5600,'no entregado','JJJJJJJJ',2)

insert into ReservacionAuto values(31,'678UZA')

--consultas 
--Nombre y apellido de los clinetes de linda vista 

select nombre, apellido from cliente where direccion = 'linda vista'

--mostrar las placas, marca, modelo y color de los autos del garage rojo 

select placa, marca, modelo, color from autos where IdAgencia = 2

-- mostrar las placas, marca, modelo y color de la agencia "este"

select placa, marca, modelo, color from autos where IdAgencia = 3

-- Obtener los datos de los clientes que han reservado autos 2005 

select c.* 
from cliente c 
join Reservacion r on c.RFCCliente = r.RFCCliente
join ReservacionAuto ra on r.IdReservacion = ra.IdReservacion
join autos a on ra.Placa = a.placa
where a.Modelo = '2005'

-- Listar todas las reservaciones de las agencias norte y oeste 

select * from reservacion where IdAgencia = 1 or IdAgencia = 4 order by IdAgencia