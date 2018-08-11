use EjercicioCursores;
create table ProductosMultiUsuario (
	id int auto_increment not null primary key,
    nombre varchar(15),
    enBodega boolean,
    version int
    );
    
    
insert into ProductosMultiUsuario (nombre,enBodega,version)
values ('Borrador',true,1),('Libro',false,2);



-- Procedimiento almacenado MultiUsuario Sql. --
delimiter $ 
create procedure updateProductosMultiUsuario(
    in idProducto int,
	in nombreUsuario varchar(15),
    in enBodegaUsuario boolean,
    in versionUsuario int
)
begin 
	update ProductosMultiUsuario
    set 
    nombre = nombreUsuario,
    enBodega = enBodegaUsuario,
    version = versionUsuario
    where idProducto = id
    and versionUsuario = version;
end $
call updateProductosMultiUsuario('2','Lapiz',true,'2');