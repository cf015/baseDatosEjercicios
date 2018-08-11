use EjercicioCursores;


-- Tabla Productos Total. --
create table ProductosTotal(
	id int auto_increment not null primary key,
	nombre varchar(15),
    codigo varchar(15),
    cantidad int,
    idProductoIng int
);


drop procedure if exists ingProductos;
delimiter $ 
create procedure ingProductos(
	in nombreProducto varchar(15),
    in codigoProducto varchar(15),
    in cantidadProducto int,
    in idProductoIng int
)
begin 
	insert into ProductosTotal(
		nombre,
        codigo,
        cantidad,
        idProductoIng)
	values(
		nombreProducto,
        codigoProducto,
        cantidadProducto,
        @idProducto);
	set @idProducto =last_insert_id();
    select *
    from ProductosTotal;
end $
call ingProductos('borrador','032','2',@idProducto);
call ingProductos('libro','030','2',@idProducto);

drop procedure if exists selectProductos;
delimiter $ 
create procedure selectProductos(
	in idProducto int
)
begin 
	select *
    from ProductosTotal
    where idProducto = id;
end $
call selectProductos('2');

drop procedure if exists updateProductos;
delimiter $ 
create procedure updateProductos(
	in idProducto int,
	in nombreProducto varchar(15),
    in codigoProducto varchar(15),
    in cantidadProducto int
)
begin 
	update ProductosTotal
    set
    nombre = nombreProducto,
    codigo = codigoProducto,
    cantidad = cantidadProducto
    where idProducto = id;
    select *
    from ProductosTotal
    where idProducto = id;
end $
call updateProductos('2','borrador','037','6');


drop procedure if exists deleteProductos;
delimiter $ 
create procedure deleteProductos(
	in idProducto int
)
begin 
	delete
    from ProductosTotal
    where idProducto = id;
    select *
    from ProductosTotal
    where idProducto = id;
end $
call deleteProductos('2');

-- Tabla Clientes. --
create table Clientes(
	id int auto_increment not null primary key,
	nombre varchar(15),
    codigo varchar(15),
    tipo varchar(30),
    idClienteIng int
);


drop procedure if exists ingCliente;
delimiter $ 
create procedure ingCliente(
	in nombreCliente varchar(15),
    in codigoCliente varchar(15),
    in tipocliente varchar(30),
    in idClienteIng int
)
begin 
	insert into Clientes(
		nombre,
        codigo,
        tipo,
        idClienteIng)
	values(
		nombreCliente,
        codigoCliente,
        tipocliente,
        @idCliente);
	set @idCliente =last_insert_id();
    select *
    from Clientes;
end $
call ingCliente('Carlos','030','normal',@idCliente);
call ingCliente('Franklin','032','normal',@idCliente);

drop procedure if exists selectCliente;
delimiter $ 
create procedure selectCliente(
	in idCliente int
)
begin 
	select *
    from Clientes
    where idCliente = id;
end $
call selectCliente('2');

drop procedure if exists updateCliente;
delimiter $ 
create procedure updateCliente(
	in idCliente int,
	in nombreCliente varchar(15),
    in codigoCliente varchar(15),
    in tipocliente int
)
begin 
	update Clientes
    set
    nombre = nombreCliente,
    codigo = codigoCliente,
    tipo = tipocliente
    where idCliente = id;
    select *
    from Clientes
    where idCLiente = id;
end $
call updateCliente('2','Franklin','037','normal');


drop procedure if exists deleteCliente;
delimiter $ 
create procedure deleteCliente(
	in idCliente int
)
begin 
	delete
    from Clientes
    where idCliente = id;
    select *
    from Clientes
    where idCliente = id;
end $
call deleteCliente('2');

-- Tabla Proveedores. --
create table Proveedores(
	id int auto_increment not null primary key,
	nombre varchar(15),
    codigo varchar(15),
    tipo varchar(25),
    idProveedorIng int
);

