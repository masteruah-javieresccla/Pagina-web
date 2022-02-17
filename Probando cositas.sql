use centros_escolares;
select* from actividad;
insert into actividad values (1234, "futbol", "19-01-01");

select* from centro;
insert into centro values(1234, "Divina Pastora", "No lo se", 12, "Córdoba", 123434352, "hola@gmail.ola");

select* from socio;
insert into socio values("1233456I", "pepe", "pepez", "pepepez", 1234675, "hola@gola.oola");
replace into socio(DNI, nombre, apellido1) values("1233456I", "peperoni", "juanez");
update socio set nombre="fernando" where DNI="1233456I";
truncate table socio;

select* from matricula;
drop table matricula;
insert into matricula values(1234, "1233456I", 1234);		
delete from matricula where(codigocentro=1234);
/* modify from matricula where(codigocentro=1234) values(1234,*/
truncate table matricula;

select* from sala;
select* from reserva;
select* from tiene;

select nombre from centro where(ciudad='prusia');
select nombre from sala where(codigocentro=3);
select * from reserva where(DNI='31033791Y');
select codigocentro, nombresala from reserva where(fecha='0000-00-00');
select nombre from socio where DNI=(select DNI from reserva where nombresala='pepe');  
select nombre from sala where m2>10;

select telef from socio where DNI in (select DNIsocio from matricula where codigocentro=1);

select socio.telef from socio, matricula where socio.DNI = matricula.DNIsocio and matricula.codigocentro=1; 
create table matricula(
codigocentro int,
DNIsocio varchar(9),
codigoactividad int,
foreign key (codigocentro) references centro(codigo),
foreign key (DNIsocio) references socio(DNI),
foreign key (codigoactividad) references actividad(codigo),
primary key(codigocentro, DNIsocio, codigoactividad)
);
select* from matricula;