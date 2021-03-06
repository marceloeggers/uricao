USE [Uricao]
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marca](
	[IdMarca] [bigint] IDENTITY(1,1) NOT NULL,
	[nombreMarca] [nvarchar](50) NOT NULL,
	[fkidProveedor] [bigint] NOT NULL,
 CONSTRAINT [PK_Marca] PRIMARY KEY CLUSTERED 
(
	[IdMarca] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Privilegio]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Privilegio](
	[idPrivilegio] [bigint] IDENTITY(1,1) NOT NULL,
	[nombrePrivilegio] [nchar](50) NOT NULL,
	[estado] [nchar](10) NULL,
 CONSTRAINT [PK_Privilegio] PRIMARY KEY CLUSTERED 
(
	[idPrivilegio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[idHorario] [bigint] IDENTITY(1,1) NOT NULL,
	[diaHorario] [nvarchar](10) NOT NULL,
	[inicioHorario] [int] NOT NULL,
	[finHorario] [int] NOT NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[idHorario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direccion](
	[IdDir] [bigint] IDENTITY(1,1) NOT NULL,
	[nombreDireccion] [nvarchar](200) NOT NULL,
	[tipoDireccion] [nvarchar](50) NOT NULL,
	[fkIdDireccion] [bigint] NULL,
 CONSTRAINT [PK_Direccion_1] PRIMARY KEY CLUSTERED 
(
	[IdDir] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[idCategoria] [bigint] IDENTITY(1,1) NOT NULL,
	[nombreCategoria] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banco]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banco](
	[idBanco] [bigint] IDENTITY(1,1) NOT NULL,
	[nombreBanco] [nvarchar](50) NOT NULL,
	[rifBanco] [nchar](20) NOT NULL,
	[estado] [nchar](10) NULL,
 CONSTRAINT [PK_Banco] PRIMARY KEY CLUSTERED 
(
	[idBanco] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tratamiento]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tratamiento](
	[IdTratamiento] [bigint] IDENTITY(1,1) NOT NULL,
	[nombreTratamiento] [char](50) NOT NULL,
	[duracionTratamiento] [int] NOT NULL,
	[descripccionTratamiento] [text] NOT NULL,
	[costoTratamiento] [real] NOT NULL,
	[imagenTratamiento] [char](60) NULL,
	[explicacionTratamiento] [text] NOT NULL,
	[estadoTratamiento] [char](15) NOT NULL,
 CONSTRAINT [PK_Tratamiento] PRIMARY KEY CLUSTERED 
(
	[IdTratamiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[idRol] [bigint] IDENTITY(1,1) NOT NULL,
	[nombreRol] [nchar](50) NOT NULL,
	[descripcionRol] [text] NOT NULL,
	[estado] [nchar](10) NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[idProveedor] [bigint] IDENTITY(1,1) NOT NULL,
	[rifProveedor] [nvarchar](50) NOT NULL,
	[nombreProveedor] [nvarchar](50) NOT NULL,
	[fkIdDireccion] [bigint] NOT NULL,
	[estado] [nvarchar](50) NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [bigint] IDENTITY(1,1) NOT NULL,
	[nombreProducto] [nvarchar](50) NOT NULL,
	[cantidadMinInventario] [int] NULL,
	[fkCategoria] [bigint] NOT NULL,
	[tipoProducto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Privilegio_Rol]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Privilegio_Rol](
	[idPrivilegio_Rol] [bigint] IDENTITY(1,1) NOT NULL,
	[fkIdRol] [bigint] NOT NULL,
	[fkIdPrivilegio] [bigint] NOT NULL,
 CONSTRAINT [PK_Privilegio_Rol] PRIMARY KEY CLUSTERED 
(
	[idPrivilegio_Rol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tratamiento_Asociado]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tratamiento_Asociado](
	[idTra_Aso] [bigint] IDENTITY(1,1) NOT NULL,
	[fkidTratamiento1] [bigint] NOT NULL,
	[fkidTratamiento2] [bigint] NOT NULL,
 CONSTRAINT [PK_Tratamiento_Asociado] PRIMARY KEY CLUSTERED 
(
	[idTra_Aso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [bigint] IDENTITY(1,1) NOT NULL,
	[loginUser] [nchar](50) NOT NULL,
	[passwordUser] [nchar](50) NOT NULL,
	[tipoidUser] [nchar](50) NOT NULL,
	[cedulaUser] [nvarchar](50) NOT NULL,
	[nombreUser1] [nchar](50) NOT NULL,
	[nombreUser2] [nchar](50) NULL,
	[apellidoUser1] [nchar](50) NOT NULL,
	[apellidoUser2] [nchar](50) NULL,
	[nacimientoUser] [date] NOT NULL,
	[fechIngresoUser] [date] NULL,
	[generoUser] [nchar](50) NOT NULL,
	[correoUser] [nchar](50) NOT NULL,
	[ocupacionUser] [nvarchar](50) NULL,
	[fkidDireccion] [bigint] NOT NULL,
	[fotoUser] [nchar](50) NULL,
	[estado] [nchar](10) NULL,
	[ingresoUser] [real] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuenta_Bancaria]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuenta_Bancaria](
	[iDCuenta] [bigint] IDENTITY(1,1) NOT NULL,
	[numeroCuenta] [nvarchar](50) NOT NULL,
	[fkIdProveedor] [bigint] NULL,
	[fkIdBanco] [bigint] NOT NULL,
	[tipoCuenta] [nvarchar](50) NOT NULL,
	[tipoUso] [nvarchar](50) NOT NULL,
	[fkIdUsuario] [bigint] NULL,
	[estado] [nchar](10) NULL,
 CONSTRAINT [PK_Cuenta_Bancaria] PRIMARY KEY CLUSTERED 
(
	[iDCuenta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacto]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacto](
	[idContacto] [bigint] IDENTITY(1,1) NOT NULL,
	[nombreContacto] [nvarchar](50) NOT NULL,
	[ApellidoContacto] [nvarchar](50) NOT NULL,
	[correoContacto] [nvarchar](50) NOT NULL,
	[fkidProveedor] [bigint] NOT NULL,
 CONSTRAINT [PK_Contacto] PRIMARY KEY CLUSTERED 
(
	[idContacto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuentaPorCobrar]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuentaPorCobrar](
	[idCuentaPC] [bigint] IDENTITY(1,1) NOT NULL,
	[estadoCuentaPC] [nchar](50) NOT NULL,
	[fkidUsuario] [bigint] NOT NULL,
 CONSTRAINT [PK_CuentaPorCobrar] PRIMARY KEY CLUSTERED 
(
	[idCuentaPC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_Producto]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Producto](
	[precioProducto] [real] NOT NULL,
	[calidadProducto] [nvarchar](50) NOT NULL,
	[fkMarca] [bigint] NOT NULL,
	[fkProducto] [bigint] NOT NULL,
	[codigoProducto] [nvarchar](50) NOT NULL,
	[idDet_Pro] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Detalle_Producto] PRIMARY KEY CLUSTERED 
(
	[idDet_Pro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoriaClinica]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoriaClinica](
	[IdHistoriaClinica] [bigint] IDENTITY(1,1) NOT NULL,
	[fechaHistoriaClinica] [date] NOT NULL,
	[fkIdUsuario] [bigint] NOT NULL,
	[observacionHistoriaClinica] [nvarchar](500) NULL,
	[estadoHistoriaClinica] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Historia_Base] PRIMARY KEY CLUSTERED 
(
	[IdHistoriaClinica] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[IdFactura] [bigint] IDENTITY(1,1) NOT NULL,
	[fkidUsuario] [bigint] NOT NULL,
	[nombreRazonsocialFactura] [nchar](50) NOT NULL,
	[tipo_identificacionFactura] [nchar](50) NOT NULL,
	[tipoid] [nchar](50) NULL,
	[cedulaRifFactura] [nvarchar](50) NOT NULL,
	[fechaFactura] [date] NOT NULL,
	[horaFactura] [datetime] NOT NULL,
	[totalFactura] [real] NOT NULL,
	[fkIdDireccion] [bigint] NULL,
	[pagadoFactura] [real] NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[IdFactura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Presupuesto]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presupuesto](
	[IdPresupuesto] [bigint] IDENTITY(1,1) NOT NULL,
	[fkIdUsuario] [bigint] NOT NULL,
	[fechaPresupuesto] [date] NOT NULL,
	[totalPresupuesto] [real] NOT NULL,
	[ObservacionesPresupuesto] [text] NULL,
 CONSTRAINT [PK_Presupuesto] PRIMARY KEY CLUSTERED 
(
	[IdPresupuesto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Per_Hor]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Per_Hor](
	[idPer_Hor] [bigint] IDENTITY(1,1) NOT NULL,
	[fkIdUsuario] [bigint] NOT NULL,
	[fkIdHorario] [bigint] NOT NULL,
 CONSTRAINT [PK_Per_Hor] PRIMARY KEY CLUSTERED 
(
	[idPer_Hor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tratamiento_Producto]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tratamiento_Producto](
	[idtratProd] [bigint] IDENTITY(1,1) NOT NULL,
	[fkProducto] [bigint] NOT NULL,
	[fkTratamiento] [bigint] NOT NULL,
	[prioridad_trat_prod] [int] NOT NULL,
	[cantidad_trat_prod] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Tratamiento_Producto] PRIMARY KEY CLUSTERED 
(
	[idtratProd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario_Rol]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Rol](
	[idUsuario_Rol] [bigint] IDENTITY(1,1) NOT NULL,
	[fkidUsuario] [bigint] NOT NULL,
	[fkidRol] [bigint] NOT NULL,
 CONSTRAINT [PK_Usuario_Rol] PRIMARY KEY CLUSTERED 
(
	[idUsuario_Rol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cita]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cita](
	[idCita] [bigint] IDENTITY(1,1) NOT NULL,
	[fechaCita] [date] NOT NULL,
	[horaInicioCita] [int] NOT NULL,
	[horaFinCita] [int] NOT NULL,
	[fkIdTratamiento] [bigint] NOT NULL,
	[fkIdUsuario] [bigint] NOT NULL,
	[fkidHorario] [bigint] NOT NULL,
	[confirmacionCita] [nchar](20) NOT NULL,
	[statusCita] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Cita] PRIMARY KEY CLUSTERED 
(
	[idCita] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telefono]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefono](
	[IdTelefono] [bigint] IDENTITY(1,1) NOT NULL,
	[codigoTelefono] [nchar](10) NULL,
	[numeroTelefono] [nchar](20) NOT NULL,
	[tipoTelefono] [nchar](20) NOT NULL,
	[fkIdUsuario] [bigint] NULL,
	[fkIdProveedor] [bigint] NULL,
	[fkIdContacto] [bigint] NULL,
 CONSTRAINT [PK_Telefono] PRIMARY KEY CLUSTERED 
(
	[IdTelefono] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Secuencia]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Secuencia](
	[idSecuencia] [bigint] IDENTITY(1,1) NOT NULL,
	[observacionSecuencia] [nvarchar](50) NULL,
	[fkIdTratamiento] [bigint] NOT NULL,
	[fkIdDoctor] [bigint] NOT NULL,
	[fechaSecuencia] [date] NOT NULL,
	[fkIdHistoriaClinica] [bigint] NOT NULL,
	[piezaSecuencia] [nvarchar](50) NOT NULL,
	[diagnosticoSecuencia] [nvarchar](50) NULL,
	[estadoSecuencia] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Sec_Tra] PRIMARY KEY CLUSTERED 
(
	[idSecuencia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lote]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lote](
	[idLote] [bigint] IDENTITY(1,1) NOT NULL,
	[fechaIngresoLote] [date] NOT NULL,
	[fechaVencimientoLote] [date] NULL,
	[cantidadLote] [bigint] NULL,
	[ubicacionLote] [nvarchar](50) NOT NULL,
	[fkidDet_Pro] [bigint] NOT NULL,
 CONSTRAINT [PK_Lote] PRIMARY KEY CLUSTERED 
(
	[idLote] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle](
	[idDetalle] [bigint] IDENTITY(1,1) NOT NULL,
	[fkidUsuario] [bigint] NULL,
	[cantidadDetalle] [int] NOT NULL,
	[montoDetalle] [real] NOT NULL,
	[fkIdPresupuesto] [bigint] NULL,
	[fkIdFactura] [bigint] NULL,
	[fkIdTratamiento] [bigint] NULL,
 CONSTRAINT [PK_Detalle] PRIMARY KEY CLUSTERED 
(
	[idDetalle] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuenta_Por_Pagar]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuenta_Por_Pagar](
	[idCuentaPP] [bigint] IDENTITY(1,1) NOT NULL,
	[fechaEmisionPP] [date] NOT NULL,
	[fechaVencimientoPP] [date] NOT NULL,
	[tipoPagoPP] [nchar](20) NOT NULL,
	[estatusPP] [nchar](20) NOT NULL,
	[tipoDeudaPP] [nchar](50) NOT NULL,
	[detallePP] [text] NULL,
	[montoPP] [real] NOT NULL,
	[fkCuentaBancaria] [bigint] NOT NULL,
 CONSTRAINT [PK_Cuenta_Por_Pagar] PRIMARY KEY CLUSTERED 
(
	[idCuentaPP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Antecedente]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Antecedente](
	[IdAntecedente] [bigint] IDENTITY(1,1) NOT NULL,
	[respuestaAntecedente] [nvarchar](50) NOT NULL,
	[fkIdHistoriaClinica] [bigint] NOT NULL,
 CONSTRAINT [PK_ANT_HIS] PRIMARY KEY CLUSTERED 
(
	[IdAntecedente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consumo]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consumo](
	[IdConsumo] [bigint] IDENTITY(1,1) NOT NULL,
	[fechaConsumo] [date] NOT NULL,
	[fkidlote] [bigint] NOT NULL,
	[cantidadConsumo] [int] NOT NULL,
 CONSTRAINT [PK_Consumo] PRIMARY KEY CLUSTERED 
(
	[IdConsumo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abono]    Script Date: 01/10/2013 14:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abono](
	[IdAbono] [bigint] IDENTITY(1,1) NOT NULL,
	[fechaAbono] [date] NOT NULL,
	[montoAbono] [real] NOT NULL,
	[deuda] [real] NULL,
	[fkIdFactura] [bigint] NULL,
	[fkIdCuentaPP] [bigint] NULL,
	[fkIdCuentaPC] [bigint] NULL,
 CONSTRAINT [PK_Abono] PRIMARY KEY CLUSTERED 
(
	[IdAbono] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Check [CK_estadoBanco]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Banco]  WITH CHECK ADD  CONSTRAINT [CK_estadoBanco] CHECK  (([estado]='inactivo' OR [estado]='activo'))
GO
ALTER TABLE [dbo].[Banco] CHECK CONSTRAINT [CK_estadoBanco]
GO
/****** Object:  Check [CK_estadoCuenta_Bancaria]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Cuenta_Bancaria]  WITH CHECK ADD  CONSTRAINT [CK_estadoCuenta_Bancaria] CHECK  (([estado]='inactivo' OR [estado]='activo'))
GO
ALTER TABLE [dbo].[Cuenta_Bancaria] CHECK CONSTRAINT [CK_estadoCuenta_Bancaria]
GO
/****** Object:  Check [CK_estadoPrivilegio]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Privilegio]  WITH CHECK ADD  CONSTRAINT [CK_estadoPrivilegio] CHECK  (([estado]='inactivo' OR [estado]='activo'))
GO
ALTER TABLE [dbo].[Privilegio] CHECK CONSTRAINT [CK_estadoPrivilegio]
GO
/****** Object:  Check [CK_estadoRol]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Rol]  WITH CHECK ADD  CONSTRAINT [CK_estadoRol] CHECK  (([estado]='inactivo' OR [estado]='activo'))
GO
ALTER TABLE [dbo].[Rol] CHECK CONSTRAINT [CK_estadoRol]
GO
/****** Object:  Check [CK_estadoUsuario]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [CK_estadoUsuario] CHECK  (([estado]='inactivo' OR [estado]='activo'))
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [CK_estadoUsuario]
GO
/****** Object:  ForeignKey [FK_Abono_Cuenta_Por_Pagar]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Abono]  WITH CHECK ADD  CONSTRAINT [FK_Abono_Cuenta_Por_Pagar] FOREIGN KEY([fkIdCuentaPP])
REFERENCES [dbo].[Cuenta_Por_Pagar] ([idCuentaPP])
GO
ALTER TABLE [dbo].[Abono] CHECK CONSTRAINT [FK_Abono_Cuenta_Por_Pagar]
GO
/****** Object:  ForeignKey [FK_Abono_CuentaPorCobrar]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Abono]  WITH CHECK ADD  CONSTRAINT [FK_Abono_CuentaPorCobrar] FOREIGN KEY([fkIdCuentaPC])
REFERENCES [dbo].[CuentaPorCobrar] ([idCuentaPC])
GO
ALTER TABLE [dbo].[Abono] CHECK CONSTRAINT [FK_Abono_CuentaPorCobrar]
GO
/****** Object:  ForeignKey [FK_Abono_Factura]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Abono]  WITH CHECK ADD  CONSTRAINT [FK_Abono_Factura] FOREIGN KEY([fkIdFactura])
REFERENCES [dbo].[Factura] ([IdFactura])
GO
ALTER TABLE [dbo].[Abono] CHECK CONSTRAINT [FK_Abono_Factura]
GO
/****** Object:  ForeignKey [FKHistoriaClinicaAntecedente]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Antecedente]  WITH CHECK ADD  CONSTRAINT [FKHistoriaClinicaAntecedente] FOREIGN KEY([fkIdHistoriaClinica])
REFERENCES [dbo].[HistoriaClinica] ([IdHistoriaClinica])
GO
ALTER TABLE [dbo].[Antecedente] CHECK CONSTRAINT [FKHistoriaClinicaAntecedente]
GO
/****** Object:  ForeignKey [FK_Cita_Per_Hor]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD  CONSTRAINT [FK_Cita_Per_Hor] FOREIGN KEY([fkidHorario])
REFERENCES [dbo].[Per_Hor] ([idPer_Hor])
GO
ALTER TABLE [dbo].[Cita] CHECK CONSTRAINT [FK_Cita_Per_Hor]
GO
/****** Object:  ForeignKey [fkidTratamiento]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD  CONSTRAINT [fkidTratamiento] FOREIGN KEY([fkIdTratamiento])
REFERENCES [dbo].[Tratamiento] ([IdTratamiento])
GO
ALTER TABLE [dbo].[Cita] CHECK CONSTRAINT [fkidTratamiento]
GO
/****** Object:  ForeignKey [fkIdUsuarioCita]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD  CONSTRAINT [fkIdUsuarioCita] FOREIGN KEY([fkIdUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Cita] CHECK CONSTRAINT [fkIdUsuarioCita]
GO
/****** Object:  ForeignKey [FK_Consumo_Lote]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Consumo]  WITH CHECK ADD  CONSTRAINT [FK_Consumo_Lote] FOREIGN KEY([fkidlote])
REFERENCES [dbo].[Lote] ([idLote])
GO
ALTER TABLE [dbo].[Consumo] CHECK CONSTRAINT [FK_Consumo_Lote]
GO
/****** Object:  ForeignKey [FK_Contacto_Proveedor]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Contacto]  WITH CHECK ADD  CONSTRAINT [FK_Contacto_Proveedor] FOREIGN KEY([fkidProveedor])
REFERENCES [dbo].[Proveedor] ([idProveedor])
GO
ALTER TABLE [dbo].[Contacto] CHECK CONSTRAINT [FK_Contacto_Proveedor]
GO
/****** Object:  ForeignKey [FK_Cuenta_Bancaria_Banco]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Cuenta_Bancaria]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta_Bancaria_Banco] FOREIGN KEY([fkIdBanco])
REFERENCES [dbo].[Banco] ([idBanco])
GO
ALTER TABLE [dbo].[Cuenta_Bancaria] CHECK CONSTRAINT [FK_Cuenta_Bancaria_Banco]
GO
/****** Object:  ForeignKey [FK_Cuenta_Bancaria_Proveedor]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Cuenta_Bancaria]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta_Bancaria_Proveedor] FOREIGN KEY([fkIdProveedor])
REFERENCES [dbo].[Proveedor] ([idProveedor])
GO
ALTER TABLE [dbo].[Cuenta_Bancaria] CHECK CONSTRAINT [FK_Cuenta_Bancaria_Proveedor]
GO
/****** Object:  ForeignKey [FK_Cuenta_Bancaria_Usuario]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Cuenta_Bancaria]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta_Bancaria_Usuario] FOREIGN KEY([fkIdUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Cuenta_Bancaria] CHECK CONSTRAINT [FK_Cuenta_Bancaria_Usuario]
GO
/****** Object:  ForeignKey [FK_Cuenta_Por_Pagar_Cuenta_Bancaria]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Cuenta_Por_Pagar]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta_Por_Pagar_Cuenta_Bancaria] FOREIGN KEY([fkCuentaBancaria])
REFERENCES [dbo].[Cuenta_Bancaria] ([iDCuenta])
GO
ALTER TABLE [dbo].[Cuenta_Por_Pagar] CHECK CONSTRAINT [FK_Cuenta_Por_Pagar_Cuenta_Bancaria]
GO
/****** Object:  ForeignKey [FK_CuentaPorCobrar_Usuario]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[CuentaPorCobrar]  WITH CHECK ADD  CONSTRAINT [FK_CuentaPorCobrar_Usuario] FOREIGN KEY([fkidUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[CuentaPorCobrar] CHECK CONSTRAINT [FK_CuentaPorCobrar_Usuario]
GO
/****** Object:  ForeignKey [FK_Detalle_Factura]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Detalle]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Factura] FOREIGN KEY([fkIdFactura])
REFERENCES [dbo].[Factura] ([IdFactura])
GO
ALTER TABLE [dbo].[Detalle] CHECK CONSTRAINT [FK_Detalle_Factura]
GO
/****** Object:  ForeignKey [FK_Detalle_Presupuesto]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Detalle]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Presupuesto] FOREIGN KEY([fkIdPresupuesto])
REFERENCES [dbo].[Presupuesto] ([IdPresupuesto])
GO
ALTER TABLE [dbo].[Detalle] CHECK CONSTRAINT [FK_Detalle_Presupuesto]
GO
/****** Object:  ForeignKey [FK_Detalle_Tratamiento]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Detalle]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Tratamiento] FOREIGN KEY([fkIdTratamiento])
REFERENCES [dbo].[Tratamiento] ([IdTratamiento])
GO
ALTER TABLE [dbo].[Detalle] CHECK CONSTRAINT [FK_Detalle_Tratamiento]
GO
/****** Object:  ForeignKey [FK_Detalle_Producto_Marca]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Detalle_Producto]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Producto_Marca] FOREIGN KEY([fkMarca])
REFERENCES [dbo].[Marca] ([IdMarca])
GO
ALTER TABLE [dbo].[Detalle_Producto] CHECK CONSTRAINT [FK_Detalle_Producto_Marca]
GO
/****** Object:  ForeignKey [FK_Detalle_Producto_Producto]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Detalle_Producto]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Producto_Producto] FOREIGN KEY([fkProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[Detalle_Producto] CHECK CONSTRAINT [FK_Detalle_Producto_Producto]
GO
/****** Object:  ForeignKey [FK_Direccion_Direccion]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK_Direccion_Direccion] FOREIGN KEY([fkIdDireccion])
REFERENCES [dbo].[Direccion] ([IdDir])
GO
ALTER TABLE [dbo].[Direccion] CHECK CONSTRAINT [FK_Direccion_Direccion]
GO
/****** Object:  ForeignKey [FK_Factura_Direccion]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Direccion] FOREIGN KEY([fkIdDireccion])
REFERENCES [dbo].[Direccion] ([IdDir])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Direccion]
GO
/****** Object:  ForeignKey [FK_Factura_Usuario]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Usuario] FOREIGN KEY([fkidUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Usuario]
GO
/****** Object:  ForeignKey [FKHistoriaClinicaUsuario]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[HistoriaClinica]  WITH CHECK ADD  CONSTRAINT [FKHistoriaClinicaUsuario] FOREIGN KEY([fkIdUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[HistoriaClinica] CHECK CONSTRAINT [FKHistoriaClinicaUsuario]
GO
/****** Object:  ForeignKey [FK_Lote_Detalle_Producto]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Lote]  WITH CHECK ADD  CONSTRAINT [FK_Lote_Detalle_Producto] FOREIGN KEY([fkidDet_Pro])
REFERENCES [dbo].[Detalle_Producto] ([idDet_Pro])
GO
ALTER TABLE [dbo].[Lote] CHECK CONSTRAINT [FK_Lote_Detalle_Producto]
GO
/****** Object:  ForeignKey [FK_Per_Hor_Horario]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Per_Hor]  WITH CHECK ADD  CONSTRAINT [FK_Per_Hor_Horario] FOREIGN KEY([fkIdHorario])
REFERENCES [dbo].[Horario] ([idHorario])
GO
ALTER TABLE [dbo].[Per_Hor] CHECK CONSTRAINT [FK_Per_Hor_Horario]
GO
/****** Object:  ForeignKey [FK_Per_Hor_Usuario]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Per_Hor]  WITH CHECK ADD  CONSTRAINT [FK_Per_Hor_Usuario] FOREIGN KEY([fkIdUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Per_Hor] CHECK CONSTRAINT [FK_Per_Hor_Usuario]
GO
/****** Object:  ForeignKey [FK_Presupuesto_Usuario]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_Presupuesto_Usuario] FOREIGN KEY([fkIdUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Presupuesto] CHECK CONSTRAINT [FK_Presupuesto_Usuario]
GO
/****** Object:  ForeignKey [FK_Privilegio_Rol_Privilegio]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Privilegio_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Privilegio_Rol_Privilegio] FOREIGN KEY([fkIdPrivilegio])
REFERENCES [dbo].[Privilegio] ([idPrivilegio])
GO
ALTER TABLE [dbo].[Privilegio_Rol] CHECK CONSTRAINT [FK_Privilegio_Rol_Privilegio]
GO
/****** Object:  ForeignKey [FK_Privilegio_Rol_Rol]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Privilegio_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Privilegio_Rol_Rol] FOREIGN KEY([fkIdRol])
REFERENCES [dbo].[Rol] ([idRol])
GO
ALTER TABLE [dbo].[Privilegio_Rol] CHECK CONSTRAINT [FK_Privilegio_Rol_Rol]
GO
/****** Object:  ForeignKey [FK_Producto_Categoria]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categoria] FOREIGN KEY([fkCategoria])
REFERENCES [dbo].[Categoria] ([idCategoria])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Categoria]
GO
/****** Object:  ForeignKey [FK_Proveedor_Direccion]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_Proveedor_Direccion] FOREIGN KEY([fkIdDireccion])
REFERENCES [dbo].[Direccion] ([IdDir])
GO
ALTER TABLE [dbo].[Proveedor] CHECK CONSTRAINT [FK_Proveedor_Direccion]
GO
/****** Object:  ForeignKey [FKHistoriaClinicaSecuencia]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Secuencia]  WITH CHECK ADD  CONSTRAINT [FKHistoriaClinicaSecuencia] FOREIGN KEY([fkIdHistoriaClinica])
REFERENCES [dbo].[HistoriaClinica] ([IdHistoriaClinica])
GO
ALTER TABLE [dbo].[Secuencia] CHECK CONSTRAINT [FKHistoriaClinicaSecuencia]
GO
/****** Object:  ForeignKey [FKTratamientoSecuencia]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Secuencia]  WITH CHECK ADD  CONSTRAINT [FKTratamientoSecuencia] FOREIGN KEY([fkIdTratamiento])
REFERENCES [dbo].[Tratamiento] ([IdTratamiento])
GO
ALTER TABLE [dbo].[Secuencia] CHECK CONSTRAINT [FKTratamientoSecuencia]
GO
/****** Object:  ForeignKey [FKUsuarioSecuencia]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Secuencia]  WITH CHECK ADD  CONSTRAINT [FKUsuarioSecuencia] FOREIGN KEY([fkIdDoctor])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Secuencia] CHECK CONSTRAINT [FKUsuarioSecuencia]
GO
/****** Object:  ForeignKey [FK_Telefono_Contacto]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Telefono]  WITH CHECK ADD  CONSTRAINT [FK_Telefono_Contacto] FOREIGN KEY([fkIdContacto])
REFERENCES [dbo].[Contacto] ([idContacto])
GO
ALTER TABLE [dbo].[Telefono] CHECK CONSTRAINT [FK_Telefono_Contacto]
GO
/****** Object:  ForeignKey [FK_Telefono_Proveedor]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Telefono]  WITH CHECK ADD  CONSTRAINT [FK_Telefono_Proveedor] FOREIGN KEY([fkIdProveedor])
REFERENCES [dbo].[Proveedor] ([idProveedor])
GO
ALTER TABLE [dbo].[Telefono] CHECK CONSTRAINT [FK_Telefono_Proveedor]
GO
/****** Object:  ForeignKey [FK_Telefono_Usuario]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Telefono]  WITH CHECK ADD  CONSTRAINT [FK_Telefono_Usuario] FOREIGN KEY([fkIdUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Telefono] CHECK CONSTRAINT [FK_Telefono_Usuario]
GO
/****** Object:  ForeignKey [FK_Tratamiento_Asociado_Tratamiento]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Tratamiento_Asociado]  WITH CHECK ADD  CONSTRAINT [FK_Tratamiento_Asociado_Tratamiento] FOREIGN KEY([fkidTratamiento1])
REFERENCES [dbo].[Tratamiento] ([IdTratamiento])
GO
ALTER TABLE [dbo].[Tratamiento_Asociado] CHECK CONSTRAINT [FK_Tratamiento_Asociado_Tratamiento]
GO
/****** Object:  ForeignKey [FK_Tratamiento_Asociado_Tratamiento1]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Tratamiento_Asociado]  WITH CHECK ADD  CONSTRAINT [FK_Tratamiento_Asociado_Tratamiento1] FOREIGN KEY([fkidTratamiento2])
REFERENCES [dbo].[Tratamiento] ([IdTratamiento])
GO
ALTER TABLE [dbo].[Tratamiento_Asociado] CHECK CONSTRAINT [FK_Tratamiento_Asociado_Tratamiento1]
GO
/****** Object:  ForeignKey [FK_Tratamiento_Producto_Producto]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Tratamiento_Producto]  WITH CHECK ADD  CONSTRAINT [FK_Tratamiento_Producto_Producto] FOREIGN KEY([fkProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[Tratamiento_Producto] CHECK CONSTRAINT [FK_Tratamiento_Producto_Producto]
GO
/****** Object:  ForeignKey [FK_Tratamiento_Producto_Tratamiento1]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Tratamiento_Producto]  WITH CHECK ADD  CONSTRAINT [FK_Tratamiento_Producto_Tratamiento1] FOREIGN KEY([fkTratamiento])
REFERENCES [dbo].[Tratamiento] ([IdTratamiento])
GO
ALTER TABLE [dbo].[Tratamiento_Producto] CHECK CONSTRAINT [FK_Tratamiento_Producto_Tratamiento1]
GO
/****** Object:  ForeignKey [fkidUsuarioDireccion]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [fkidUsuarioDireccion] FOREIGN KEY([fkidDireccion])
REFERENCES [dbo].[Direccion] ([IdDir])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [fkidUsuarioDireccion]
GO
/****** Object:  ForeignKey [FK_Usuario_Rol_Rol]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Usuario_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Rol_Rol] FOREIGN KEY([fkidRol])
REFERENCES [dbo].[Rol] ([idRol])
GO
ALTER TABLE [dbo].[Usuario_Rol] CHECK CONSTRAINT [FK_Usuario_Rol_Rol]
GO
/****** Object:  ForeignKey [FK_Usuario_Rol_Usuario]    Script Date: 01/10/2013 14:54:43 ******/
ALTER TABLE [dbo].[Usuario_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Rol_Usuario] FOREIGN KEY([fkidUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Usuario_Rol] CHECK CONSTRAINT [FK_Usuario_Rol_Usuario]
GO
