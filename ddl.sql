
CREATE DATABASE garden_A_K;

USE garden_A_K;

CREATE TABLE gama_producto (
	id_gama VARCHAR(50),
	descripcion_texto TEXT,
	descripcion_html TEXT,
	imagen VARCHAR(256),
	CONSTRAINT Pk_id_gama PRIMARY KEY(id_gama)
	);

CREATE TABLE oficina (
	id_oficina VARCHAR(10),
	ciudad VARCHAR(30),
	pais VARCHAR(50),
	region VARCHAR(50),
	codigo_postal VARCHAR(10),
	telefono VARCHAR(20),
	direccion_1 VARCHAR(50),
	direccion_2 VARCHAR(50),
	CONSTRAINT Pk_id_oficina PRIMARY KEY(id_oficina)
);

CREATE TABLE empĺeado (
	id_empleado INT(11),
	nombre VARCHAR(50),
	apellido_1 VARCHAR(50),
	apellido_2 VARCHAR(50),
	extension VARCHAR(10),
	email VARCHAR(100),
	id_oficina VARCHAR(10),
	id_jefe INT(11),
	puesto VARCHAR(50),
	CONSTRAINT Pk_id_empleado PRIMARY KEY(id_empleado),
	CONSTRAINT Fk_id_oficina FOREIGN KEY(id_oficina) REFERENCES oficina(id_oficina)
	
);

CREATE TABLE cliente (
	id_cliente INT(11),
	nombre VARCHAR(50),
	nombre_contacto VARCHAR(30),
	apellido_contacto VARCHAR(30),
	telefono VARCHAR(15),
	fax VARCHAR(15),
	direccion_1 VARCHAR(50),
	direccion_2 VARCHAR(50),
	ciudad VARCHAR(50),
	region VARCHAR(50),
	pais VARCHAR(50),
	codigo_postal VARCHAR(10),
	id_empleado_responsable INT(11),
	limite_credito DECIMAL(15,2),
	CONSTRAINT Pk_id_cliente PRIMARY KEY(id_cliente),
	CONSTRAINT Fk_id_empleado_cliente FOREIGN KEY (id_empleado_responsable) REFERENCES empĺeado(id_empleado)
);


CREATE TABLE pago (
	id_transaccion VARCHAR(50),
	id_cliente INT(11),
	forma_pago VARCHAR(40),
	fecha_pago DATE,
	total DECIMAL(15,2),
	CONSTRAINT Pk_id_transaccion PRIMARY KEY(id_transaccion),
	CONSTRAINT Fk_id_cliente FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE pedido (
	id_pedido INT(11),
	fecha_pedido DATE,
	fecha_esperada DATE,
	fecha_entrega DATE,
	estado VARCHAR(15),
	comentario TEXT,
	id_cliente INT(11),
	CONSTRAINT Pk_id_pedido PRIMARY KEY(id_pedido),
	CONSTRAINT Fk_id_cliente_pedido FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE producto (
	id_producto VARCHAR(15),
	nombre VARCHAR(70),
	id_gama VARCHAR(50),
	dimensiones VARCHAR(25),
	proveedor VARCHAR(50),
	descripcion TEXT,
	cantidad_stock SMALLINT(6),
	precio_venta DECIMAL(15,2),
	precio_proveedor DECIMAL(15,2),
	CONSTRAINT Pk_id_producto PRIMARY KEY(id_producto),
	CONSTRAINT Fk_id_gama_producto FOREIGN KEY(id_gama) REFERENCES gama_producto(id_gama)
);

CREATE TABLE detalle_pedido (
	id_pedido INT(11),
	id_producto VARCHAR(15),
	cantidad INT(11),
	precio DECIMAL(15,2),
	numero_linea SMALLINT(6),
	CONSTRAINT Fk_id_pedido_pago FOREIGN KEY(id_pedido) REFERENCES pedido(id_pedido),
	CONSTRAINT Fk_id_producto_pago FOREIGN KEY(id_producto) REFERENCES producto(id_producto)
);

