/*
Practica 4:
-Insertar 75 registros a traves de todas las tablas
-Hacer 5 updates
-Hacer 5 delete
*/

--Inserts
	--Tabla Cliente [10]
	INSERT INTO [dbo].[Pasajero] (PasajeroId, Nombre, Apellidos, TipoPasajero, Telefono, Correo) VALUES (1, 'Juan', 'Rodriguez Rodriguez', 'Adulto', null, 'juanRR@yahoo.com')
	INSERT INTO [dbo].[Pasajero] (PasajeroId, Nombre, Apellidos, TipoPasajero, Telefono, Correo) VALUES (2, 'Antonio', 'Banderas', 'Adulto', 81173456, null)
	INSERT INTO [dbo].[Pasajero] (PasajeroId, Nombre, Apellidos, TipoPasajero, Telefono, Correo) VALUES (3, 'Oscar', 'Perez Martinez', 'Niño', 81175975, 'gamer_pro123@gamil.com')
	INSERT INTO [dbo].[Pasajero] (PasajeroId, Nombre, Apellidos, TipoPasajero, Telefono, Correo) VALUES (4, 'Jose Juan', 'Flores Caballero', 'Adulto', 81196684, 'JJFlores.99@hotmail.com')
	INSERT INTO [dbo].[Pasajero] (PasajeroId, Nombre, Apellidos, TipoPasajero, Telefono, Correo) VALUES (5, 'Alfonso', 'Gutierrez', 'Niño', null, null)
	INSERT INTO [dbo].[Pasajero] (PasajeroId, Nombre, Apellidos, TipoPasajero, Telefono, Correo) VALUES (6, 'Roberto', 'Melchor Alvarado', 'Adulto', 81135952, 'Melchor.77@outlook.es')
	INSERT INTO [dbo].[Pasajero] (PasajeroId, Nombre, Apellidos, TipoPasajero, Telefono, Correo) VALUES (7, 'Cristobal', 'Colon', 'Adulto', 81199999, 'america.99@uanl.mx')
	INSERT INTO [dbo].[Pasajero] (PasajeroId, Nombre, Apellidos, TipoPasajero, Telefono, Correo) VALUES (8, 'Miguel', 'Salazar', 'Adulto', 81167548, 'miguel_r4@capcom.com')
	INSERT INTO [dbo].[Pasajero] (PasajeroId, Nombre, Apellidos, TipoPasajero, Telefono, Correo) VALUES (9, 'Jose Miguel', 'Salazar', 'Niño', 81167548, null)
	INSERT INTO [dbo].[Pasajero] (PasajeroId, Nombre, Apellidos, TipoPasajero, Telefono, Correo) VALUES (10, 'Heriberto', 'Contreras Maldonado', 'Adulto', 81145790, 'sectec.80@cisco.com')
	--Tabla TipoDePago [3]
	INSERT INTO [dbo].[TipoDePago] (TipoId, TipoDP) VALUES (1, 'Efectivo')
	INSERT INTO [dbo].[TipoDePago] (TipoId, TipoDP) VALUES (2, 'Tarjeta')
	INSERT INTO [dbo].[TipoDePago] (TipoId, TipoDP) VALUES (3, 'Cortesia')
	--Tabla TipoDeMoneda [4]
	INSERT INTO [dbo].[TipoDeMoneda] (TipoMonedaId, TipoDeMon, Pais) VALUES (840, 'USD', 'Estados Unidos')
	INSERT INTO [dbo].[TipoDeMoneda] (TipoMonedaId, TipoDeMon, Pais) VALUES (978, 'EUR', 'Union Europea')
	INSERT INTO [dbo].[TipoDeMoneda] (TipoMonedaId, TipoDeMon, Pais) VALUES (484, 'MXN', 'Mexico')
	INSERT INTO [dbo].[TipoDeMoneda] (TipoMonedaId, TipoDeMon, Pais) VALUES (826, 'GBP', 'Inglaterra')
	--Tabla Pago [10]
	INSERT INTO [dbo].[Pago] (PagoId, TipoId, MonedaId, Fecha) VALUES (NEWID(), 1, 484, GETDATE())
	INSERT INTO [dbo].[Pago] (PagoId, TipoId, MonedaId, Fecha) VALUES (NEWID(), 2, 484, GETDATE())
	INSERT INTO [dbo].[Pago] (PagoId, TipoId, MonedaId, Fecha) VALUES (NEWID(), 1, 840, GETDATE())
	INSERT INTO [dbo].[Pago] (PagoId, TipoId, MonedaId, Fecha) VALUES (NEWID(), 2, 978, GETDATE())
	INSERT INTO [dbo].[Pago] (PagoId, TipoId, MonedaId, Fecha) VALUES (NEWID(), 2, 840, GETDATE())
	INSERT INTO [dbo].[Pago] (PagoId, TipoId, MonedaId, Fecha) VALUES (NEWID(), 1, 826, GETDATE())
	INSERT INTO [dbo].[Pago] (PagoId, TipoId, MonedaId, Fecha) VALUES (NEWID(), 3, 484, GETDATE())
	INSERT INTO [dbo].[Pago] (PagoId, TipoId, MonedaId, Fecha) VALUES (NEWID(), 1, 484, GETDATE())
	INSERT INTO [dbo].[Pago] (PagoId, TipoId, MonedaId, Fecha) VALUES (NEWID(), 1, 826, GETDATE())
	INSERT INTO [dbo].[Pago] (PagoId, TipoId, MonedaId, Fecha) VALUES (NEWID(), 2, 840, GETDATE())
	--Tabla Banco [3]
	INSERT INTO [dbo].[Bancos] (BancosId, Nombre, Origen, TipoMonedaId) VALUES (6500, 'Banamex', 'Mexico', 484)
	INSERT INTO [dbo].[Bancos] (BancosId, Nombre, Origen, TipoMonedaId) VALUES (7200, 'Santander', 'Estados Unidos', 840)
	INSERT INTO [dbo].[Bancos] (BancosId, Nombre, Origen, TipoMonedaId) VALUES (4300, 'Bancomer', 'Mexico', 484)
	--Tabla Camioneras (Lineas) [2]
	INSERT INTO [dbo].[Camioneras] (CamionerasId, Nombre, Motor, Año) VALUES (2404, 'Transportes del Norte', null, null)
	INSERT INTO [dbo].[Camioneras] (CamionerasId, Nombre, Motor, Año) VALUES (5308, 'Turimex Internacional', null, null)
	--Tabla Empleado [13]
	INSERT INTO [dbo].[Empleados] (EmpleadoId, Nombre, Apellidos, Edad, Sexo) VALUES (24, 'Roberto', 'Garcia Hernandez', 27, 'M')
	INSERT INTO [dbo].[Empleados] (EmpleadoId, Nombre, Apellidos, Edad, Sexo) VALUES (18, 'Miguel', 'Galvan', 32, 'M')
	INSERT INTO [dbo].[Empleados] (EmpleadoId, Nombre, Apellidos, Edad, Sexo) VALUES (10, 'Hernesto', 'Rodriguez Santiago', 24, 'M')
	INSERT INTO [dbo].[Empleados] (EmpleadoId, Nombre, Apellidos, Edad, Sexo) VALUES (07, 'Emiliano', 'Juarez Santiago', 31, 'M')
	INSERT INTO [dbo].[Empleados] (EmpleadoId, Nombre, Apellidos, Edad, Sexo) VALUES (09, 'Monica', 'Villegas Hernandez', 34, 'F')
	INSERT INTO [dbo].[Empleados] (EmpleadoId, Nombre, Apellidos, Edad, Sexo) VALUES (15, 'Cristina', 'Flores Mata', 32, 'F')
	INSERT INTO [dbo].[Empleados] (EmpleadoId, Nombre, Apellidos, Edad, Sexo) VALUES (13, 'Jose', 'Hernandez Hernandez', 29, 'M')
	INSERT INTO [dbo].[Empleados] (EmpleadoId, Nombre, Apellidos, Edad, Sexo) VALUES (05, 'Galileo', 'Galilei', 40, 'M')
	INSERT INTO [dbo].[Empleados] (EmpleadoId, Nombre, Apellidos, Edad, Sexo) VALUES (17, 'Enrique', 'Ortera Medina', 37, 'M')
	INSERT INTO [dbo].[Empleados] (EmpleadoId, Nombre, Apellidos, Edad, Sexo) VALUES (19, 'Fernanda', 'Contreras Gaitan', 37, 'M')
	INSERT INTO [dbo].[Empleados] (EmpleadoId, Nombre, Apellidos, Edad, Sexo) VALUES (12, 'Gerardo', 'Ruiz Cortinez', 26, 'M')
	INSERT INTO [dbo].[Empleados] (EmpleadoId, Nombre, Apellidos, Edad, Sexo) VALUES (03, 'Eliseo', 'Rodriguez Rodriguez', 42, 'M')
	INSERT INTO [dbo].[Empleados] (EmpleadoId, Nombre, Apellidos, Edad, Sexo) VALUES (04, 'Alan David', 'Martinez Melchor', 30, 'M')
	--Tabla PuestoEmpleado [13]
	INSERT INTO [dbo].[PuestoEmpleados] (EmpleadoId, Puesto) VALUES (17, 'Chofer')
	INSERT INTO [dbo].[PuestoEmpleados] (EmpleadoId, Puesto) VALUES (24, 'Chofer')
	INSERT INTO [dbo].[PuestoEmpleados] (EmpleadoId, Puesto) VALUES (18, 'Chofer')
	INSERT INTO [dbo].[PuestoEmpleados] (EmpleadoId, Puesto) VALUES (10, 'Limpieza')
	INSERT INTO [dbo].[PuestoEmpleados] (EmpleadoId, Puesto) VALUES (07, 'Contaduria')
	INSERT INTO [dbo].[PuestoEmpleados] (EmpleadoId, Puesto) VALUES (09, 'Limpieza')
	INSERT INTO [dbo].[PuestoEmpleados] (EmpleadoId, Puesto) VALUES (15, 'Chofer')
	INSERT INTO [dbo].[PuestoEmpleados] (EmpleadoId, Puesto) VALUES (13, 'Seguridad')
	INSERT INTO [dbo].[PuestoEmpleados] (EmpleadoId, Puesto) VALUES (05, 'Seguridad')
	INSERT INTO [dbo].[PuestoEmpleados] (EmpleadoId, Puesto) VALUES (19, 'Chofer')
	INSERT INTO [dbo].[PuestoEmpleados] (EmpleadoId, Puesto) VALUES (04, 'Contaduria')
	INSERT INTO [dbo].[PuestoEmpleados] (EmpleadoId, Puesto) VALUES (03, 'Contaduria')
	INSERT INTO [dbo].[PuestoEmpleados] (EmpleadoId, Puesto) VALUES (12, 'Limpieza')
	--Tabla Autobus [5]
	INSERT INTO [dbo].[Autobus] (AutobusId, CamioneraId, ChoferId, Capacidad, Caracteristicas) VALUES (24, 2404, 17, 40, null)
	INSERT INTO [dbo].[Autobus] (AutobusId, CamioneraId, ChoferId, Capacidad, Caracteristicas) VALUES (17, 5308, 24, 45, null)
	INSERT INTO [dbo].[Autobus] (AutobusId, CamioneraId, ChoferId, Capacidad, Caracteristicas) VALUES (29, 5308, 15, 50, null)
	INSERT INTO [dbo].[Autobus] (AutobusId, CamioneraId, ChoferId, Capacidad, Caracteristicas) VALUES (7, 2404, 19, 35, null)
	INSERT INTO [dbo].[Autobus] (AutobusId, CamioneraId, ChoferId, Capacidad, Caracteristicas) VALUES (13, 2404, 18, 40, null)
	--Tabla Viaje [2]
	INSERT INTO [dbo].[Viaje] (ViajeId,Destino, Origen, Costo, AutobusId, Ida, Vuelta) VALUES (1, 'Austin, Tx', 'Monterrey, NL', 1211.00, 17, 2018-09-29, 2018-09-30)
	INSERT INTO [dbo].[Viaje] (ViajeId,Destino, Origen, Costo, AutobusId, Ida, Vuelta) VALUES (2, 'Palo Alto, Tamps', 'Monterrey, NL', 1312.00, 7, 2018-09-30, 2018-10-1)
	--Tabla Boleto [10]
	INSERT INTO [dbo].[Boleto] (NumFolio, ViajeId, ClienteId, PagoId) VALUES (NEWID(), 1, 1, '083688EC-45D3-4B5E-BC3B-FA9E20548DCA')
	INSERT INTO [dbo].[Boleto] (NumFolio, ViajeId, ClienteId, PagoId) VALUES (NEWID(), 1, 2, '2DB14D12-4755-4499-99CE-B96E0B642137')
	INSERT INTO [dbo].[Boleto] (NumFolio, ViajeId, ClienteId, PagoId) VALUES (NEWID(), 1, 3, '3F4B3041-F37D-4D67-8A32-067035DB4B8B')
	INSERT INTO [dbo].[Boleto] (NumFolio, ViajeId, ClienteId, PagoId) VALUES (NEWID(), 1, 4, '49CBABEF-EB2C-41FF-A8DC-E387AB6A77DB')
	INSERT INTO [dbo].[Boleto] (NumFolio, ViajeId, ClienteId, PagoId) VALUES (NEWID(), 1, 5, '809ECCBA-C0A4-4220-B396-25646F0C83DF')
	INSERT INTO [dbo].[Boleto] (NumFolio, ViajeId, ClienteId, PagoId) VALUES (NEWID(), 2, 6, '886CC185-8006-4590-ABC4-87EC157F69C9')
	INSERT INTO [dbo].[Boleto] (NumFolio, ViajeId, ClienteId, PagoId) VALUES (NEWID(), 2, 7, '894D3FF2-71EC-4AB8-81DB-EF3906A10FBC')
	INSERT INTO [dbo].[Boleto] (NumFolio, ViajeId, ClienteId, PagoId) VALUES (NEWID(), 2, 8, '9E5D632A-563C-4A82-8B87-16A1F2CD55A1')
	INSERT INTO [dbo].[Boleto] (NumFolio, ViajeId, ClienteId, PagoId) VALUES (NEWID(), 2, 9, 'A18CC9A4-97A5-4948-B3BE-0BF34B8C0244')
	INSERT INTO [dbo].[Boleto] (NumFolio, ViajeId, ClienteId, PagoId) VALUES (NEWID(), 2, 10, 'AEEEA714-FEBE-4A69-8729-0CB09D23D13B')
  
--Actualizaciones
UPDATE Boleto SET ViajeId = 1 WHERE NumFolio='36EB09C1-D252-4103-B394-29295D28A4E9'
UPDATE PuestoEmpleados SET Puesto = 'Limpieza' WHERE EmpleadoId=3
UPDATE Camioneras SET Motor = 'Diesel' WHERE CamionerasId=5308 OR CamionerasID=2404
UPDATE Viaje SET Vuelta=2018-10-2 WHERE ViajeId = 2
UPDATE Empleados SET Edad=28 WHERE EmpleadoId=24

--Eliminar
DELETE FROM Pago WHERE PagoId='083688EC-45D3-4B5E-BC3B-FA9E20548DCA'
DELETE FROM Pago WHERE PagoId='AEEEA714-FEBE-4A69-8729-0CB09D23D13B'
DELETE FROM Pasajero WHERE PasajeroId=10
DELETE FROM Boleto WHERE PasajeroId=10 OR PagoId='AEEEA714-FEBE-4A69-8729-0CB09D23D13B'
DELETE FROM Autobus WHERE Capacidad=40
