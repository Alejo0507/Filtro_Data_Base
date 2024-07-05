

LUIS ALEJANDRO CASTILLO CAZORLA - KAROL VANESSA RAMIREZ BECERRA



Devuelve un listado con la ciudad y el teléfono de las oficinas de España.

SELECT ciudad, telefono
FROM oficina
WHERE pais = 'españa';


Devuelve un listado con el nombre, apellidos y email de los empleados cuyo
jefe tiene un código de jefe igual a 7.

SELECT nombre, apellido_1, email,id_jefe 
FROM empleado
WHERE id_jefe = 7;


Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la
empresa.

SELECT nombre, apellido_1, email
FROM empleado
WHERE id_empleado = 7;


Devuelve un listado con el nombre, apellidos y puesto de aquellos
empleados que no sean representantes de ventas.

SELECT nombre, apellido_1, puesto
FROM empleado
WHERE puesto != 'representante de ventas';


Devuelve un listado con el nombre de los todos los clientes españoles.
SELECT nombre
FROM cliente
WHERE pais = 'españa';

Devuelve un listado con los distintos estados por los que puede pasar un
pedido.

SELECT DISTINCT estado
FROM pedido;


Devuelve un listado con el código de cliente de aquellos clientes que
realizaron algún pago en 2008. Tenga en cuenta que deberá eliminar
aquellos códigos de cliente que aparezcan repetidos. Resuelva la consulta:

SELECT id_cliente
FROM pago 
WHERE YEAR(fecha_pago) = 2008;


Devuelve un listado con el código de pedido, código de cliente, fecha
esperada y fecha de entrega de los pedidos que no han sido entregados a
tiempo.

SELECT id_pedido, id_cliente,fecha_esperada, fecha_entrega
FROM pedido
WHERE estado NOT IN ('entregado');


Devuelve un listado con el código de pedido, código de cliente, fecha
esperada y fecha de entrega de los pedidos cuya fecha de entrega ha sido al
menos dos días antes de la fecha esperada.

SELECT id_pedido,id_cliente,fecha_esperada,fecha_entrega
FROM pedido 
WHERE DATEDIFF(fecha_entrega,fecha_esperada) = 2;


Devuelve un listado de todos los pedidos que fueron rechazados en 2009.

SELECT id_pedido, estado
FROM pedido
WHERE YEAR(fecha_entrega = 2009) AND (estado = 'rechazado');


Devuelve un listado de todos los pedidos que han sido entregados en el
mes de enero de cualquier año.

SELECT id_pedido, estado, fecha_entrega 
FROM pedido
WHERE MONTH(fecha_entrega) = 1;

Devuelve un listado con todos los pagos que se realizaron en el
año 2008 mediante Paypal. Ordene el resultado de mayor a menor.

SELECT forma_pago, fecha_pago 
FROM pago
WHERE YEAR(fecha_pago) = 2008 AND  forma_pago = 'paypal';

Devuelve un listado con todas las formas de pago que aparecen en la
tabla pago. Tenga en cuenta que no deben aparecer formas de pago
repetidas.

SELECT DISTINCT forma_pago 
FROM pago;


Devuelve un listado con todos los productos que pertenecen a la
gama Ornamentales y que tienen más de 100 unidades en stock. El listado
deberá estar ordenado por su precio de venta, mostrando en primer lugar
los de mayor precio.

SELECT nombre 
FROM producto 
WHERE (id_gama = 5) AND (cantidad_stock > 100)
ORDER BY precio_venta DESC;


Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y
cuyo representante de ventas tenga el código de empleado 11 o 30.

SELECT id_cliente,nombre,ciudad
FROM cliente
WHERE (id_empleado_responsable IN (11,30)) AND (ciudad = 'madrid');


Obtén un listado con el nombre de cada cliente y el nombre y apellido de su representante de ventas.

SELECT c.nombre, e.nombre, e.apellido_1
FROM cliente  c
JOIN empleado e ON c.id_empleado_responsable = e.id_empleado;


Muestra el nombre de los clientes que hayan realizado pagos junto con el
nombre de sus representantes de ventas.
cliente, pagos, empleados 

SELECT c.nombre , e.nombre AS NOMBRE_RESPONSABLE, e.apellido_1
FROM cliente c
JOIN empleado e ON c.id_empleado_responsable = e.id_empleado
JOIN pago p ON p.id_cliente = c.id_cliente 
WHERE p.id_cliente NOT IN ('NULL');

Muestra el nombre de los clientes que no hayan realizado pagos junto con
el nombre de sus representantes de ventas.

SELECT c.nombre , e.nombre AS NOMBRE_RESPONSABLE, e.apellido_1
FROM cliente c
JOIN empleado e ON c.id_empleado_responsable = e.id_empleado
JOIN pago p ON p.id_cliente = c.id_cliente 
WHERE p.id_cliente IN ('NULL');

Devuelve el nombre de los clientes que han hecho pagos y el nombre de sus
representantes junto con la ciudad de la oficina a la que pertenece el
representante.

SELECT c.nombre , e.nombre AS NOMBRE_RESPONSABLE, e.apellido_1, o.ciudad AS CIUDAD_OFICINA
FROM cliente c
JOIN empleado e ON c.id_empleado_responsable = e.id_empleado
JOIN pago p ON p.id_cliente = c.id_cliente 
JOIN oficina o ON o.id_oficina = e.id_oficina
WHERE p.id_cliente NOT IN ('NULL');

Devuelve el nombre de los clientes que no hayan hecho pagos y el nombre
de sus representantes junto con la ciudad de la oficina a la que pertenece el
representante.

SELECT c.nombre , e.nombre AS NOMBRE_RESPONSABLE, e.apellido_1, o.ciudad AS CIUDAD_OFICINA
FROM cliente c
JOIN empleado e ON c.id_empleado_responsable = e.id_empleado
JOIN pago p ON p.id_cliente = c.id_cliente 
JOIN oficina o ON o.id_oficina = e.id_oficina
WHERE p.id_cliente IN ('NULL');