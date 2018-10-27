/* 
		Practica 7
1 procedimiento tipo script
5 procedimientos almacenados para reportes
1 función

*/

--1 Procedimiento tipo Script
CREATE PROCEDURE RestablecerCliente(
@Fecha datetime
)
AS
BEGIN
	DELETE FROM Viaje WHERE FechaHora_Salida <= @Fecha
END

EXEC RestablecerCliente @Fecha = '26/10/2017'

--5 Procedimiento para reportes

CREATE PROCEDURE RevisarNumVentas(
@Mes int
)
AS
BEGIN
	SELECT COUNT(Id_Venta) as Ventas 
	FROM Venta 
	WHERE DATEPART(MONTH, Fecha_Venta) = @Mes
END

EXEC RevisarNumVentas @Mes = 2

CREATE PROCEDURE RevisarViajesDia(
@Dia int
)
AS
BEGIN
	SELECT v.Id_Viaje, 
		(SELECT c.Nombre FROM Ciudades as c WHERE Id_Ciudad=r.Ciudad_Origen) as Origen,
		(SELECT c.Nombre FROM Ciudades as c WHERE Id_Ciudad=r.Ciudad_Destino) as Destino, 
		v.FechaHora_Salida as Viajes 
	FROM Viaje as v 
	LEFT JOIN Rutas as r
	ON r.Id_Ruta = v.Id_Ruta
	WHERE DATEPART(MONTH, FechaHora_Salida) = DATEPART(MONTH, GETDATE()) 
	AND DATEPART(YEAR, FechaHora_Salida) = DATEPART(YEAR, GETDATE())
	AND DATEPART(DAY, FechaHora_Salida) = @Dia
END

EXEC RevisarViajesDia @Dia = 29

CREATE PROCEDURE PromedioVentaBoletos(
@Precio money
)
AS
BEGIN
	SELECT AVG(CantidadBoletos.Cantidad) as PromedioBoletosxCliente 
	FROM (SELECT COUNT(Id_Boleto) as Cantidad 
			FROM Cliente_Boletos as cb 
			LEFT JOIN Boletos as b 
			ON b.Num_Folio = cb.Id_Boleto AND b.Precio >= @Precio
			GROUP BY Id_Cliente)
	as CantidadBoletos
END

EXEC PromedioVentaBoletos @Precio = 1500.00

CREATE PROCEDURE ViajesRealizadoAutobus(
@Mes int
)
AS
BEGIN
	SELECT a.Id_Autobus, a.Modelo, COUNT(v.Id_Autobus) as NumeroViajes 
	FROM Viaje as v 
	RIGHT JOIN Autobuses as a 
	ON a.Id_Autobus=v.Id_Autobus 
	WHERE DATEPART(MONTH, v.FechaHora_Salida) = @Mes
	GROUP BY a.Id_Autobus, a.Modelo
END

EXEC ViajesRealizadoAutobus @Mes = 10

CREATE PROCEDURE NumeroVentas(
@Mes int,
@Precio money
)
AS
BEGIN
	SELECT COUNT(Id_Venta) as Ventas 
	FROM Venta 
	WHERE DATEPART(MONTH, Fecha_Venta) = @Mes 
	AND Venta.Total >= @Precio
END

EXEC NumeroVentas @Mes = 10, @Precio = 1500.00

--1 funcion
CREATE FUNCTION VentasTotalesDolares(
@PrecioDolar money,
@Mes int
) RETURNS money
AS
BEGIN
	return (SELECT SUM(Total) FROM Venta WHERE DATEPART(MONTH, Fecha_Venta) = @Mes)/@PrecioDolar
END

SELECT dbo.VentasTotalesDolares(19.39, 10) as GanaciasDolares
