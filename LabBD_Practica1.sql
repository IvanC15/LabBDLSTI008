USE [proyecto]
GO
/****** Object:  Check [CK_Precio]    Script Date: 09/08/2018 01:43:07 ******/
ALTER TABLE [dbo].[Boletos] DROP CONSTRAINT [CK_Precio]
GO
/****** Object:  Table [dbo].[Boletos]    Script Date: 09/08/2018 01:43:07 ******/
ALTER TABLE [dbo].[Boletos] DROP CONSTRAINT [CK_Precio]
GO
DROP TABLE [dbo].[Boletos]
GO
/****** Object:  Table [dbo].[Camiones]    Script Date: 09/08/2018 01:43:07 ******/
DROP TABLE [dbo].[Camiones]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 09/08/2018 01:43:07 ******/
DROP TABLE [dbo].[Clientes]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 09/08/2018 01:43:07 ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Viajes]    Script Date: 09/08/2018 01:43:08 ******/
DROP TABLE [dbo].[Viajes]
GO
/****** Object:  Table [dbo].[Viajes]    Script Date: 09/08/2018 01:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Viajes](
	[Id_Viaje] [int] NOT NULL,
	[Ciudad_destino] [varchar](50) NOT NULL,
	[Descripcion] [text] NULL,
	[Id_camion] [int] NOT NULL,
	[Hora_salida] [datetime] NOT NULL,
 CONSTRAINT [PK_Viajes] PRIMARY KEY CLUSTERED 
(
	[Id_Viaje] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Ciudad_Destino] ON [dbo].[Viajes] 
(
	[Ciudad_destino] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Hora_Salida] ON [dbo].[Viajes] 
(
	[Hora_salida] DESC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 09/08/2018 01:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[Id_empleado] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido_paterno] [varchar](50) NOT NULL,
	[Apellido_materno] [varchar](50) NOT NULL,
	[Nombre_completo]  AS (((([Nombre]+' ')+[Apellido_paterno])+' ')+[Apellido_materno]),
	[Puesto] [varchar](50) NOT NULL,
	[Sueldo] [float] NOT NULL,
	[Correo] [varchar](50) NULL,
	[Telefono] [int] NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[Id_empleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Empleados_Materno] ON [dbo].[Empleados] 
(
	[Apellido_materno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Empleados_Paterno] ON [dbo].[Empleados] 
(
	[Apellido_paterno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 09/08/2018 01:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id_cliente] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido_paterno] [varchar](50) NOT NULL,
	[Apellido_materno] [varchar](50) NOT NULL,
	[Nombre_completo]  AS (((([Nombre]+' ')+[Apellido_paterno])+' ')+[Apellido_materno]),
	[Correo] [varchar](50) NULL,
	[Telefono] [int] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Id_cliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Cliente_Materno] ON [dbo].[Clientes] 
(
	[Apellido_materno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Cliente_Paterno] ON [dbo].[Clientes] 
(
	[Apellido_paterno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Camiones]    Script Date: 09/08/2018 01:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Camiones](
	[Id_Camion] [int] NOT NULL,
	[Id_Empleado] [int] NOT NULL,
	[Modelo] [varchar](50) NOT NULL,
	[Capacidad] [bit] NOT NULL,
	[Imagen] [image] NULL,
 CONSTRAINT [PK_Camiones] PRIMARY KEY CLUSTERED 
(
	[Id_Camion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Capacidad] ON [dbo].[Camiones] 
(
	[Capacidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Boletos]    Script Date: 09/08/2018 01:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Boletos](
	[Id_boleto] [int] NOT NULL,
	[Id_cliente] [int] NOT NULL,
	[Id_viaje] [int] NOT NULL,
	[Destino] [varchar](50) NOT NULL,
	[Asiento] [nchar](10) NOT NULL,
	[Precio] [money] NOT NULL,
	[Fecha_expedicion] [date] NOT NULL,
 CONSTRAINT [PK_Boletos] PRIMARY KEY CLUSTERED 
(
	[Id_boleto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Cliente] ON [dbo].[Boletos] 
(
	[Id_cliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Viaje] ON [dbo].[Boletos] 
(
	[Id_viaje] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Check [CK_Precio]    Script Date: 09/08/2018 01:43:07 ******/
ALTER TABLE [dbo].[Boletos]  WITH CHECK ADD  CONSTRAINT [CK_Precio] CHECK  (([Precio]>=(0)))
GO
ALTER TABLE [dbo].[Boletos] CHECK CONSTRAINT [CK_Precio]
GO
