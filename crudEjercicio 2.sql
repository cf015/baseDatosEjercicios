use EjercicioCursores;


-- Tabla inventario motos. --
create table InventarioMotos(
	id int auto_increment not null primary key,
	marca varchar(15),
    codigo varchar(15),
    enBodega boolean,
    idMotoIng int
);


drop procedure if exists ingInventarioMoto;
delimiter $ 
create procedure ingInventarioMoto(
	in marcaMoto varchar(15),
    in codigoMoto varchar(15),
    in enBodegaMoto boolean,
    in idMotoIng int
)
begin 
	insert into InventarioMotos(
		mara,
        codigo,
        enBodega,
        idMotoIng)
	values(
		marcaMoto,
        codigoMoto,
        enBodegaMoto,
        @idMotoing);
	set @idMoto =last_insert_id();
    select *
    from InventarioMotos;
end $
call ingInventarioMoto('Ktm','040',true,@idMoto);
call ingInventarioMoto('Ducati','042',false,@idMoto);

drop procedure if exists selectInventarioMotos;
delimiter $ 
create procedure selectInventarioMotos(
	in idMoto int
)
begin 
	select *
    from InventarioMotos
    where idMoto = id;
end $
call selectInventarioMotos('2');

drop procedure if exists updateInventarioMotos;
delimiter $ 
create procedure updateInventarioMotos(
	in idMoto int,
	in marcaMoto varchar(15),
    in codigoMoto varchar(15),
    in enBodegaMoto boolean
)
begin 
	update InventarioMotos
    set
    marca = marcaMoto,
    codigo = codigoMoto,
    enBodega = enBodegaMoto
    where idMoto = id;
    select *
    from InventarioMotos
    where idMoto = id;
end $
call updateInventarioMotos('2','Ducati','042',true);


drop procedure if exists deleteInventarioMoto;
delimiter $ 
create procedure deleteInventarioMoto(
	in idMoto int
)
begin 
	delete
    from InventarioMotos
    where idMoto = id;
    select *
    from InventarioMotos
    where idMoto = id;
end $
call deleteInventarioMoto('2');

-- Tabla RegistroGym. --
create table RegistroGym(
	id int auto_increment not null primary key,
	nombre varchar(15),
    tipoEjercicio varchar(15),
    pagado boolean,
    idNombreing int
);


drop procedure if exists ingRegistroGym;
delimiter $ 
create procedure ingRegistroGym(
	in nombreUsuario varchar(15),
    in tipoEjercicioUsuario varchar(15),
    in pagadoUsuario boolean,
    in idNombreing int
)
begin 
	insert into RegistroGym(
		nombre,
        tipoEjercicio,
        pagado,
        idNombreing)
	values(
		nombreUsuario,
        tipoEjercicioUsuario,
        pagadoUsuario,
        @idNombreing);
	set @idnombreing =last_insert_id();
    select *
    from RegistroGym;
end $
call ingRegistroGym('Nombre1','Yoga',true,@idNombreing);
call ingRegistroGym('Nombre2','Pesas',false,@idNombreing);

drop procedure if exists selectRegistroGym;
delimiter $ 
create procedure selectRegistroGym(
	in idNombre int
)
begin 
	select *
    from RegistroGym
    where idNombre = id;
end $
call selectRegistroGym('2');

drop procedure if exists updateRegistroGym;
delimiter $ 
create procedure updateRegistroGym(
	in idNombre int,
	in nombreUsuario varchar(15),
    in tipoEjercicioUsuario varchar(15),
    in pagadoUsuario boolean
)
begin 
	update RegistroGym
    set
    nombre = nombreUsuario,
    tipoEjercicio = tipoEjercicioUsuario,
    pagado = pagadoUsuario
    where idNombre = id;
    select *
    from RegistroGym
    where idNombre = id;
end $
call updateRegistroGym('2','Nombre2','Pesas',true);


drop procedure if exists deleteRegistroGym;
delimiter $ 
create procedure deleteRegistroGym(
	in idNombre int
)
begin 
	delete
    from RegistroGym
    where idNombre = id;
    select *
    from RegistroGym
    where idNombre = id;
end $
call deleteRegistroGym('2');

-- Tabla ventaHelados. --
create table VentaHelados(
	id int auto_increment not null primary key,
	nombreHelado varchar(15),
    tipoHelado varchar(15),
    cantidad int,
    idNombreHeladoing int
);


