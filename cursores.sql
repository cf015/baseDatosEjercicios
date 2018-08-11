create database EjercicioCursores;
use EjercicioCursores;

-- Procedimientos almacenado Sql. --
create table Productos(
	id int auto_increment not null primary key,
    codigoPrincipal varchar(15),
    cantidad int
);

insert into Productos(codigoPrincipal,cantidad) values ('30','3');
insert into Productos(codigoPrincipal,cantidad) values ('31','2');
insert into Productos(codigoPrincipal,cantidad) values ('32','5');
insert into Productos(codigoPrincipal,cantidad) values ('30','1');

select * from Productos;

delimiter $ 
create procedure contarProductos(
	in codigo varchar(15)
)
begin 
	select count(*)
    from Productos
    where codigoPrincipal = codigo;
end $
call contarProductos('30');



-- Cursores Sql. --
create table CorredoresFinalCarrera (
    id int auto_increment not null primary key,
    Nombre varchar(50) not null,
    TiempoCarrera int not null,
    Falta1 int not null,
    Falta2 int not null,
    PuntosFinal int
);
insert into CorredoresFinalCarrera (Nombre,TiempoCarrera,Falta1,Falta2)
values('Nombre1',50,2,3),('Nombre2',47,1,5),('Nombre3',46,2,2);

drop procedure if exists cursorEjemplo;
delimiter $
create procedure cursorEjemplo()
begin
	declare t_nombre varchar(50);
    declare t_tiempoCarrera int;
    declare t_falta1 int;
    declare t_falta2 int;
    declare finSelect int default 0;
    
    declare carreraTotal_Cursor cursor for
		select Nombre,TiempoCarrera,Falta1,Falta2 from CorredoresFinalCarrera;
		declare continue handler for not found set finSelect=1;
    open carreraTotal_Cursor;
    obtener_corredoresTotal: loop
		fetch carreraTotal_Cursor into t_nombre, t_tiempoCarrera, t_falta1, t_falta2;
        if finSelect = 1 then
			leave obtener_corredoresTotal;
		end if;
	select  t_nombre, t_tiempoCarrera, t_falta1, t_falta2;
    end loop obtener_corredoresTotal;
    close carreraTotal_Cursor;
end $
call cursorEjemplo();