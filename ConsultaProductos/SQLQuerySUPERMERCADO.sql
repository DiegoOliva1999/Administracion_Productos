CREATE DATABASE SUPERMERCADO
SET DATEFORMAT DMY
CREATE TABLE PRODUCTO
(
	ID_PRODUCTO INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
	CODIGO VARCHAR(20) NOT NULL,
	MARCA VARCHAR(50) NOT NULL,
	NOMBRE VARCHAR(70) NOT NULL,
	DESCRIPCION VARCHAR(100) NOT NULL,
	CANTIDAD INT NOT NULL,
	PRECIO FLOAT NOT NULL,
	FOTO IMAGE
)

select * from PRODUCTO
select NOMBRE,DESCRIPCION,CANTIDAD,PRECIO,FOTO from PRODUCTO where CODIGO = ''

INSERT INTO PRODUCTO (CODIGO, MARCA, NOMBRE, DESCRIPCION, CANTIDAD,PRECIO,FOTO)  
	SELECT '7411001802341', 'Coca Cola', 'Coca Cola 1.25 L', 'Bebida carbonatada sabor original envase plastico 1.25 L',2,1.85,BulkColumn  FROM Openrowset( Bulk 'C:\Users\50360\Downloads\CocaCola125L.png', Single_Blob) as FOTO