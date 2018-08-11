use EjercicioCursores;

create table ProductosTransaccion (
	id int auto_increment not null primary key,
    nombre varchar(15),
    enBodega boolean
    );
    
    
insert into ProductosTransaccion (nombre,enBodega)
values ('Borrador',true),('Libro',false);



-- Desahcer los cambios relizados. --
begin;
	update ProductosTransaccion set enBodega = true where id = 2;
    select * from ProductosTransaccion;
rollback;
-- Comprobar los cambios realizados. --
 select * from ProductosTransaccion;
 
 -- Cambios realizados son definitivos. --
 begin;
	update ProductosTransaccion set nombre = 'Lapiz' where id = 1;
    select * from ProductosTransaccion;
commit;
-- Comprobar los cambios realizados. --
 select * from ProductosTransaccion;