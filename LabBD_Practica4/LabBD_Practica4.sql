USE [ProyectoSenda_V4]
GO
ALTER TABLE [dbo].[Viaje] DROP CONSTRAINT [FK_AutobusId]
GO
ALTER TABLE [dbo].[PuestoEmpleados] DROP CONSTRAINT [FK_PuestoEmpleados_Empleados]
GO
ALTER TABLE [dbo].[Pago] DROP CONSTRAINT [FK_TipoPagoId]
GO
ALTER TABLE [dbo].[Pago] DROP CONSTRAINT [FK_TipoMonedaId]
GO
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT [FK_ViajeId]
GO
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT [FK_PagoBoletoId]
GO
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT [FK_ClienteId]
GO
ALTER TABLE [dbo].[Bancos] DROP CONSTRAINT [FK_TipoMonedaBancoId]
GO
ALTER TABLE [dbo].[Autobus] DROP CONSTRAINT [FK_CamioneraId]
GO
ALTER TABLE [dbo].[Autobus] DROP CONSTRAINT [FK_Autobus_PuestoEmpleados]
GO
/****** Object:  Table [dbo].[Viaje]    Script Date: 29/09/2018 10:54:51 ******/
DROP TABLE [dbo].[Viaje]
GO
/****** Object:  Table [dbo].[TipoDePago]    Script Date: 29/09/2018 10:54:51 ******/
DROP TABLE [dbo].[TipoDePago]
GO
/****** Object:  Table [dbo].[TipoDeMoneda]    Script Date: 29/09/2018 10:54:51 ******/
DROP TABLE [dbo].[TipoDeMoneda]
GO
/****** Object:  Table [dbo].[PuestoEmpleados]    Script Date: 29/09/2018 10:54:51 ******/
DROP TABLE [dbo].[PuestoEmpleados]
GO
/****** Object:  Table [dbo].[Pasajero]    Script Date: 29/09/2018 10:54:51 ******/
DROP TABLE [dbo].[Pasajero]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 29/09/2018 10:54:51 ******/
DROP TABLE [dbo].[Pago]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 29/09/2018 10:54:51 ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Camioneras]    Script Date: 29/09/2018 10:54:51 ******/
DROP TABLE [dbo].[Camioneras]
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 29/09/2018 10:54:51 ******/
DROP TABLE [dbo].[Boleto]
GO
/****** Object:  Table [dbo].[Bancos]    Script Date: 29/09/2018 10:54:51 ******/
DROP TABLE [dbo].[Bancos]
GO
/****** Object:  Table [dbo].[Autobus]    Script Date: 29/09/2018 10:54:51 ******/
DROP TABLE [dbo].[Autobus]
GO
USE [master]
GO
/****** Object:  Database [ProyectoSenda_V4]    Script Date: 29/09/2018 10:54:51 ******/
DROP DATABASE [ProyectoSenda_V4]
GO
/****** Object:  Database [ProyectoSenda_V4]    Script Date: 29/09/2018 10:54:51 ******/
CREATE DATABASE [ProyectoSenda_V4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyectoSenda_V4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ProyectoSenda_V4.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProyectoSenda_V4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ProyectoSenda_V4_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ProyectoSenda_V4] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectoSenda_V4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyectoSenda_V4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProyectoSenda_V4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProyectoSenda_V4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProyectoSenda_V4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProyectoSenda_V4] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProyectoSenda_V4] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProyectoSenda_V4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyectoSenda_V4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyectoSenda_V4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyectoSenda_V4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProyectoSenda_V4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProyectoSenda_V4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyectoSenda_V4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProyectoSenda_V4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyectoSenda_V4] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProyectoSenda_V4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyectoSenda_V4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyectoSenda_V4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyectoSenda_V4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyectoSenda_V4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyectoSenda_V4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProyectoSenda_V4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyectoSenda_V4] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProyectoSenda_V4] SET  MULTI_USER 
GO
ALTER DATABASE [ProyectoSenda_V4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyectoSenda_V4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyectoSenda_V4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyectoSenda_V4] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ProyectoSenda_V4] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ProyectoSenda_V4]
GO
/****** Object:  Table [dbo].[Autobus]    Script Date: 29/09/2018 10:54:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Autobus](
	[AutobusId] [int] NOT NULL,
	[CamioneraId] [int] NOT NULL,
	[ChoferId] [int] NULL,
	[Capacidad] [int] NOT NULL,
	[Caracteristicas] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AutobusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bancos]    Script Date: 29/09/2018 10:54:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bancos](
	[BancosId] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Origen] [varchar](20) NULL,
	[TipoMonedaId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BancosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 29/09/2018 10:54:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Boleto](
	[NumFolio] [varchar](40) NOT NULL,
	[ViajeId] [int] NOT NULL,
	[ClienteId] [int] NOT NULL,
	[PagoId] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[NumFolio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Camioneras]    Script Date: 29/09/2018 10:54:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Camioneras](
	[CamionerasId] [int] NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Motor] [varchar](10) NULL,
	[Año] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CamionerasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 29/09/2018 10:54:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadoId] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Apellidos] [varchar](30) NOT NULL,
	[Edad] [varchar](10) NULL,
	[Sexo] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 29/09/2018 10:54:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pago](
	[PagoId] [varchar](40) NOT NULL,
	[TipoId] [int] NOT NULL,
	[MonedaId] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PagoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pasajero]    Script Date: 29/09/2018 10:54:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pasajero](
	[PasajeroId] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Apellidos] [varchar](30) NOT NULL,
	[TipoPasajero] [varchar](10) NOT NULL,
	[Telefono] [int] NULL,
	[Correo] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[PasajeroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PuestoEmpleados]    Script Date: 29/09/2018 10:54:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PuestoEmpleados](
	[EmpleadoId] [int] NOT NULL,
	[Puesto] [varchar](25) NOT NULL,
 CONSTRAINT [PK_PuestoEmpleados] PRIMARY KEY CLUSTERED 
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoDeMoneda]    Script Date: 29/09/2018 10:54:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDeMoneda](
	[TipoMonedaId] [int] NOT NULL,
	[TipoDeMon] [varchar](3) NOT NULL,
	[Pais] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoMonedaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoDePago]    Script Date: 29/09/2018 10:54:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDePago](
	[TipoId] [int] NOT NULL,
	[TipoDP] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Viaje]    Script Date: 29/09/2018 10:54:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Viaje](
	[ViajeId] [int] NOT NULL,
	[Destino] [varchar](30) NOT NULL,
	[Origen] [varchar](30) NOT NULL,
	[Costo] [money] NOT NULL,
	[AutobusId] [int] NOT NULL,
	[Ida] [datetime] NOT NULL,
	[Vuelta] [datetime] NOT NULL,
 CONSTRAINT [PK__Viaje__D76D88CCCCF5C40B] PRIMARY KEY CLUSTERED 
(
	[ViajeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Autobus] ([AutobusId], [CamioneraId], [ChoferId], [Capacidad], [Caracteristicas]) VALUES (7, 2404, 19, 35, NULL)
INSERT [dbo].[Autobus] ([AutobusId], [CamioneraId], [ChoferId], [Capacidad], [Caracteristicas]) VALUES (13, 2404, 18, 40, NULL)
INSERT [dbo].[Autobus] ([AutobusId], [CamioneraId], [ChoferId], [Capacidad], [Caracteristicas]) VALUES (17, 5308, 24, 45, NULL)
INSERT [dbo].[Autobus] ([AutobusId], [CamioneraId], [ChoferId], [Capacidad], [Caracteristicas]) VALUES (24, 2404, 17, 40, NULL)
INSERT [dbo].[Autobus] ([AutobusId], [CamioneraId], [ChoferId], [Capacidad], [Caracteristicas]) VALUES (29, 5308, 15, 50, NULL)
INSERT [dbo].[Bancos] ([BancosId], [Nombre], [Origen], [TipoMonedaId]) VALUES (4300, N'Bancomer', N'Mexico', 484)
INSERT [dbo].[Bancos] ([BancosId], [Nombre], [Origen], [TipoMonedaId]) VALUES (6500, N'Banamex', N'Mexico', 484)
INSERT [dbo].[Bancos] ([BancosId], [Nombre], [Origen], [TipoMonedaId]) VALUES (7200, N'Santander', N'Estados Unidos', 840)
INSERT [dbo].[Boleto] ([NumFolio], [ViajeId], [ClienteId], [PagoId]) VALUES (N'05F9B936-297E-49C4-A247-36F0E5157042', 1, 1, N'083688EC-45D3-4B5E-BC3B-FA9E20548DCA')
INSERT [dbo].[Boleto] ([NumFolio], [ViajeId], [ClienteId], [PagoId]) VALUES (N'36EB09C1-D252-4103-B394-29295D28A4E9', 1, 9, N'A18CC9A4-97A5-4948-B3BE-0BF34B8C0244')
INSERT [dbo].[Boleto] ([NumFolio], [ViajeId], [ClienteId], [PagoId]) VALUES (N'3B3F891B-49A1-4859-BF23-86A13C8FED8A', 2, 7, N'894D3FF2-71EC-4AB8-81DB-EF3906A10FBC')
INSERT [dbo].[Boleto] ([NumFolio], [ViajeId], [ClienteId], [PagoId]) VALUES (N'723FC01E-D4E0-4329-8C3D-79A1570E60B8', 1, 5, N'809ECCBA-C0A4-4220-B396-25646F0C83DF')
INSERT [dbo].[Boleto] ([NumFolio], [ViajeId], [ClienteId], [PagoId]) VALUES (N'848268C6-A66F-4CCE-BB10-BADC5C796A4E', 2, 6, N'886CC185-8006-4590-ABC4-87EC157F69C9')
INSERT [dbo].[Boleto] ([NumFolio], [ViajeId], [ClienteId], [PagoId]) VALUES (N'9D84F78D-A004-4B43-86CF-84CE6F19DF95', 2, 8, N'9E5D632A-563C-4A82-8B87-16A1F2CD55A1')
INSERT [dbo].[Boleto] ([NumFolio], [ViajeId], [ClienteId], [PagoId]) VALUES (N'CAB75F04-CFE7-430F-AD76-7CDBDEF39649', 2, 10, N'AEEEA714-FEBE-4A69-8729-0CB09D23D13B')
INSERT [dbo].[Boleto] ([NumFolio], [ViajeId], [ClienteId], [PagoId]) VALUES (N'D36B0898-AEA4-4B76-9A5E-612B984EF1E6', 1, 4, N'49CBABEF-EB2C-41FF-A8DC-E387AB6A77DB')
INSERT [dbo].[Boleto] ([NumFolio], [ViajeId], [ClienteId], [PagoId]) VALUES (N'F4A8D248-EAD0-4CFA-8675-F7BE0C5EE75E', 1, 3, N'3F4B3041-F37D-4D67-8A32-067035DB4B8B')
INSERT [dbo].[Boleto] ([NumFolio], [ViajeId], [ClienteId], [PagoId]) VALUES (N'FB07519F-E33C-4F2E-9AC7-25093440F9E7', 1, 2, N'2DB14D12-4755-4499-99CE-B96E0B642137')
INSERT [dbo].[Camioneras] ([CamionerasId], [Nombre], [Motor], [Año]) VALUES (2404, N'Transportes del Norte', N'Diesel', NULL)
INSERT [dbo].[Camioneras] ([CamionerasId], [Nombre], [Motor], [Año]) VALUES (5308, N'Turimex Internacional', N'Diesel', NULL)
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellidos], [Edad], [Sexo]) VALUES (3, N'Eliseo', N'Rodriguez Rodriguez', N'42', N'M')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellidos], [Edad], [Sexo]) VALUES (4, N'Alan David', N'Martinez Melchor', N'30', N'M')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellidos], [Edad], [Sexo]) VALUES (5, N'Galileo', N'Galilei', N'40', N'M')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellidos], [Edad], [Sexo]) VALUES (7, N'Emiliano', N'Juarez Santiago', N'31', N'M')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellidos], [Edad], [Sexo]) VALUES (9, N'Monica', N'Villegas Hernandez', N'34', N'F')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellidos], [Edad], [Sexo]) VALUES (10, N'Hernesto', N'Rodriguez Santiago', N'24', N'M')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellidos], [Edad], [Sexo]) VALUES (12, N'Gerardo', N'Ruiz Cortinez', N'26', N'M')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellidos], [Edad], [Sexo]) VALUES (13, N'Jose', N'Hernandez Hernandez', N'29', N'M')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellidos], [Edad], [Sexo]) VALUES (15, N'Cristina', N'Flores Mata', N'32', N'F')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellidos], [Edad], [Sexo]) VALUES (17, N'Enrique', N'Ortera Medina', N'37', N'M')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellidos], [Edad], [Sexo]) VALUES (18, N'Miguel', N'Galvan', N'32', N'M')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellidos], [Edad], [Sexo]) VALUES (19, N'Fernanda', N'Contreras Gaitan', N'37', N'M')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellidos], [Edad], [Sexo]) VALUES (24, N'Roberto', N'Garcia Hernandez', N'28', N'M')
INSERT [dbo].[Pago] ([PagoId], [TipoId], [MonedaId], [Fecha]) VALUES (N'083688EC-45D3-4B5E-BC3B-FA9E20548DCA', 2, 484, CAST(N'2018-09-29 02:55:01.020' AS DateTime))
INSERT [dbo].[Pago] ([PagoId], [TipoId], [MonedaId], [Fecha]) VALUES (N'2DB14D12-4755-4499-99CE-B96E0B642137', 1, 826, CAST(N'2018-09-29 02:57:05.573' AS DateTime))
INSERT [dbo].[Pago] ([PagoId], [TipoId], [MonedaId], [Fecha]) VALUES (N'3F4B3041-F37D-4D67-8A32-067035DB4B8B', 1, 484, CAST(N'2018-09-29 02:54:47.133' AS DateTime))
INSERT [dbo].[Pago] ([PagoId], [TipoId], [MonedaId], [Fecha]) VALUES (N'49CBABEF-EB2C-41FF-A8DC-E387AB6A77DB', 3, 484, CAST(N'2018-09-29 02:57:22.697' AS DateTime))
INSERT [dbo].[Pago] ([PagoId], [TipoId], [MonedaId], [Fecha]) VALUES (N'809ECCBA-C0A4-4220-B396-25646F0C83DF', 1, 826, CAST(N'2018-09-29 09:10:06.360' AS DateTime))
INSERT [dbo].[Pago] ([PagoId], [TipoId], [MonedaId], [Fecha]) VALUES (N'886CC185-8006-4590-ABC4-87EC157F69C9', 1, 484, CAST(N'2018-09-29 09:09:29.313' AS DateTime))
INSERT [dbo].[Pago] ([PagoId], [TipoId], [MonedaId], [Fecha]) VALUES (N'894D3FF2-71EC-4AB8-81DB-EF3906A10FBC', 2, 978, CAST(N'2018-09-29 02:56:15.143' AS DateTime))
INSERT [dbo].[Pago] ([PagoId], [TipoId], [MonedaId], [Fecha]) VALUES (N'9E5D632A-563C-4A82-8B87-16A1F2CD55A1', 1, 840, CAST(N'2018-09-29 02:56:09.240' AS DateTime))
INSERT [dbo].[Pago] ([PagoId], [TipoId], [MonedaId], [Fecha]) VALUES (N'A18CC9A4-97A5-4948-B3BE-0BF34B8C0244', 2, 840, CAST(N'2018-09-29 09:11:28.813' AS DateTime))
INSERT [dbo].[Pago] ([PagoId], [TipoId], [MonedaId], [Fecha]) VALUES (N'AEEEA714-FEBE-4A69-8729-0CB09D23D13B', 2, 840, CAST(N'2018-09-29 02:56:23.577' AS DateTime))
INSERT [dbo].[Pasajero] ([PasajeroId], [Nombre], [Apellidos], [TipoPasajero], [Telefono], [Correo]) VALUES (1, N'Juan', N'Rodriguez Rodriguez', N'Adulto', NULL, N'juanRR@yahoo.com')
INSERT [dbo].[Pasajero] ([PasajeroId], [Nombre], [Apellidos], [TipoPasajero], [Telefono], [Correo]) VALUES (2, N'Antonio', N'Banderas', N'Adulto', 81173456, NULL)
INSERT [dbo].[Pasajero] ([PasajeroId], [Nombre], [Apellidos], [TipoPasajero], [Telefono], [Correo]) VALUES (3, N'Oscar', N'Perez Martinez', N'Niño', 81175975, N'gamer_pro123@gamil.com')
INSERT [dbo].[Pasajero] ([PasajeroId], [Nombre], [Apellidos], [TipoPasajero], [Telefono], [Correo]) VALUES (4, N'Jose Juan', N'Flores Caballero', N'Adulto', 81196684, N'JJFlores.99@hotmail.com')
INSERT [dbo].[Pasajero] ([PasajeroId], [Nombre], [Apellidos], [TipoPasajero], [Telefono], [Correo]) VALUES (5, N'Alfonso', N'Gutierrez', N'Niño', NULL, NULL)
INSERT [dbo].[Pasajero] ([PasajeroId], [Nombre], [Apellidos], [TipoPasajero], [Telefono], [Correo]) VALUES (6, N'Roberto', N'Melchor Alvarado', N'Adulto', 81135952, N'Melchor.77@outlook.es')
INSERT [dbo].[Pasajero] ([PasajeroId], [Nombre], [Apellidos], [TipoPasajero], [Telefono], [Correo]) VALUES (7, N'Cristobal', N'Colon', N'Adulto', 81199999, N'america.99@uanl.mx')
INSERT [dbo].[Pasajero] ([PasajeroId], [Nombre], [Apellidos], [TipoPasajero], [Telefono], [Correo]) VALUES (8, N'Miguel', N'Salazar', N'Adulto', 81167548, N'miguel_r4@capcom.com')
INSERT [dbo].[Pasajero] ([PasajeroId], [Nombre], [Apellidos], [TipoPasajero], [Telefono], [Correo]) VALUES (9, N'Jose Miguel', N'Salazar', N'Niño', 81167548, NULL)
INSERT [dbo].[Pasajero] ([PasajeroId], [Nombre], [Apellidos], [TipoPasajero], [Telefono], [Correo]) VALUES (10, N'Heriberto', N'Contreras Maldonado', N'Adulto', 81145790, N'sectec.80@cisco.com')
INSERT [dbo].[PuestoEmpleados] ([EmpleadoId], [Puesto]) VALUES (3, N'Limpieza')
INSERT [dbo].[PuestoEmpleados] ([EmpleadoId], [Puesto]) VALUES (4, N'Contaduria')
INSERT [dbo].[PuestoEmpleados] ([EmpleadoId], [Puesto]) VALUES (5, N'Seguridad')
INSERT [dbo].[PuestoEmpleados] ([EmpleadoId], [Puesto]) VALUES (7, N'Contaduria')
INSERT [dbo].[PuestoEmpleados] ([EmpleadoId], [Puesto]) VALUES (9, N'Limpieza')
INSERT [dbo].[PuestoEmpleados] ([EmpleadoId], [Puesto]) VALUES (10, N'Limpieza')
INSERT [dbo].[PuestoEmpleados] ([EmpleadoId], [Puesto]) VALUES (12, N'Limpieza')
INSERT [dbo].[PuestoEmpleados] ([EmpleadoId], [Puesto]) VALUES (13, N'Seguridad')
INSERT [dbo].[PuestoEmpleados] ([EmpleadoId], [Puesto]) VALUES (15, N'Chofer')
INSERT [dbo].[PuestoEmpleados] ([EmpleadoId], [Puesto]) VALUES (17, N'Chofer')
INSERT [dbo].[PuestoEmpleados] ([EmpleadoId], [Puesto]) VALUES (18, N'Chofer')
INSERT [dbo].[PuestoEmpleados] ([EmpleadoId], [Puesto]) VALUES (19, N'Chofer')
INSERT [dbo].[PuestoEmpleados] ([EmpleadoId], [Puesto]) VALUES (24, N'Chofer')
INSERT [dbo].[TipoDeMoneda] ([TipoMonedaId], [TipoDeMon], [Pais]) VALUES (484, N'MXN', N'Mexico')
INSERT [dbo].[TipoDeMoneda] ([TipoMonedaId], [TipoDeMon], [Pais]) VALUES (826, N'GBP', N'Inglaterra')
INSERT [dbo].[TipoDeMoneda] ([TipoMonedaId], [TipoDeMon], [Pais]) VALUES (840, N'USD', N'Estados Unidos')
INSERT [dbo].[TipoDeMoneda] ([TipoMonedaId], [TipoDeMon], [Pais]) VALUES (978, N'EUR', N'Union Europea')
INSERT [dbo].[TipoDePago] ([TipoId], [TipoDP]) VALUES (1, N'Efectivo')
INSERT [dbo].[TipoDePago] ([TipoId], [TipoDP]) VALUES (2, N'Tarjeta')
INSERT [dbo].[TipoDePago] ([TipoId], [TipoDP]) VALUES (3, N'Cortesia')
INSERT [dbo].[Viaje] ([ViajeId], [Destino], [Origen], [Costo], [AutobusId], [Ida], [Vuelta]) VALUES (1, N'Austin, Tx', N'Monterrey, NL', 1211.0000, 17, CAST(N'1905-06-04 00:00:00.000' AS DateTime), CAST(N'1905-06-03 00:00:00.000' AS DateTime))
INSERT [dbo].[Viaje] ([ViajeId], [Destino], [Origen], [Costo], [AutobusId], [Ida], [Vuelta]) VALUES (2, N'Palo Alto, Tamps', N'Monterrey, NL', 1312.0000, 7, CAST(N'1905-06-03 00:00:00.000' AS DateTime), CAST(N'1905-06-30 00:00:00.000' AS DateTime))
ALTER TABLE [dbo].[Autobus]  WITH CHECK ADD  CONSTRAINT [FK_Autobus_PuestoEmpleados] FOREIGN KEY([ChoferId])
REFERENCES [dbo].[PuestoEmpleados] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Autobus] CHECK CONSTRAINT [FK_Autobus_PuestoEmpleados]
GO
ALTER TABLE [dbo].[Autobus]  WITH CHECK ADD  CONSTRAINT [FK_CamioneraId] FOREIGN KEY([CamioneraId])
REFERENCES [dbo].[Camioneras] ([CamionerasId])
GO
ALTER TABLE [dbo].[Autobus] CHECK CONSTRAINT [FK_CamioneraId]
GO
ALTER TABLE [dbo].[Bancos]  WITH CHECK ADD  CONSTRAINT [FK_TipoMonedaBancoId] FOREIGN KEY([TipoMonedaId])
REFERENCES [dbo].[TipoDeMoneda] ([TipoMonedaId])
GO
ALTER TABLE [dbo].[Bancos] CHECK CONSTRAINT [FK_TipoMonedaBancoId]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_ClienteId] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Pasajero] ([PasajeroId])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_ClienteId]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_PagoBoletoId] FOREIGN KEY([PagoId])
REFERENCES [dbo].[Pago] ([PagoId])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_PagoBoletoId]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_ViajeId] FOREIGN KEY([ViajeId])
REFERENCES [dbo].[Viaje] ([ViajeId])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_ViajeId]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_TipoMonedaId] FOREIGN KEY([MonedaId])
REFERENCES [dbo].[TipoDeMoneda] ([TipoMonedaId])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_TipoMonedaId]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_TipoPagoId] FOREIGN KEY([TipoId])
REFERENCES [dbo].[TipoDePago] ([TipoId])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_TipoPagoId]
GO
ALTER TABLE [dbo].[PuestoEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_PuestoEmpleados_Empleados] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleados] ([EmpleadoId])
GO
ALTER TABLE [dbo].[PuestoEmpleados] CHECK CONSTRAINT [FK_PuestoEmpleados_Empleados]
GO
ALTER TABLE [dbo].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK_AutobusId] FOREIGN KEY([AutobusId])
REFERENCES [dbo].[Autobus] ([AutobusId])
GO
ALTER TABLE [dbo].[Viaje] CHECK CONSTRAINT [FK_AutobusId]
GO
USE [master]
GO
ALTER DATABASE [ProyectoSenda_V4] SET  READ_WRITE 
GO
