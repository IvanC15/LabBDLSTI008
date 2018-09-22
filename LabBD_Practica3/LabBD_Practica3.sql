USE [ProyectoSendaNormalizado]
GO
ALTER TABLE [dbo].[Viaje] DROP CONSTRAINT [FK_Viaje_Autobus]
GO
ALTER TABLE [dbo].[Pago] DROP CONSTRAINT [FK_Pago_TipoDePago]
GO
ALTER TABLE [dbo].[Pago] DROP CONSTRAINT [FK_Pago_TipoDeMoneda]
GO
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK_Empleados_PuestoEmpleados]
GO
ALTER TABLE [dbo].[Camioneras] DROP CONSTRAINT [FK_Camioneras_Asociados]
GO
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT [FK_Boleto_Viaje]
GO
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT [FK__Boleto__PagoId__37A5467C]
GO
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT [FK__Boleto__ClienteI__36B12243]
GO
ALTER TABLE [dbo].[Bancos] DROP CONSTRAINT [FK_Bancos_TipoDeMoneda]
GO
ALTER TABLE [dbo].[Bancos] DROP CONSTRAINT [FK_Bancos_Asociados]
GO
ALTER TABLE [dbo].[Autobus] DROP CONSTRAINT [FK_Autobus_PuestoEmpleados]
GO
ALTER TABLE [dbo].[Autobus] DROP CONSTRAINT [FK_Autobus_Camioneras]
GO
/****** Object:  Table [dbo].[Viaje]    Script Date: 22/09/2018 1:49:47 ******/
DROP TABLE [dbo].[Viaje]
GO
/****** Object:  Table [dbo].[TipoDePago]    Script Date: 22/09/2018 1:49:47 ******/
DROP TABLE [dbo].[TipoDePago]
GO
/****** Object:  Table [dbo].[TipoDeMoneda]    Script Date: 22/09/2018 1:49:47 ******/
DROP TABLE [dbo].[TipoDeMoneda]
GO
/****** Object:  Table [dbo].[PuestoEmpleados]    Script Date: 22/09/2018 1:49:47 ******/
DROP TABLE [dbo].[PuestoEmpleados]
GO
/****** Object:  Table [dbo].[Pasajero]    Script Date: 22/09/2018 1:49:47 ******/
DROP TABLE [dbo].[Pasajero]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 22/09/2018 1:49:47 ******/
DROP TABLE [dbo].[Pago]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 22/09/2018 1:49:47 ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Camioneras]    Script Date: 22/09/2018 1:49:47 ******/
DROP TABLE [dbo].[Camioneras]
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 22/09/2018 1:49:47 ******/
DROP TABLE [dbo].[Boleto]
GO
/****** Object:  Table [dbo].[Bancos]    Script Date: 22/09/2018 1:49:47 ******/
DROP TABLE [dbo].[Bancos]
GO
/****** Object:  Table [dbo].[Autobus]    Script Date: 22/09/2018 1:49:47 ******/
DROP TABLE [dbo].[Autobus]
GO
/****** Object:  Table [dbo].[Asociados]    Script Date: 22/09/2018 1:49:47 ******/
DROP TABLE [dbo].[Asociados]
GO
USE [master]
GO
/****** Object:  Database [ProyectoSendaNormalizado]    Script Date: 22/09/2018 1:49:47 ******/
DROP DATABASE [ProyectoSendaNormalizado]
GO
/****** Object:  Database [ProyectoSendaNormalizado]    Script Date: 22/09/2018 1:49:47 ******/
CREATE DATABASE [ProyectoSendaNormalizado]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyectoSendaNormalizado', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ProyectoSendaNormalizado.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProyectoSendaNormalizado_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ProyectoSendaNormalizado_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectoSendaNormalizado].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET  MULTI_USER 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ProyectoSendaNormalizado]
GO
/****** Object:  Table [dbo].[Asociados]    Script Date: 22/09/2018 1:49:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Asociados](
	[AsociadoId] [int] NOT NULL,
	[Servicio] [varchar](20) NOT NULL,
 CONSTRAINT [PK_TiposDeAsociados] PRIMARY KEY CLUSTERED 
(
	[AsociadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Autobus]    Script Date: 22/09/2018 1:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Autobus](
	[AutobusId] [int] NOT NULL,
	[CamioneraId] [int] NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[Capacidad] [int] NOT NULL,
	[Caracteristicas] [varchar](50) NULL,
 CONSTRAINT [PK__Camiones__FA60529A74BC54B4] PRIMARY KEY CLUSTERED 
(
	[AutobusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bancos]    Script Date: 22/09/2018 1:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bancos](
	[BancosId] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Origen] [varchar](20) NOT NULL,
	[TipoMonedaId] [int] NOT NULL,
 CONSTRAINT [PK__Bancos__8597149AEEC6F7A0] PRIMARY KEY CLUSTERED 
(
	[BancosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 22/09/2018 1:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boleto](
	[ViajeId] [int] NOT NULL,
	[NumFolio] [int] NOT NULL,
	[ClienteId] [int] NOT NULL,
	[PagoId] [int] NOT NULL,
 CONSTRAINT [PK__Boleto__EDD74835BF7F9231] PRIMARY KEY CLUSTERED 
(
	[NumFolio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Camioneras]    Script Date: 22/09/2018 1:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Camioneras](
	[CamionerasId] [int] NOT NULL,
	[Nombre] [varchar](10) NULL,
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
/****** Object:  Table [dbo].[Empleados]    Script Date: 22/09/2018 1:49:48 ******/
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
	[Edad] [varchar](10) NOT NULL,
	[Sexo] [char](1) NULL,
 CONSTRAINT [PK__Empleado__958BE910B28446F6] PRIMARY KEY CLUSTERED 
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 22/09/2018 1:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[PagoId] [int] NOT NULL,
	[TipoId] [int] NOT NULL,
	[MonedaId] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK__Pago__F00B613814D623CD] PRIMARY KEY CLUSTERED 
