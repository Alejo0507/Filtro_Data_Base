INSERT INTO empleado(id_empleado, nombre, apellido_1, apellido_2, extension, email, id_oficina, id_jefe, puesto ) VALUES
(1, 'empleado 1', 'apellido1 1', 'apellido2 1' , 'extensi1', 'email 1', 'oficina 1', '7', 'puesto 1' ),
(2, 'empleado 2', 'apellido2 2', 'apellido2 2' , 'extensi2', 'email 2', 'oficina 2', '7', 'puesto 2' ),
(7, 'empleado 5', 'apellido2 5', 'apellido2 5' , 'extensi5', 'email 5', 'oficina 1', '7', 'puesto 5' ),
(3, 'empleado 3', 'apellido3 3', 'apellido3 3' , 'extensi4', 'email 3', 'oficina 2', '8', 'representante de ventas' ),
(30, 'empleado 3', 'apellido3 3', 'apellido3 3' , 'extensi4', 'email 3', 'oficina 2', '8', 'representante de ventas' ),
(11, 'empleado 3', 'apellido3 3', 'apellido3 3' , 'extensi4', 'email 3', 'oficina 2', '8', 'representante de ventas' );

INSERT INTO gama_producto (id_gama, descripcion_texto, descripcion_html, imagen) VALUES 
('1','descripcion texto 1', 'descripcion html 1', 'imagen 1'),
('2','descripcion texto 2', 'descripcion html 2', 'imagen 2'),
('3','descripcion texto 3', 'descripcion html 3', 'imagen 3'),
('4','descripcion texto 4', 'descripcion html 4', 'imagen 4')
('5','ornamentales', 'descripcion html 1', 'imagen 1');


INSERT INTO oficina (id_oficina, ciudad, pais, region, codigo_postal, telefono, direccion_1,direccion_2) VALUES
('oficina 1','ciudad 1', 'pais 1', 'region 1', 'postal 1', 4567489 , 'linea_direccion1 1','linea_direccion2 1'),
('oficina 2','ciudad 2', 'pais 2', 'region 2', 'postal 2', 4567489 , 'linea_direccion1 2','linea_direccion2 2');
('oficina 4','españa', 'españa', 'region 1', 'postal 1', 4567489 , 'linea_direccion1 1','linea_direccion2 1');

INSERT INTO cliente (id_cliente, nombre, nombre_contacto, apellido_contacto, telefono, fax, direccion_1, direccion_2, ciudad, region, pais, codigo_postal, id_empleado_responsable, limite_credito) VALUES
(555, 'cliente 1', 'contacto 1', 'apellido_contacto 1', 12345, ' 1', 'linea_direccion1 1', 'linea_direccion2 1', 'ciudad 1', 'region 1', 'españa', 'postal 1', 1 , 300.00),
(777, 'cliente 3', 'contacto 1', 'apellido_contacto 1', 12345, ' 1', 'linea_direccion1 1', 'linea_direccion2 1', 'madrid', 'region 1', 'españa', 'postal 1', 1 , 300.00),
(666, 'cliente 2', 'contacto 2', 'apellido_contacto 2', 22345, ' 2', 'linea_direccion2 2', 'linea_direccion2 2', 'ciudad 2', 'region 2', 'francia', 'postal 2', 2 , 300.00)
(888, 'cliente 3', 'contacto 1', 'apellido_contacto 1', 12345, ' 1', 'linea_direccion1 1', 'linea_direccion2 1', 'madrid', 'region 1', 'españa', 'postal 1', 30 , 300.00),
(999, 'cliente 2', 'contacto 2', 'apellido_contacto 2', 22345, ' 2', 'linea_direccion2 2', 'linea_direccion2 2', 'ciudad 2', 'region 2', 'francia', 'postal 2', 11 , 300.00)

INSERT INTO pago (id_cliente, forma_pago, id_transaccion, fecha_pago, total) VALUES 
( 555, 'tarjeta','A1', '2024/01/01', 1.3),
( 555, 'transaciones','B2', '2023/02/02', 2.1),
( 666, 'efectivo','C3', '2008/03/03', 1.4),
( 666, 'paypal','c4', '2024/05/05', 8.3);
( 666, 'paypal','c8', '2008/05/05', 8.3);

INSERT INTO producto (id_producto, nombre, id_gama, dimensiones, proveedor, descripcion, cantidad_stock, precio_venta,precio_proveedor) VALUES 
('1111p', 'producto 1', '5', 'dimension 1', 'proveedor 1', 'descripcion del producto 1', 8, 300.0, 200.0),
('2222p', 'producto 2', '5', 'dimension 2', 'proveedor 2', 'descripcion del producto 2', 30, 400.0, 350.0),
('3333p', 'producto 3', '5', 'dimension 3', 'proveedor 3', 'descripcion del producto 3', 4, 350.0, 250.0),
('4444p', 'producto 4', '5', 'dimension 4', 'proveedor 4', 'descripcion del producto 4', 120, 380.0, 270.0);

INSERT INTO  pedido (id_pedido, fecha_pedido, fecha_esperada, fecha_entrega, estado, comentario, id_cliente) VALUES
('111', '2024/01/01','2024/05/05', '2024/01/01', 'entregado', 'comentarios 1', '555' ),
('222', '2024/02/02','2024/05/05', '2024/03/02', 'retenido', 'comentarios 2',  '777' ),
('333', '2024/03/03','2024/05/04', '2024/05/03', 'rechazado', 'comentarios 3', '888' ),
('444', '2024/04/04','2007/01/02', '2006/12/31', 'entregado', 'comentarios 4', '999' );

INSERT INTO  detalle_pedido (id_pedido, id_producto, cantidad, precio, numero_linea) VALUES
('111', '1111p', '1111111', '1000.1', '1'),
('222', '2222p', '2222222', '3000.1', '2'),
('333', '3333p', '3333333', '5000.1', '3'),
('444', '4444p', '4444444', '5000.1', '4');