drop procedure if exists ingProveedor;
delimiter $ 
create procedure ingProveedor(
	in nombreProveedor varchar(15),
    in codigoProveedor varchar(15),
    in tipoProveedor int,
    in idProveedorIng int
)
begin 
	insert into Proveedores(
		nombre,
        codigo,
        tipo,
        idProveedorIng)
	values(
		nombreProveedor,
        codigoProveedor,
        tipoProveedor,
        @idProveedor);
	set @idProveedor =last_insert_id();
    select *
    from Proveedores;
end $
call ingProveedor('Proveedor1','033','normal',@idProveedor);
call ingProveedor('Proveedor2','034','normal',@idProveedor);

drop procedure if exists selectProveedor;
delimiter $ 
create procedure selectProveedor(
	in idProveedor int
)
begin 
	select *
    from Proveedores
    where idProveedor = id;
end $
call selectProveedor('2');

drop procedure if exists updateProveedor;
delimiter $ 
create procedure updateProveedor(
	in idProveedor int,
	in nombreProveedor varchar(15),
    in codigoProveedor varchar(15),
    in tipoProveedor int
)
begin 
	update Proveedores
    set
    nombre = nombreProveedor,
    codigo = codigoProveedor,
    tipo = tipoProveedor
    where idProveedor = id;
    select *
    from Proveedores
    where idProveedor = id;
end $
call updateProveedor('2','Proveedor2','040','normal');


drop procedure if exists deleteProveedor;
delimiter $ 
create procedure deleteProveedor(
	in idProveedor int
)
begin 
	delete
    from Proveedores
    where idProveedor = id;
    select *
    from Proveedores
    where idProveedor = id;
end $
call deleteProveedor('2');


-- Tabla ingresos. --
create table Ingresos(
	id int auto_increment not null primary key,
	nombrePagante varchar(15),
    tipo varchar(15),
    cantidad int,
    idIngresos int
);


drop procedure if exists ingIngreso;
delimiter $ 
create procedure ingIngreso(
	in nombrePaganteUsuario varchar(15),
    in tipoIngreso varchar(15),
    in cantidadIngreso int,
    in idIngresoUsuario int
)
begin 
	insert into ProductosTotal(
		nombrePagante,
        tipoIngreso,
        cantidad,
        idIngresos)
	values(
		nombrePaganteUsuario,
        tipoIngreso,
        cantidadIngreso,
        @idIngresoUsuario);
	set @idIngresoUsuario =last_insert_id();
    select *
    from Ingresos;
end $
call ingIngreso('Pagante1','Pago1','50',@idIngresoUsuario);
call ingIngreso('Pagante2','Pago2','50',@idIngresoUsuario);

drop procedure if exists selectIngreso;
delimiter $ 
create procedure selectIngreso(
	in idIngreso int
)
begin 
	select *
    from Ingresos
    where idIngreso = id;
end $
call selectIngreso('2');

drop procedure if exists updateIngreso;
delimiter $ 
create procedure updateIngreso(
	in idIngreso int,
	in nombrePaganteUsuario varchar(15),
    in tipoIngreso varchar(15),
    in cantidadIngreso int
)
begin 
	update Ingresos
    set
    nombre = nombrePaganteUsuario,
    tipo = tipoIngreso,
    cantidad = cantidadIngreso
    where idIngreso = id;
    select *
    from Ingresos
    where idIngreso = id;
end $
call updateIngreso('2','Pagante2','Pago3','55');


drop procedure if exists deleteIngreso;
delimiter $ 
create procedure deleteIngreso(
	in idIngreso int
)
begin 
	delete
    from Ingresos
    where idIngreso = id;
    select *
    from Ingresos
    where idIngreso = id;
end $
call deleteIngreso('2');


-- Tabla EnvioProductoMotos. --
create table EnvioProductoMotos(
	id int auto_increment not null primary key,
	nombreProducto varchar(15),
    codigo varchar(5),
    entregado boolean,
    idProductoIng int
);


