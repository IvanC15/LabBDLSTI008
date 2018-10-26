/* 
Práctica 6:
	3 Subconsulas
		1 subconsulta de columna
		1 subconsulta de tabla
	1 Subconsulta con with
	5 Vistas
		Con Join y funciones de agregación
	1 Consulta Dinamica
*/

--3 Subconsultas
SELECT Id_Ruta, (SELECT Nombre FROM Ciudades WHERE Id_Ciudad = Ciudad_Origen) as Ciudad_Origen, 
C.Nombre as Ciudad_Destino, CONVERT(char(5), Duracion, 108) as Duracion, Escalas 
FROM Rutas as R 
LEFT JOIN Ciudades as C ON R.Ciudad_Destino = C.Id_Ciudad

SELECT c.Nombre, c.Telefono FROM (SELECT Nombre, Apellidos, Telefono FROM Cliente WHERE Telefono!='N/A') AS c

SELECT (SELECT Nombre FROM Cliente as c WHERE c.Id_Cliente=cb.Id_Cliente) as Cliente, (SELECT Num_Asiento FROM Boletos as b WHERE b.Num_Folio=cb.Id_Boleto) as Asiento FROM Cliente_Boletos as cb

--1 Subconsulta con WITH
WITH temp AS 
(SELECT Id_Cliente, Nombre, Apellidos, Telefono FROM Cliente) 
SELECT Nombre, Apellidos, Telefono FROM temp WHERE temp.Telefono!='N/A'

--5 Vistas
CREATE VIEW numero_ventas
	AS SELECT COUNT(Id_Venta) as Ventas FROM Venta WHERE DATEPART(MONTH, Fecha_Venta) = DATEPART(MONTH, GETDATE())

SELECT * FROM numero_ventas

CREATE VIEW viajes_programados
	AS SELECT COUNT(Id_Viaje) as Viajes FROM Viaje WHERE DATEPART(MONTH, FechaHora_Salida) = DATEPART(MONTH, GETDATE())

SELECT * FROM viajes_programados

CREATE VIEW tipos_boletos
	AS SELECT t.Tipo, COUNT(Num_Folio) as Cantidad FROM Boletos as b RIGHT JOIN Tipo_Pasajero as t ON t.Id_Tipo = b.Id_TPasajero GROUP BY t.Tipo

SELECT * FROM tipos_boletos

CREATE VIEW viaje_autobus
	AS SELECT a.Id_Autobus, a.Modelo, COUNT(v.Id_Autobus) as NumeroViajes FROM Viaje as v RIGHT JOIN Autobuses as a ON a.Id_Autobus=v.Id_Autobus GROUP BY a.Id_Autobus, a.Modelo

SELECT * FROM viaje_autobus

CREATE VIEW cliente_promedio
	AS SELECT AVG(CantidadBoletos.Cantidad) as PromedioBoletosxCliente FROM (SELECT COUNT(Id_Boleto) as Cantidad FROM Cliente_Boletos GROUP BY Id_Cliente) as CantidadBoletos

SELECT * FROM cliente_promedio

--Consulta dinamica
DECLARE @Consulta varchar(200)
DECLARE @Tabla varchar(50)

SET @Tabla = 'Estados'
SET @Consulta = 'SELECT * FROM ' + @Tabla + '--'

EXEC(@Consulta)