drop procedure if exists ingVentaHelado;
delimiter $ 
create procedure ingVentaHelado(
	in nombreHeladoUsuario varchar(15),
    in tipoHeladoUsuario varchar(15),
    in cantidadUsuario int,
    in idNombreHeladoing int
)
begin 
	insert into ventaHelados(
		nombreHelado,
        tipoHelado,
        cantidad,
        idNombreHeladoing)
	values(
		nombreHeladoUsuario,
        tipoHeladoUsuario,
        cantidadUsuario,
        @idNombreHelado);
	set @idNombreHelado =last_insert_id();
    select *
    from VentaHelados;
end $
call ingVentaHelado('Nombre1','Tipo1',2,@idNombreHelado);
call ingVentaHelado('Nombre2','Tipo2',2,@idNombreHelado);

drop procedure if exists selectVentaHelado;
delimiter $ 
create procedure selectVentaHelado(
	in idNombreHelado int
)
begin 
	select *
    from VentaHelados
    where idNombreHelado = id;
end $
call selectVentaHelado('2');

drop procedure if exists updatesVentaHelado;
delimiter $ 
create procedure updatesVentaHelado(
	in idNombreHelado int,
	in nombreHeladoUsuario varchar(15),
    in tipoHeladoUsuario varchar(15),
    in cantidadUsuario int
)
begin 
	update VentaHelados
    set
    nombreHelado = nombreHeladoUsuario,
    tipoHelado = tipoHeladoUsuario,
    cantidad = cantidadUsuario
    where idNombreHelado = id;
    select *
    from VentaHelados
    where idNombreHelado = id;
end $
call updatesVentaHelado('2','Nombre2','Tipo2',3);


drop procedure if exists deleteVentaHelado;
delimiter $ 
create procedure deleteVentaHelado(
	in idNombreHelado int
)
begin 
	delete
    from VentaHelados
    where idNombreHelado = id;
    select *
    from VentaHelados
    where idNombreHelado = id;
end $
call deleteVentaHelado('2');



-- Tabla InventarioGym. --
create table InventarioGym(
	id int auto_increment not null primary key,
	nombreProducto varchar(15),
    tipoProducto varchar(15),
    cantidad int,
    idNombreProductoing int
);


drop procedure if exists ingInventarioGym;
delimiter $ 
create procedure ingInventarioGym(
	in nombreProductoUsuario varchar(15),
    in tipoProductoUsuario varchar(15),
    in cantidadUsuario int,
    in idNombreProductoing int
)
begin 
	insert into InventarioGym(
		nombreProducto,
        tipoProducto,
        cantidad,
        idNombreProductoing)
	values(
		nombreProductoUsuario,
        tipoProductoUsuario,
        cantidadUsuario,
        @idNombreProducto);
	set @idNombreProducto =last_insert_id();
    select *
    from InventarioGym;
end $
call ingInventarioGym('Nombre1','Tipo1',3,@idNombreProducto);
call ingInventarioGym('Nombre2','Tipo2',2,@idNombreProducto);

drop procedure if exists selectInventarioGym;
delimiter $ 
create procedure selectInventarioGym(
	in idNombreProducto int
)
begin 
	select *
    from InventarioGym
    where idNombreProducto = id;
end $
call selectInventarioGym('2');

drop procedure if exists updatesInventarioGym;
delimiter $ 
create procedure updatesInventarioGym(
	in idNombreProducto int,
	in nombreProductoUsuario varchar(15),
    in tipoProductoUsuario varchar(15),
    in cantidadUsuario int
)
begin 
	update InventarioGym
    set
    nombreProducto = nombreProductoUsuario,
    tipoProducto = tipoProductoUsuario,
    cantidad = cantidadUsuario
    where idNombreProducto = id;
    select *
    from InventarioGym
    where idNombreProducto = id;
end $
call updatesInventarioGym('2','Nombre2','Tipo2',4);

drop procedure if exists deleteInventarioGym;
delimiter $ 
create procedure deleteInventarioGym(
	in idNombreProducto int
)
begin 
	delete
    from InventarioGym
    where idNombreProducto = id;
    select *
    from InventarioGym
    where idNombreProducto = id;
end $
call deleteInventarioGym('2');