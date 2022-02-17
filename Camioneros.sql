use camioneros;
drop table camionero;
create table camionero(
dni varchar(9) primary key,
poblacion varchar(20),
nombre varchar(30),
tlfno int,
direccion varchar(30),
salario int
);
drop table camion;
create table camion(
matricula varchar(7) primary key,
potencia int,
modelo varchar(20),
tipo varchar (20)
);
drop table conduce;
create table conduce(
dniFK varchar(9),
matriculaFK varchar(7),
foreign key (dniFK) references camionero(dni),
foreign key (matriculaFK) references camion(matricula),
primary key(dniFK, matriculaFK)
);
drop table paquete;
create table paquete(
codigo int primary key,
descripcion varchar(50),
destinatario varchar(50),
direccion varchar(30),
dniFK varchar(9),
codigoFK int,
foreign key(dniFK) references camionero(dni),
foreign key(codigoFK) references provincia(codigo)
);
drop table provincia;
create table provincia(
codigo int primary key,
nombre varchar(20)
);