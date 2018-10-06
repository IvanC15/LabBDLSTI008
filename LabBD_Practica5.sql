USE ProyectoSenda_V4

--1 SELECT con INSERT
SELECT * INTO #TempViaje FROM Viaje
ALTER TABLE Boleto DROP CONSTRAINT FK_ViajeId
DROP TABLE Viaje
CREATE TABLE Viaje(ViajeId int PRIMARY KEY, Destino varchar(30) not null, Origen varchar(30) not null, Costo money not null, AutobusId int not null, Ida datetime not null, Vuelta datetime not null)
INSERT INTO Viaje SELECT * FROM #TempViaje
ALTER TABLE Boleto ADD CONSTRAINT FK_ViajeId FOREIGN KEY (ViajeId) REFERENCES Viaje (ViajeId)
ALTER TABLE Viaje ADD CONSTRAINT FK_Viaje_Autobus FOREIGN KEY (AutobusId) REFERENCES Autobus (AutobusId)

--5 SELECT Basicos con alias y funciones
SELECT AutobusId as IdentificadorDelAutobus, Capacidad FROM Autobus
SELECT COUNT(EmpleadoId) as NumeroDeEmpleados FROM Empleados
SELECT MIN(Costo) as ViajeMasBarato FROM Viaje
SELECT AVG(Edad) as PromedioDeEdad FROM Empleados
SELECT COUNT(Telefono) as TelefonosRegistrados FROM Pasajero

--4 SELECT con Join (Cross, Inner, Right, Left)
SELECT b.NumFolio, p.Nombre, p.Apellidos FROM Boleto as b INNER JOIN Pasajero as p ON b.ClienteId = p.PasajeroId
SELECT a.AutobusId, (e.Nombre+' '+e.Apellidos) as NombreCompleto, p.Puesto FROM Autobus as a LEFT JOIN PuestoEmpleados as p ON p.EmpleadoId = a.ChoferId LEFT JOIN Empleados as e ON e.EmpleadoId = p.EmpleadoId
SELECT a.AutobusId, v.ViajeId, v.Origen, v.Destino  FROM Autobus as a RIGHT JOIN Viaje as v ON v.AutobusId = a.AutobusId
SELECT v.ViajeId, a.AutobusId, v.Origen, v.Destino FROM Viaje as v CROSS JOIN Autobus as a

--5 SELECT con WHERE (1 con ORDEN BY)
SELECT * FROM Empleados WHERE Edad<30
SELECT PasajeroId, (Nombre+' '+Apellidos), TipoPasajero as NombreCompleto FROM Pasajero WHERE TipoPasajero='Adulto' AND PasajeroId>5 
SELECT * FROM Pago WHERE MonedaId<>840 AND MonedaId<>826
SELECT AutobusId, Capacidad FROM Autobus WHERE CamioneraId = 2404
SELECT * FROM Pago WHERE TipoId>1 ORDER BY Fecha DESC

--5 SELECT con funciones de agregacion (2 sin GROUP BY y 3 con GROUP BY [1 con Having])
SELECT MAX(Edad) FROM Empleados
SELECT MIN(BancosId) as CodigoBanco FROM Bancos
SELECT Puesto, COUNT(EmpleadoId) FROM PuestoEmpleados GROUP BY Puesto
SELECT TipoPasajero, COUNT(PasajeroId) as Cantidad FROM Pasajero GROUP BY TipoPasajero
SELECT ViajeId, COUNT(NumFolio) as CantidadBoletos FROM Boleto GROUP BY ViajeId HAVING COUNT(NumFolio)>4

--3 SELECT con JOIN y GROUP BY
SELECT COUNT(p.Puesto) as CantidadEmpleados, e.Sexo FROM Empleados as e JOIN PuestoEmpleados as p ON p.EmpleadoId=e.EmpleadoId GROUP BY e.Sexo
SELECT c.Nombre, COUNT(a.AutobusId) as CantidadAutobuses FROM Camioneras as c LEFT JOIN Autobus as a ON a.CamioneraId=c.CamionerasId GROUP BY Nombre
SELECT p.TipoId, COUNT(t.TipoMonedaId) as PagosRealizados FROM Pago as p LEFT JOIN TipoDeMoneda as t ON t.TipoMonedaId=p.MonedaId GROUP BY p.TipoId