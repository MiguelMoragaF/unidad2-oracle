--1. En una nueva base de datos llamada unidad2-oracle, 
--debemos cargar el archivo unidad2-oracle.sql.

--Crea nueva base de datos unidad2_oracle; 
alter session set "_ORACLE_SCRIPT"=true;
CREATE USER unidad2_oracle; 
IDENTIFIED BY "1234";
--y asigna todos los permisos
GRANT ALL PRIVILEGES TO unidad2_oracle;;

--Carga unidad2-oracle.sql
CREATE TABLE cliente 
(
    id NUMBER NOT NULL PRIMARY KEY,
    nombre VARCHAR2(50) NOT NULL,
    email VARCHAR2(40) NOT NULL UNIQUE
);

CREATE TABLE compra 
(
    id NUMBER NOT NULL PRIMARY KEY,
    cliente_id NUMBER NOT NULL REFERENCES cliente(id),
    fecha date
);

CREATE TABLE producto 
(
    id NUMBER NOT NULL PRIMARY KEY,
    descripcion VARCHAR2(500) NOT NULL,
    stock NUMBER CHECK (stock >= 0),
    precio NUMBER
);

CREATE TABLE detalle_compra 
(
    id NUMBER NOT NULL PRIMARY KEY,
    producto_id NUMBER NOT NULL REFERENCES producto(id),
    compra_id NUMBER NOT NULL REFERENCES compra(id),
    cantidad NUMBER
);

INSERT INTO CLIENTE (ID, NOMBRE, EMAIL) 
VALUES (2,	'usuario02', 'usuario02@yahoo.com');
INSERT INTO CLIENTE (ID, NOMBRE, EMAIL) 
VALUES (3,	'usuario03', 'usuario03@hotmail.com');
INSERT INTO CLIENTE (ID, NOMBRE, EMAIL) 
VALUES (4,	'usuario04', 'usuario04@hotmail.com');
INSERT INTO CLIENTE (ID, NOMBRE, EMAIL) 
VALUES (5,	'usuario05', 'usuario05@yahoo.com');
INSERT INTO CLIENTE (ID, NOMBRE, EMAIL) 
VALUES (6,	'usuario06', 'usuario06@hotmail.com');
INSERT INTO CLIENTE (ID, NOMBRE, EMAIL) 
VALUES (7,	'usuario07', 'usuario07@yahoo.com');
INSERT INTO CLIENTE (ID, NOMBRE, EMAIL) 
VALUES (8,	'usuario08', 'usuario08@yahoo.com');
INSERT INTO CLIENTE (ID, NOMBRE, EMAIL) 
VALUES (9,	'usuario09', 'usuario09@hotmail.com');
INSERT INTO CLIENTE (ID, NOMBRE, EMAIL) 
VALUES (10,	'usuario010', 'usuario010@hotmail.com');
INSERT INTO CLIENTE (ID, NOMBRE, EMAIL) 
VALUES (1,	'usuario01', 'usuario01@gmail.com');

INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(1, 4, TO_DATE('2020-02-12', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(2, 5, TO_DATE('2020-03-14', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(3, 10, TO_DATE('2020-02-07', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(4, 9,	TO_DATE('2020-04-25', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(5, 7,	TO_DATE('2020-04-03', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(6, 2,	TO_DATE('2020-03-23', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(7, 9,	TO_DATE('2020-03-11', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(8, 3,	TO_DATE('2020-04-21', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(9, 2,	TO_DATE('2020-02-24', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(10, 10, TO_DATE('2020-04-18', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(11, 3, TO_DATE('2020-04-22', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(12, 8, TO_DATE('2020-03-22', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(13, 10, TO_DATE('2020-02-20', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(14, 9, TO_DATE('2020-02-07', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(15, 3, TO_DATE('2020-04-25', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(16, 4, TO_DATE('2020-03-20', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(17, 9, TO_DATE('2020-02-22', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(18, 8, TO_DATE('2020-02-17', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(19, 10, TO_DATE('2020-03-14', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(20, 9, TO_DATE('2020-03-07', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(21, 6, TO_DATE('2020-04-28', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(22, 5, TO_DATE('2020-02-06', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(23, 10, TO_DATE('2020-01-31', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(24, 3, TO_DATE('2020-02-15', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(25, 9, TO_DATE('2020-03-12', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(26, 1, TO_DATE('2020-01-31', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(27, 10, TO_DATE('2020-04-08', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(28, 3, TO_DATE('2020-03-20', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(29, 9, TO_DATE('2020-03-16', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(30, 5, TO_DATE('2020-04-09', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(31, 1, TO_DATE('2020-03-29', 'yyyy-mm-dd'));
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(32, 2, TO_DATE('2020-03-29', 'yyyy-mm-dd'));

INSERT INTO PRODUCTO (ID, DESCRIPCION, STOCK, PRECIO) 
VALUES(3, 'producto3', 9, 9449);
INSERT INTO PRODUCTO (ID, DESCRIPCION, STOCK, PRECIO) 
VALUES(4, 'producto4', 8, 194);
INSERT INTO PRODUCTO (ID, DESCRIPCION, STOCK, PRECIO) 
VALUES(5, 'producto5', 10, 3764);
INSERT INTO PRODUCTO (ID, DESCRIPCION, STOCK, PRECIO) 
VALUES(6, 'producto6', 6, 8655);
INSERT INTO PRODUCTO (ID, DESCRIPCION, STOCK, PRECIO) 
VALUES(7, 'producto7', 4, 2875);
INSERT INTO PRODUCTO (ID, DESCRIPCION, STOCK, PRECIO) 
VALUES(10, 'producto10', 1, 3001);
INSERT INTO PRODUCTO (ID, DESCRIPCION, STOCK, PRECIO) 
VALUES(11, 'producto11', 9, 7993);
INSERT INTO PRODUCTO (ID, DESCRIPCION, STOCK, PRECIO) 
VALUES(12, 'producto12', 3, 8504);
INSERT INTO PRODUCTO (ID, DESCRIPCION, STOCK, PRECIO) 
VALUES(13, 'producto13', 10, 2415);
INSERT INTO PRODUCTO (ID, DESCRIPCION, STOCK, PRECIO) 
VALUES(14, 'producto14', 5, 3824);
INSERT INTO PRODUCTO (ID, DESCRIPCION, STOCK, PRECIO) 
VALUES(15, 'producto15', 10, 7358);
INSERT INTO PRODUCTO (ID, DESCRIPCION, STOCK, PRECIO) 
VALUES(16, 'producto16', 7, 3631);
INSERT INTO PRODUCTO (ID, DESCRIPCION, STOCK, PRECIO) 
VALUES(17, 'producto17', 3, 4467);
INSERT INTO PRODUCTO (ID, DESCRIPCION, STOCK, PRECIO) 
VALUES(18, 'producto18', 2, 9383);
INSERT INTO PRODUCTO (ID, DESCRIPCION, STOCK, PRECIO) 
VALUES(19, 'producto19', 6, 1140);
INSERT INTO PRODUCTO (ID, DESCRIPCION, STOCK, PRECIO) 
VALUES(20, 'producto20', 4, 102);
INSERT INTO PRODUCTO (ID, DESCRIPCION, STOCK, PRECIO) 
VALUES(9, 'producto9', 4, 4219);
INSERT INTO PRODUCTO (ID, DESCRIPCION, STOCK, PRECIO) 
VALUES(1, 'producto1', 6, 9107);
INSERT INTO PRODUCTO (ID, DESCRIPCION, STOCK, PRECIO) 
VALUES(2, 'producto2', 5, 1760);
INSERT INTO PRODUCTO (ID, DESCRIPCION, STOCK, PRECIO) 
VALUES(8, 'producto8', 0, 8923);

INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(1, 2, 2, 9);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(2, 7, 6, 5);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(3, 16, 23, 1);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(4, 10, 13, 4);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(5, 7, 8, 2);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(6, 2, 14, 6);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(7, 19, 8, 7);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(8, 7, 19, 5);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(9, 17, 3, 5);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(10, 2, 3, 5);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(11, 16, 27, 8);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(12, 16, 10, 8);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(13, 13, 14, 8);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(14, 3, 30, 4);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(15, 13, 15, 2);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(16, 20, 21, 5);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(17, 15, 21, 2);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(18, 15, 16, 3);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(19, 16, 19, 9);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(20, 1, 6, 10);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(21, 17, 1, 7);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(22, 18, 1, 9);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(23, 20, 4, 8);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(24, 16, 4, 9);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(25, 14, 5, 6);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(26, 17, 7, 2);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(27, 17, 9, 6);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(28, 18, 11, 4);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(29, 20, 12, 7);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(30, 3, 17, 5);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(31, 2, 18, 10);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(32, 20, 20, 1);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(33, 10, 22, 10);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(34, 18, 24, 2);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(35, 3, 25, 10);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(36, 3, 26, 4);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(37, 3, 28, 2);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(38, 11, 29, 7);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(39, 9, 31, 5);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(40, 1, 32, 3);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(41, 2, 32, 3);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(42, 8, 32, 3);
commit;
----------------------------------------------------------------------
--Table CLIENTE creado.
--Table COMPRA creado.
--Table PRODUCTO creado.
--Table DETALLE_COMPRA creado.

--1 fila insertadas.
--...
--1 fila insertadas.

--Confirmaci?n terminada.

--SELECT * FROM CLIENTE;
--ID  NOMBRE         EMAIL
--2  usuario02  usuario02@yahoo.com
--3  usuario03  usuario03@hotmail.com
--4  usuario04  usuario04@hotmail.com
--5  usuario05  usuario05@yahoo.com
--6  usuario06  usuario06@hotmail.com
--7  usuario07  usuario07@yahoo.com
--8  usuario08  usuario08@yahoo.com
--9  usuario09  usuario09@hotmail.com
--10 usuario010 usuario010@hotmail.com
--1  usuario01  usuario01@gmail.com

--SELECT * FROM COMPRA;
--ID  CLIENTE_ID  FECHA
--1       4      12/02/20
--2       5      14/03/20
--3      10      07/02/20
--4       9      25/04/20
--5       7      03/04/20
--6       2      23/03/20
--7       9      11/03/20
--8       3      21/04/20
--9       2      24/02/20
--10     10      18/04/20
--11      3      22/04/20
--12      8      22/03/20
--13     10      20/02/20
--14      9      07/02/20
--15      3      25/04/20
--16      4      20/03/20
--17      9      22/02/20
--18      8      17/02/20
--19     10      14/03/20
--20      9      07/03/20
--21      6      28/04/20
--22      5      06/02/20
--23     10      31/01/20
--24      3      15/02/20
--25      9      12/03/20
--26      1      31/01/20
--27     10      08/04/20
--28      3      20/03/20
--29      9      16/03/20
--30      5      09/04/20
--31      1      29/03/20
--32      2      29/03/20

--SELECT * FROM PRODUCTO;
--ID  DESCRIPCION  STOCK  PRECIO
--3    producto3     9     9449
--4    producto4     8      194
--5    producto5    10     3764
--6    producto6     6     8655
--7    producto7     4     2875
--10   producto10    1     3001
--11   producto11    9     7993
--12   producto12    3     8504
--13   producto13   10     2415
--14   producto14    5     3824
--15   producto15   10     7358
--16   producto16    7     3631
--17   producto17    3     4467
--18   producto18    2     9383
--19   producto19    6     1140
--20   producto20    4      102
--9    producto9     4     4219
--1    producto1     6     9107
--2    producto2     5     1760
--8    producto8     0     8923

--SELECT * FROM DETALLE_COMPRA;
--ID  PRODUCTO_ID  COMPRA_ID  CANTIDAD
--1       2           2          9
--2       7           6          5
--3      16          23          1
--4      10          13          4
--5       7           8          2
--6       2          14          6
--7      19           8          7
--8       7          19          5
--9      17           3          5
--10      2           3          5
--11     16          27          8
--12     16          10          8
--13     13          14          8
--14      3          30          4
--15     13          15          2
--16     20          21          5
--17     15          21          2
--18     15          16          3
--19     16          19          9
--20      1           6         10
--21     17           1          7
--22     18           1          9
--23     20           4          8
--24     16           4          9
--25     14           5          6
--26     17           7          2
--27     17           9          6
--28     18          11          4
--29     20          12          7
--30      3          17          5
--31      2          18         10
--32     20          20          1
--33     10          22         10
--34     18          24          2
--35      3          25         10
--36      3          26          4
--37      3          28          2
--38     11          29          7
--39      9          31          5
--40      1          32          3
--41      2          32          3
--42      8          32          3

----------------------------------------------------------------------
--2. El cliente usuario01 ha realizado la siguiente compra:
--Producto: producto9.
--Cantidad: 5.
--Fecha: fecha del sistema

--Almacena los hechos que ocurrieron
-- primer commit para que inicie la transacci?n
COMMIT;
-- Ingreso de transacci?n
SET TRANSACTION NAME 'compra_01';

--Genera punto de retorno antes de error por falta de stock
SAVEPOINT antes_de_compra01; 

--Ingresa la compra y su detalle
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(33, 1, sysdate);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(43, 5, 33, 5);

--Actualiza stock
UPDATE PRODUCTO
SET stock = stock - 5
WHERE ID = 9; 

--Genera rollback (por falta de stock)
ROLLBACK TO SAVEPOINT antes_de_compra01;

COMMIT; 
----------------------------------------------------------------------
--Confirmaci?n terminada.
--Confirmaci?n terminada.

--Transaction NAME correcto.

--Savepoint creado.

--1 fila insertadas.

--1 fila insertadas.

--Error que empieza en la l?nea: 13 del comando :
--UPDATE PRODUCTO
--SET stock = stock - 5
--WHERE ID = 9
--Informe de error -
--ORA-02290: restricci?n de control (UNIDAD2_ORACLE.SYS_C007519) violada

--Rollback terminado.
--Confirmaci?n terminada.
----------------------------------------------------------------------
--Comprueba resultados, ver si fue producto fue descontado del stock
SELECT id AS id_producto, descripcion, stock 
FROM producto
WHERE descripcion = 'producto9'; 
----------------------------------------------------------------------
--ID_PRODUCTO DESCRIPCION STOCK
--9            producto9    4
----------------------------------------------------------------------
--3. El cliente usuario02 ha realizado la siguiente compra:
--Producto: producto1, producto2, producto8.
--Cantidad: 3 de cada producto.
--Fecha: fecha del sistema.

--Consultas correspondientes al requerimiento
COMMIT;
-- Ingresamos la transacci?n
SET TRANSACTION NAME 'compra_02';

--Ingresa la compra y su detalle
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(34, 2, sysdate);
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(35, 2, sysdate);
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(36, 2, sysdate);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(44, 1, 34, 3);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(45, 2, 34, 3);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(46, 3, 34, 3);

--Actualiza stock
UPDATE PRODUCTO
SET stock = stock - 3
WHERE ID = 1; 
UPDATE PRODUCTO
SET stock = stock - 3
WHERE ID = 2; 
UPDATE PRODUCTO
SET stock = stock - 3
WHERE ID = 3; 

COMMIT;
----------------------------------------------------------------------
--Confirmaci?n terminada.

--Transaction NAME correcto.

--Savepoint creado.

--1 fila insertadas.
--1 fila insertadas.
--1 fila insertadas.
--1 fila insertadas.
--1 fila insertadas.
--1 fila insertadas.

--3 filas actualizadas.

--Confirmaci?n terminada.
----------------------------------------------------------------------
--Consulta tabla producto para validar q si alguno se queda sin stock, 
--no se realice la compra
SELECT id AS id_producto, descripcion, stock
FROM producto;
----------------------------------------------------------------------
--ID_PRODUCTO     DESCRIPCION     STOCK
--3                producto3        6
--4                producto4        8
--5                producto5       10
--6                producto6        6
--7                producto7        4
--10               producto10       1
--11               producto11       9
--12               producto12       3
--13               producto13      10
--14               producto14       5
--15               producto15      10
--16               producto16       7
--17               producto17       3
--18               producto18       2
--19               producto19       6
--20               producto20       4
--9                producto9        4
--1                producto1        0
--2                producto2        2
--8                producto8        0
--producto1 se ha quedado sin stock
----------------------------------------------------------------------
--Consulta tabla producto para validar q si alguno se queda sin stock, 
--no se realice la compra.
COMMIT;
-- Ingresamos la transacci?n
SET TRANSACTION NAME 'compra_03';

--Genera punto de retorno antes de error por falta de stock
SAVEPOINT antes_de_compra03; 

--Ingresa la compra y su detalle
INSERT INTO COMPRA (ID, CLIENTE_ID, FECHA) 
VALUES(37, 3, sysdate);
INSERT INTO DETALLE_COMPRA (ID, PRODUCTO_ID, COMPRA_ID, CANTIDAD) 
VALUES(47, 1, 37, 1);

--Actualiza stock
UPDATE PRODUCTO SET stock = stock - 1 WHERE ID = 1; 

--Genera rollback (por falta de stock)
ROLLBACK TO SAVEPOINT antes_de_compra03;

COMMIT;
----------------------------------------------------------------------
--Error que empieza en la l?nea: 15 del comando :
--UPDATE PRODUCTO SET stock = stock - 1 WHERE ID = 1
--Informe de error -
--ORA-02290: restricci?n de control (UNIDAD2_ORACLE.SYS_C007519) violada

--Rollback terminado.
--Confirmaci?n terminada.
----------------------------------------------------------------------
SELECT id AS id_producto, descripcion, stock
FROM producto;
----------------------------------------------------------------------
--ID_PRODUCTO     DESCRIPCION     STOCK
--3                producto3        6
--4                producto4        8
--5                producto5       10
--6                producto6        6
--7                producto7        4
--10               producto10       1
--11               producto11       9
--12               producto12       3
--13               producto13      10
--14               producto14       5
--15               producto15      10
--16               producto16       7
--17               producto17       3
--18               producto18       2
--19               producto19       6
--20               producto20       4
--9                producto9        4
--1                producto1        0
--2                producto2        2
--8                producto8        0
----------------------------------------------------------------------
--4. Realizar las siguientes consultas:
--A. Deshabilita el AUTOCOMMIT
SET autocommit off; 
show autocommit; 
----------------------------------------------------------------------
--autocommit OFF
----------------------------------------------------------------------
--B. Inserta nuevo cliente
COMMIT;
SET TRANSACTION NAME 'insercion_nuevo_cliente';
SAVEPOINT antes_insercion_nuevo_cliente;
INSERT INTO CLIENTE (ID, NOMBRE, EMAIL)
VALUES (11,	'usuario011', 'usuario011@gmail.com');
----------------------------------------------------------------------
--Confirmaci?n terminada.

--Transaction NAME correcto.

--Savepoint creado.

--1 fila insertadas.
----------------------------------------------------------------------
--C. Confirma que fue agregado en la tabla cliente
SELECT id, nombre FROM cliente WHERE id = 11; 
----------------------------------------------------------------------
--ID  NOMBRE
--11 usuario011
----------------------------------------------------------------------
--D. Realiza ROLLBACK
ROLLBACK TO SAVEPOINT antes_insercion_nuevo_cliente; 
----------------------------------------------------------------------
--Rollback terminado. 
----------------------------------------------------------------------
--E. Confirma que se restaur? la info (sin considerar el punto b)
SELECT id, nombre, email 
FROM cliente; 
----------------------------------------------------------------------
--ID   NOMBRE         EMAIL
--2  usuario02  usuario02@yahoo.com
--3  usuario03  usuario03@hotmail.com
--4  usuario04  usuario04@hotmail.com
--5  usuario05  usuario05@yahoo.com
--6  usuario06  usuario06@hotmail.com
--7  usuario07  usuario07@yahoo.com
--8  usuario08  usuario08@yahoo.com
--9  usuario09  usuario09@hotmail.com
--10 usuario010 usuario010@hotmail.com
--1  usuario01  usuario01@gmail.com
----------------------------------------------------------------------
-- F. Habilita de nuevo el AUTOCOMMIT
SET autocommit on; 
show autocommit;
commit; 
----------------------------------------------------------------------
--autocommit IMMEDIATE
--Confirmaci?n terminada.