drop procedure if exists ingProductoMotos;
delimiter $ 
create procedure ingProductoMotos(
	in nombreProductoUsuario varchar(15),
    in codigoProducto varchar(5),
    in entregadoProducto boolean,
    in idProductoIng int
)
begin 
	insert into EnvioProductoMotos(
		nombreProducto,
        codigo,
        entregado,
        idProductoIng)
	values(
		nombreProductoUsuario,
        codigoProducto,
        entregadoProducto,
        @idProductoMoto);
	set @idProductoMoto=last_insert_id();
    select *
    from EnvioProductoMotos;
end $
call ingProductoMotos('Producto1','015',true,@idProductoMoto);
call ingProductoMotos('Producto2','016',false,@idProductoMoto);

drop procedure if exists selectProductoMoto;
delimiter $ 
create procedure selectProductoMoto(
	in idProductoMoto int
)
begin 
	select *
    from EnvioProductoMotos
    where idProductoMoto = id;
end $
call selectProductoMoto('2');

drop procedure if exists updateProductoMoto;
delimiter $ 
create procedure updateProductoMoto(
	in idProductoMoto int,
	in nombreProductoUsuario varchar(15),
    in codigoProducto varchar(5),
    in entregadoProducto boolean
)
begin 
	update EnvioProductoMotos
    set
    nombreProducto = nombreProductoUsuario,
    codigo = codigoProducto,
    entregado = entregadoProducto
    where idProductoMoto = id;
    select *
    from EnvioProductoMotos
    where idProductoMoto = id;
end $
call updateProductoMoto('2','Producto2','016',true);


drop procedure if exists deleteProductoMoto;
delimiter $ 
create procedure deleteProductoMoto(
	in idProductoMoto int
)
begin 
	delete
    from EnvioProductoMotos
    where idProductoMoto = id;
    select *
    from EnvioProductoMotos
    where idProductoMoto = id;
end $
call deleteProductoMoto('2');

-- Tabla Ingresar motos. --
create table IngresarMotos(
	id int auto_increment not null primary key,
	marca varchar(25),
    codigo varchar(15),
    cantidad int,
    idMotoIng int
);

drop procedure if exists ingIngresarMotos;
delimiter $ 
create procedure ingIngresarMotos(
	in marcaMoto varchar(25),
    in codigoMoto varchar(15),
    in cantidadMoto int,
    in idMotoIng int
)
begin 
	insert into IngresarMotos(
		marca,
        codigo,
        cantidad,
        idMotoIng)
	values(
		marcaMoto,
        codigoMoto,
        cantidadMoto,
        @idMoto);
	set @idMoto =last_insert_id();
    select *
    from IngresarMotos;
end $

call ingIngresarMotos('Ducati','042','2',@idMoto);
call ingIngresarMotos('Ktm','043','2',@idMoto);


drop procedure if exists selectIngresarMoto;
delimiter $ 
create procedure selectIngresarMoto(
	in idMoto int
)
begin 
	select *
    from IngresarMotos
    where idMoto = id;
end $
call selectIngresarMoto('2');



drop procedure if exists updateIngresarMoto;
delimiter $ 
create procedure updateIngresarMoto(
	in idMoto int,
	in marcaMoto varchar(25),
    in codigoMoto varchar(15),
    in cantidadMoto int
)
begin 
	update IngresarMotos
    set
    marca = marcaMoto,
    codigo = codigoMoto,
    cantidad = cantidadMoto
    where idMoto = id;
    select *
    from IngresarMotos
    where idMoto = id;
end $
call updateIngresarMoto('2','Ktm','043','3');

drop procedure if exists deleteIngresarMoto;

delimiter $ 
create procedure deleteIngresarMoto(
	in idMoto int
)
begin 
	delete
    from IngresarMotos
    where idMoto = id;
    select *
    from IngresarMotos
    where idMoto = id;
end $
call deleteIngresarMoto('2');