(
	[PagoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pasajero]    Script Date: 22/09/2018 1:49:48 ******/
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
 CONSTRAINT [PK__Cliente__71ABD0872B222975] PRIMARY KEY CLUSTERED 
(
	[PasajeroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PuestoEmpleados]    Script Date: 22/09/2018 1:49:48 ******/
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
/****** Object:  Table [dbo].[TipoDeMoneda]    Script Date: 22/09/2018 1:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDeMoneda](
	[TipoMonedaId] [int] NOT NULL,
	[TipoDeMon] [varchar](2) NOT NULL,
	[Pais] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoMonedaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoDePago]    Script Date: 22/09/2018 1:49:48 ******/
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
/****** Object:  Table [dbo].[Viaje]    Script Date: 22/09/2018 1:49:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Viaje](
	[ViajeId] [int] NOT NULL,
	[Destino] [varchar](10) NOT NULL,
	[Origen] [varchar](10) NOT NULL,
	[Costo] [money] NOT NULL,
	[AutobusId] [int] NOT NULL,
	[Ida] [datetime] NOT NULL,
	[Vuelta] [datetime] NOT NULL,
 CONSTRAINT [PK__Viaje__3213E83F2BC154CD] PRIMARY KEY CLUSTERED 
(
	[ViajeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Autobus]  WITH CHECK ADD  CONSTRAINT [FK_Autobus_Camioneras] FOREIGN KEY([CamioneraId])
REFERENCES [dbo].[Camioneras] ([CamionerasId])
GO
ALTER TABLE [dbo].[Autobus] CHECK CONSTRAINT [FK_Autobus_Camioneras]
GO
ALTER TABLE [dbo].[Autobus]  WITH CHECK ADD  CONSTRAINT [FK_Autobus_PuestoEmpleados] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[PuestoEmpleados] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Autobus] CHECK CONSTRAINT [FK_Autobus_PuestoEmpleados]
GO
ALTER TABLE [dbo].[Bancos]  WITH CHECK ADD  CONSTRAINT [FK_Bancos_Asociados] FOREIGN KEY([BancosId])
REFERENCES [dbo].[Asociados] ([AsociadoId])
GO
ALTER TABLE [dbo].[Bancos] CHECK CONSTRAINT [FK_Bancos_Asociados]
GO
ALTER TABLE [dbo].[Bancos]  WITH CHECK ADD  CONSTRAINT [FK_Bancos_TipoDeMoneda] FOREIGN KEY([TipoMonedaId])
REFERENCES [dbo].[TipoDeMoneda] ([TipoMonedaId])
GO
ALTER TABLE [dbo].[Bancos] CHECK CONSTRAINT [FK_Bancos_TipoDeMoneda]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK__Boleto__ClienteI__36B12243] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Pasajero] ([PasajeroId])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK__Boleto__ClienteI__36B12243]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK__Boleto__PagoId__37A5467C] FOREIGN KEY([PagoId])
REFERENCES [dbo].[Pago] ([PagoId])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK__Boleto__PagoId__37A5467C]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_Viaje] FOREIGN KEY([ViajeId])
REFERENCES [dbo].[Viaje] ([ViajeId])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_Viaje]
GO
ALTER TABLE [dbo].[Camioneras]  WITH CHECK ADD  CONSTRAINT [FK_Camioneras_Asociados] FOREIGN KEY([CamionerasId])
REFERENCES [dbo].[Asociados] ([AsociadoId])
GO
ALTER TABLE [dbo].[Camioneras] CHECK CONSTRAINT [FK_Camioneras_Asociados]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_PuestoEmpleados] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[PuestoEmpleados] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_PuestoEmpleados]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_TipoDeMoneda] FOREIGN KEY([MonedaId])
REFERENCES [dbo].[TipoDeMoneda] ([TipoMonedaId])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_TipoDeMoneda]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_TipoDePago] FOREIGN KEY([TipoId])
REFERENCES [dbo].[TipoDePago] ([TipoId])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_TipoDePago]
GO
ALTER TABLE [dbo].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK_Viaje_Autobus] FOREIGN KEY([AutobusId])
REFERENCES [dbo].[Autobus] ([AutobusId])
GO
ALTER TABLE [dbo].[Viaje] CHECK CONSTRAINT [FK_Viaje_Autobus]
GO
USE [master]
GO
ALTER DATABASE [ProyectoSendaNormalizado] SET  READ_WRITE 
GO
