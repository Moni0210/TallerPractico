USE [master]
GO
/****** Object:  Database [AdmiProyecto1]    Script Date: 02/11/2022 8:18:01 ******/
CREATE DATABASE [AdmiProyecto1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AdmiProyecto1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdmiProyecto1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AdmiProyecto1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdmiProyecto1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AdmiProyecto1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AdmiProyecto1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AdmiProyecto1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AdmiProyecto1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AdmiProyecto1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AdmiProyecto1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AdmiProyecto1] SET ARITHABORT OFF 
GO
ALTER DATABASE [AdmiProyecto1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AdmiProyecto1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AdmiProyecto1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AdmiProyecto1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AdmiProyecto1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AdmiProyecto1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AdmiProyecto1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AdmiProyecto1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AdmiProyecto1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AdmiProyecto1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AdmiProyecto1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AdmiProyecto1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AdmiProyecto1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AdmiProyecto1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AdmiProyecto1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AdmiProyecto1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AdmiProyecto1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AdmiProyecto1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AdmiProyecto1] SET  MULTI_USER 
GO
ALTER DATABASE [AdmiProyecto1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AdmiProyecto1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AdmiProyecto1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AdmiProyecto1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AdmiProyecto1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AdmiProyecto1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AdmiProyecto1] SET QUERY_STORE = OFF
GO
USE [AdmiProyecto1]
GO
/****** Object:  Table [dbo].[Acceso]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acceso](
	[Usuario] [varchar](20) NOT NULL,
	[Contraseña] [char](10) NOT NULL,
	[IdTipo] [int] NOT NULL,
 CONSTRAINT [PK_Acceso] PRIMARY KEY CLUSTERED 
(
	[Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cancelarcita]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cancelarcita](
	[IdCita] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Iddiponibilidad] [int] NOT NULL,
	[Motivo] [varchar](50) NULL,
 CONSTRAINT [PK_Cancelarcita] PRIMARY KEY CLUSTERED 
(
	[IdCita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CantidadCitasPorMes]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CantidadCitasPorMes](
	[fecha] [date] NULL,
	[Nombre] [varchar](50) NOT NULL,
	[CitasTotal] [int] NOT NULL,
	[CitasCancelada] [int] NOT NULL,
	[CitasEfectivas] [int] NOT NULL,
	[CitasPerdidas] [int] NOT NULL,
 CONSTRAINT [PK_CantidadCitasPorMes] PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC,
	[CitasTotal] ASC,
	[CitasCancelada] ASC,
	[CitasEfectivas] ASC,
	[CitasPerdidas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CantidadesdeCitas]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CantidadesdeCitas](
	[Fecha] [date] NOT NULL,
	[TotalCitas] [int] NOT NULL,
	[CitasCanceladas] [int] NOT NULL,
	[Citasreservadas] [int] NOT NULL,
	[CitasEfectivas] [int] NOT NULL,
	[CitasPerdidas] [int] NOT NULL,
 CONSTRAINT [PK_CantidadesdeCitas] PRIMARY KEY CLUSTERED 
(
	[Fecha] ASC,
	[TotalCitas] ASC,
	[CitasCanceladas] ASC,
	[Citasreservadas] ASC,
	[CitasEfectivas] ASC,
	[CitasPerdidas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Citas]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Citas](
	[CitasId] [int] NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[MedicoID] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[IdEstadoCita] [int] NOT NULL,
 CONSTRAINT [PK_Citas] PRIMARY KEY CLUSTERED 
(
	[CitasId] ASC,
	[UsuarioID] ASC,
	[MedicoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CitasPorPersona]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CitasPorPersona](
	[Nombre] [varchar](50) NULL,
	[PrimerApellido] [varchar](50) NULL,
	[SegundoApellido] [varchar](50) NULL,
	[CitasTotal] [int] NULL,
	[CitasReservadas] [int] NULL,
	[CitasCanceladas] [int] NULL,
	[CitasEfectivas] [int] NULL,
	[CitasPerdidas] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dias]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dias](
	[IDdias] [int] NOT NULL,
	[Dias] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Dias] PRIMARY KEY CLUSTERED 
(
	[IDdias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiponibilidadDoctor]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiponibilidadDoctor](
	[IdDisponibilidaDoctor] [int] NOT NULL,
	[estado] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[Identificacion] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[PrimerApellido] [varchar](20) NOT NULL,
	[SegundoApellido] [varchar](50) NOT NULL,
	[EspecialidadID] [int] NOT NULL,
	[Correo] [varchar](20) NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[Identificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Duracion]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Duracion](
	[IdDuracion] [int] NOT NULL,
	[Duracion] [time](7) NOT NULL,
 CONSTRAINT [PK_Duracion] PRIMARY KEY CLUSTERED 
(
	[IdDuracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidad]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidad](
	[EspecialidadID] [int] NOT NULL,
	[NombreEspecialidad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Especialidad] PRIMARY KEY CLUSTERED 
(
	[EspecialidadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoCita]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoCita](
	[IdEstadoCita] [int] NOT NULL,
	[Estado] [varchar](15) NOT NULL,
 CONSTRAINT [PK_EstadoCita] PRIMARY KEY CLUSTERED 
(
	[IdEstadoCita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoUsuario]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoUsuario](
	[IdEstadoUsuario] [int] NOT NULL,
	[EstadoUsuario] [varchar](20) NOT NULL,
 CONSTRAINT [PK_EstadoUsuario] PRIMARY KEY CLUSTERED 
(
	[IdEstadoUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[Fecha] [datetime] NOT NULL,
	[Horas] [varchar](50) NOT NULL,
	[IdDoctor] [int] NOT NULL,
	[IdHorario] [int] IDENTITY(1,1) NOT NULL,
	[IDDisponibilidad] [int] NOT NULL,
 CONSTRAINT [PK_Horario_1] PRIMARY KEY CLUSTERED 
(
	[IdHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horas]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horas](
	[IdHora] [int] NOT NULL,
	[hora] [time](7) NOT NULL,
	[Iddoctor] [int] NULL,
	[IdDisponibilidad] [int] NOT NULL,
 CONSTRAINT [PK_Horas] PRIMARY KEY CLUSTERED 
(
	[IdHora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horas_rango]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horas_rango](
	[id] [int] NOT NULL,
	[Horas] [time](0) NOT NULL,
 CONSTRAINT [PK_Horas_rango] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[listaCitasPorcentaje]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[listaCitasPorcentaje](
	[Fecha] [date] NOT NULL,
	[TotalCitas] [varchar](50) NOT NULL,
	[CitasCanceladas] [varchar](50) NOT NULL,
	[CitasReservadas] [varchar](50) NOT NULL,
	[CitasEfectivas] [varchar](50) NULL,
	[CitasPerdidas] [nchar](10) NULL,
 CONSTRAINT [PK_listaCitasPorcentaje] PRIMARY KEY CLUSTERED 
(
	[Fecha] ASC,
	[TotalCitas] ASC,
	[CitasCanceladas] ASC,
	[CitasReservadas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicoEspecialidad]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicoEspecialidad](
	[IdEspecialidad] [int] NOT NULL,
	[MedicoID] [int] NOT NULL,
 CONSTRAINT [PK_MedicoEspecialidad] PRIMARY KEY CLUSTERED 
(
	[IdEspecialidad] ASC,
	[MedicoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PorcentajeCitasPorMes]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PorcentajeCitasPorMes](
	[fecha] [date] NULL,
	[Nombre] [varchar](50) NOT NULL,
	[CitasTotal] [varchar](50) NOT NULL,
	[CitasCancelada] [varchar](50) NOT NULL,
	[CitasEfectivas] [varchar](50) NOT NULL,
	[CitasPerdidas] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PorcentajeCitasPorMes] PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC,
	[CitasTotal] ASC,
	[CitasCancelada] ASC,
	[CitasEfectivas] ASC,
	[CitasPerdidas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prueba]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prueba](
	[fecha] [date] NULL,
	[Nombre] [varchar](50) NULL,
	[PrimerApellido] [varchar](50) NULL,
	[SegundoApellido] [varchar](50) NULL,
	[CitasReservadas] [int] NULL,
	[CitasCanceladas] [int] NULL,
	[CitasEfectivas] [int] NULL,
	[CitasPerdidas] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SepararEsatadosdeCitas]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SepararEsatadosdeCitas](
	[Nombre] [varchar](50) NULL,
	[PrimerApellido] [varchar](50) NULL,
	[SegundoApellido] [varchar](50) NULL,
	[Fecha] [date] NULL,
	[CitasReservadas] [int] NULL,
	[CitasCanceladas] [int] NULL,
	[CitasEfectivas] [int] NULL,
	[CitasPerdidas] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoAcceso]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoAcceso](
	[IdTipoAcceso] [int] NOT NULL,
	[Tipo] [varchar](15) NOT NULL,
 CONSTRAINT [PK_TipoAcceso] PRIMARY KEY CLUSTERED 
(
	[IdTipoAcceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Identificacion] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PrimerApellido] [varchar](50) NOT NULL,
	[SegundoApellido] [varchar](50) NULL,
	[FechaNacimiento] [date] NOT NULL,
	[CorreoElectronico] [varchar](50) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Contrasena] [char](15) NOT NULL,
	[IdEstado] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Identificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cancelarcita] ([IdCita], [IdUsuario], [Iddiponibilidad], [Motivo]) VALUES (238, 114050317, 2, NULL)
INSERT [dbo].[Cancelarcita] ([IdCita], [IdUsuario], [Iddiponibilidad], [Motivo]) VALUES (245, 365252336, 2, NULL)
INSERT [dbo].[Cancelarcita] ([IdCita], [IdUsuario], [Iddiponibilidad], [Motivo]) VALUES (246, 114050317, 2, NULL)
GO
INSERT [dbo].[CantidadCitasPorMes] ([fecha], [Nombre], [CitasTotal], [CitasCancelada], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-09-01' AS Date), N'Ana mmm mmm', 2, 1, 0, 1)
INSERT [dbo].[CantidadCitasPorMes] ([fecha], [Nombre], [CitasTotal], [CitasCancelada], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-09-01' AS Date), N'Diana Artavia Martinez', 1, 0, 0, 1)
INSERT [dbo].[CantidadCitasPorMes] ([fecha], [Nombre], [CitasTotal], [CitasCancelada], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-09-01' AS Date), N'Monica Velasquez Calderon', 2, 1, 1, 0)
INSERT [dbo].[CantidadCitasPorMes] ([fecha], [Nombre], [CitasTotal], [CitasCancelada], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-09-01' AS Date), N'Pamela  Fonseca', 2, 1, 0, 1)
GO
INSERT [dbo].[CantidadesdeCitas] ([Fecha], [TotalCitas], [CitasCanceladas], [Citasreservadas], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-10-17' AS Date), 5, 1, 3, 0, 1)
INSERT [dbo].[CantidadesdeCitas] ([Fecha], [TotalCitas], [CitasCanceladas], [Citasreservadas], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-10-21' AS Date), 4, 1, 2, 0, 1)
GO
INSERT [dbo].[Citas] ([CitasId], [UsuarioID], [MedicoID], [IdHorario], [IdEstadoCita]) VALUES (1, 114050314, 23565893, 1, 2)
INSERT [dbo].[Citas] ([CitasId], [UsuarioID], [MedicoID], [IdHorario], [IdEstadoCita]) VALUES (2, 114050314, 23565893, 9, 1)
INSERT [dbo].[Citas] ([CitasId], [UsuarioID], [MedicoID], [IdHorario], [IdEstadoCita]) VALUES (3, 114050314, 23565893, 9, 2)
INSERT [dbo].[Citas] ([CitasId], [UsuarioID], [MedicoID], [IdHorario], [IdEstadoCita]) VALUES (5, 365252336, 23565893, 2, 1)
INSERT [dbo].[Citas] ([CitasId], [UsuarioID], [MedicoID], [IdHorario], [IdEstadoCita]) VALUES (52, 114050317, 23565893, 9, 4)
INSERT [dbo].[Citas] ([CitasId], [UsuarioID], [MedicoID], [IdHorario], [IdEstadoCita]) VALUES (53, 114050317, 23565893, 13, 1)
INSERT [dbo].[Citas] ([CitasId], [UsuarioID], [MedicoID], [IdHorario], [IdEstadoCita]) VALUES (55, 114050314, 23565893, 13, 3)
INSERT [dbo].[Citas] ([CitasId], [UsuarioID], [MedicoID], [IdHorario], [IdEstadoCita]) VALUES (236, 114050317, 23565893, 22, 3)
INSERT [dbo].[Citas] ([CitasId], [UsuarioID], [MedicoID], [IdHorario], [IdEstadoCita]) VALUES (237, 114050317, 23565893, 22, 1)
INSERT [dbo].[Citas] ([CitasId], [UsuarioID], [MedicoID], [IdHorario], [IdEstadoCita]) VALUES (238, 114050317, 23565893, 23, 2)
INSERT [dbo].[Citas] ([CitasId], [UsuarioID], [MedicoID], [IdHorario], [IdEstadoCita]) VALUES (239, 114050314, 23565893, 17, 2)
INSERT [dbo].[Citas] ([CitasId], [UsuarioID], [MedicoID], [IdHorario], [IdEstadoCita]) VALUES (240, 114050317, 25565893, 19, 3)
INSERT [dbo].[Citas] ([CitasId], [UsuarioID], [MedicoID], [IdHorario], [IdEstadoCita]) VALUES (241, 114050319, 25565893, 21, 4)
INSERT [dbo].[Citas] ([CitasId], [UsuarioID], [MedicoID], [IdHorario], [IdEstadoCita]) VALUES (242, 114050319, 25565893, 37, 3)
INSERT [dbo].[Citas] ([CitasId], [UsuarioID], [MedicoID], [IdHorario], [IdEstadoCita]) VALUES (243, 114050314, 25565893, 38, 3)
INSERT [dbo].[Citas] ([CitasId], [UsuarioID], [MedicoID], [IdHorario], [IdEstadoCita]) VALUES (244, 114050317, 25565893, 39, 2)
INSERT [dbo].[Citas] ([CitasId], [UsuarioID], [MedicoID], [IdHorario], [IdEstadoCita]) VALUES (245, 365252336, 25565893, 42, 2)
INSERT [dbo].[Citas] ([CitasId], [UsuarioID], [MedicoID], [IdHorario], [IdEstadoCita]) VALUES (246, 114050317, 25565893, 43, 2)
INSERT [dbo].[Citas] ([CitasId], [UsuarioID], [MedicoID], [IdHorario], [IdEstadoCita]) VALUES (247, 114050319, 25565893, 44, 2)
INSERT [dbo].[Citas] ([CitasId], [UsuarioID], [MedicoID], [IdHorario], [IdEstadoCita]) VALUES (248, 365252336, 25565893, 45, 2)
GO
INSERT [dbo].[Dias] ([IDdias], [Dias]) VALUES (1, N'Lunes')
INSERT [dbo].[Dias] ([IDdias], [Dias]) VALUES (2, N'Martes')
INSERT [dbo].[Dias] ([IDdias], [Dias]) VALUES (3, N'Miercoles')
INSERT [dbo].[Dias] ([IDdias], [Dias]) VALUES (4, N'Jueves')
INSERT [dbo].[Dias] ([IDdias], [Dias]) VALUES (5, N'Viernes')
INSERT [dbo].[Dias] ([IDdias], [Dias]) VALUES (6, N'Sabado')
INSERT [dbo].[Dias] ([IDdias], [Dias]) VALUES (7, N'Domingo')
GO
INSERT [dbo].[DiponibilidadDoctor] ([IdDisponibilidaDoctor], [estado]) VALUES (1, N'Libre')
INSERT [dbo].[DiponibilidadDoctor] ([IdDisponibilidaDoctor], [estado]) VALUES (2, N'Ocupado')
GO
INSERT [dbo].[Doctor] ([Identificacion], [Nombre], [PrimerApellido], [SegundoApellido], [EspecialidadID], [Correo], [Telefono]) VALUES (23565893, N'Ricardo', N'Montero', N'Fonseca', 1, N'mmm@gmail.com', N'25478698')
INSERT [dbo].[Doctor] ([Identificacion], [Nombre], [PrimerApellido], [SegundoApellido], [EspecialidadID], [Correo], [Telefono]) VALUES (36568989, N'David', N'Monestel', N'Vargas', 2, N'D@gmail.com', N'36521252')
INSERT [dbo].[Doctor] ([Identificacion], [Nombre], [PrimerApellido], [SegundoApellido], [EspecialidadID], [Correo], [Telefono]) VALUES (56989825, N'Maria', N'Portuguez', N'Artavia', 2, N'MP@gmail.com', N'23626525')
GO
INSERT [dbo].[Duracion] ([IdDuracion], [Duracion]) VALUES (1, CAST(N'00:45:00' AS Time))
INSERT [dbo].[Duracion] ([IdDuracion], [Duracion]) VALUES (2, CAST(N'01:00:00' AS Time))
GO
INSERT [dbo].[Especialidad] ([EspecialidadID], [NombreEspecialidad]) VALUES (1, N'Dermatología')
INSERT [dbo].[Especialidad] ([EspecialidadID], [NombreEspecialidad]) VALUES (2, N'Medicina Estética, Regenerativa ')
INSERT [dbo].[Especialidad] ([EspecialidadID], [NombreEspecialidad]) VALUES (3, N'Patología Cutánea ')
INSERT [dbo].[Especialidad] ([EspecialidadID], [NombreEspecialidad]) VALUES (4, N'Anatomía Patológica.')
INSERT [dbo].[Especialidad] ([EspecialidadID], [NombreEspecialidad]) VALUES (5, N'Medicina y Cirugía')
GO
INSERT [dbo].[EstadoCita] ([IdEstadoCita], [Estado]) VALUES (1, N'Reservada')
INSERT [dbo].[EstadoCita] ([IdEstadoCita], [Estado]) VALUES (2, N'Cancelada')
INSERT [dbo].[EstadoCita] ([IdEstadoCita], [Estado]) VALUES (3, N'Efectivas')
INSERT [dbo].[EstadoCita] ([IdEstadoCita], [Estado]) VALUES (4, N'Perdidas')
GO
INSERT [dbo].[EstadoUsuario] ([IdEstadoUsuario], [EstadoUsuario]) VALUES (1, N'Activo')
INSERT [dbo].[EstadoUsuario] ([IdEstadoUsuario], [EstadoUsuario]) VALUES (2, N'Desactivado')
GO
SET IDENTITY_INSERT [dbo].[Horario] ON 

INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-17T00:00:00.000' AS DateTime), N'08:00', 23565893, 1, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-17T00:00:00.000' AS DateTime), N'09:30', 36568989, 2, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-17T00:00:00.000' AS DateTime), N'09:30', 56989825, 3, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-17T00:00:00.000' AS DateTime), N'10:15', 56989825, 4, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-18T00:00:00.000' AS DateTime), N'08:00', 23565893, 5, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-19T00:00:00.000' AS DateTime), N'08:00', 23565893, 6, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-19T00:00:00.000' AS DateTime), N'08:00', 56989825, 7, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-18T00:00:00.000' AS DateTime), N'15:30', 23565893, 8, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-21T00:00:00.000' AS DateTime), N'08:00', 23565893, 9, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-11-25T00:00:00.000' AS DateTime), N'10:00', 23565893, 12, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-11-25T00:00:00.000' AS DateTime), N'11:00', 23565893, 13, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-17T00:00:00.000' AS DateTime), N'8:30', 23565893, 17, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-17T00:00:00.000' AS DateTime), N'9:30', 23565893, 19, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-17T00:00:00.000' AS DateTime), N'10:00', 23565893, 21, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-17T00:00:00.000' AS DateTime), N'10:30', 23565893, 22, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-17T00:00:00.000' AS DateTime), N'11:00', 23565893, 23, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-18T00:00:00.000' AS DateTime), N'8:30', 23565893, 24, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-18T00:00:00.000' AS DateTime), N'9:00', 23565893, 25, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-18T00:00:00.000' AS DateTime), N'9:30', 23565893, 26, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-18T00:00:00.000' AS DateTime), N'10:00', 23565893, 28, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-18T00:00:00.000' AS DateTime), N'10:00', 23565893, 29, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-17T00:00:00.000' AS DateTime), N'02:00', 23565893, 31, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-17T00:00:00.000' AS DateTime), N'15:00', 23565893, 32, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-17T00:00:00.000' AS DateTime), N'09:00', 23565893, 34, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-09-01T00:00:00.000' AS DateTime), N'8:00', 23565893, 37, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-09-01T00:00:00.000' AS DateTime), N'9:00', 23565893, 38, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-09-01T00:00:00.000' AS DateTime), N'10:00', 23565893, 39, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-09-02T00:00:00.000' AS DateTime), N'9:00', 23565893, 42, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-09-02T00:00:00.000' AS DateTime), N'11:00', 23565893, 43, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-09-15T00:00:00.000' AS DateTime), N'8:00', 23565893, 44, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-09-15T00:00:00.000' AS DateTime), N'10:00', 23565893, 45, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-15T00:00:00.000' AS DateTime), N'8:00', 23565893, 71, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-15T00:00:00.000' AS DateTime), N'8:00', 23565893, 72, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-15T00:00:00.000' AS DateTime), N'8:00', 23565893, 73, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-15T00:00:00.000' AS DateTime), N'8:00', 23565893, 74, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-11-15T00:00:00.000' AS DateTime), N'9:00', 23565893, 79, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-11-15T00:00:00.000' AS DateTime), N'9:00', 23565893, 80, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-11-25T00:00:00.000' AS DateTime), N'8:00', 23565893, 81, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-12-25T00:00:00.000' AS DateTime), N'8:00', 23565893, 92, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-12-26T00:00:00.000' AS DateTime), N'08:00:00.0000000', 23565893, 93, 1)
INSERT [dbo].[Horario] ([Fecha], [Horas], [IdDoctor], [IdHorario], [IDDisponibilidad]) VALUES (CAST(N'2022-10-28T00:00:00.000' AS DateTime), N'08:00', 23565893, 98, 1)
SET IDENTITY_INSERT [dbo].[Horario] OFF
GO
INSERT [dbo].[Horas] ([IdHora], [hora], [Iddoctor], [IdDisponibilidad]) VALUES (1, CAST(N'07:00:00' AS Time), NULL, 1)
INSERT [dbo].[Horas] ([IdHora], [hora], [Iddoctor], [IdDisponibilidad]) VALUES (2, CAST(N'08:00:00' AS Time), NULL, 1)
INSERT [dbo].[Horas] ([IdHora], [hora], [Iddoctor], [IdDisponibilidad]) VALUES (3, CAST(N'09:00:00' AS Time), NULL, 1)
INSERT [dbo].[Horas] ([IdHora], [hora], [Iddoctor], [IdDisponibilidad]) VALUES (4, CAST(N'10:00:00' AS Time), NULL, 1)
INSERT [dbo].[Horas] ([IdHora], [hora], [Iddoctor], [IdDisponibilidad]) VALUES (5, CAST(N'11:00:00' AS Time), NULL, 1)
INSERT [dbo].[Horas] ([IdHora], [hora], [Iddoctor], [IdDisponibilidad]) VALUES (6, CAST(N'12:00:00' AS Time), NULL, 2)
INSERT [dbo].[Horas] ([IdHora], [hora], [Iddoctor], [IdDisponibilidad]) VALUES (7, CAST(N'13:00:00' AS Time), NULL, 1)
INSERT [dbo].[Horas] ([IdHora], [hora], [Iddoctor], [IdDisponibilidad]) VALUES (8, CAST(N'14:00:00' AS Time), NULL, 1)
INSERT [dbo].[Horas] ([IdHora], [hora], [Iddoctor], [IdDisponibilidad]) VALUES (9, CAST(N'15:00:00' AS Time), NULL, 1)
INSERT [dbo].[Horas] ([IdHora], [hora], [Iddoctor], [IdDisponibilidad]) VALUES (10, CAST(N'16:00:00' AS Time), NULL, 1)
INSERT [dbo].[Horas] ([IdHora], [hora], [Iddoctor], [IdDisponibilidad]) VALUES (11, CAST(N'17:00:00' AS Time), NULL, 1)
GO
INSERT [dbo].[Horas_rango] ([id], [Horas]) VALUES (1, CAST(N'08:00:00' AS Time))
INSERT [dbo].[Horas_rango] ([id], [Horas]) VALUES (2, CAST(N'08:30:00' AS Time))
INSERT [dbo].[Horas_rango] ([id], [Horas]) VALUES (3, CAST(N'09:00:00' AS Time))
INSERT [dbo].[Horas_rango] ([id], [Horas]) VALUES (4, CAST(N'09:30:00' AS Time))
INSERT [dbo].[Horas_rango] ([id], [Horas]) VALUES (5, CAST(N'10:00:00' AS Time))
INSERT [dbo].[Horas_rango] ([id], [Horas]) VALUES (6, CAST(N'10:30:00' AS Time))
INSERT [dbo].[Horas_rango] ([id], [Horas]) VALUES (7, CAST(N'11:00:00' AS Time))
INSERT [dbo].[Horas_rango] ([id], [Horas]) VALUES (8, CAST(N'11:30:00' AS Time))
INSERT [dbo].[Horas_rango] ([id], [Horas]) VALUES (9, CAST(N'12:00:00' AS Time))
INSERT [dbo].[Horas_rango] ([id], [Horas]) VALUES (10, CAST(N'12:30:00' AS Time))
INSERT [dbo].[Horas_rango] ([id], [Horas]) VALUES (11, CAST(N'13:00:00' AS Time))
INSERT [dbo].[Horas_rango] ([id], [Horas]) VALUES (12, CAST(N'13:30:00' AS Time))
INSERT [dbo].[Horas_rango] ([id], [Horas]) VALUES (13, CAST(N'14:00:00' AS Time))
GO
INSERT [dbo].[listaCitasPorcentaje] ([Fecha], [TotalCitas], [CitasCanceladas], [CitasReservadas], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-10-17' AS Date), N'100%', N'20%', N'60%', N'0%', N'20%       ')
GO
INSERT [dbo].[PorcentajeCitasPorMes] ([fecha], [Nombre], [CitasTotal], [CitasCancelada], [CitasEfectivas], [CitasPerdidas]) VALUES (NULL, N'Ana mmm mmm', N'100%', N'50%', N'0%', N'50%')
INSERT [dbo].[PorcentajeCitasPorMes] ([fecha], [Nombre], [CitasTotal], [CitasCancelada], [CitasEfectivas], [CitasPerdidas]) VALUES (NULL, N'Diana Artavia Martinez', N'100%', N'0%', N'0%', N'50%')
INSERT [dbo].[PorcentajeCitasPorMes] ([fecha], [Nombre], [CitasTotal], [CitasCancelada], [CitasEfectivas], [CitasPerdidas]) VALUES (NULL, N'Monica Velasquez Calderon', N'100%', N'50%', N'50%', N'0%')
INSERT [dbo].[PorcentajeCitasPorMes] ([fecha], [Nombre], [CitasTotal], [CitasCancelada], [CitasEfectivas], [CitasPerdidas]) VALUES (NULL, N'Pamela  Fonseca', N'100%', N'50%', N'0%', N'50%')
GO
INSERT [dbo].[prueba] ([fecha], [Nombre], [PrimerApellido], [SegundoApellido], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-09-01' AS Date), N'Ana', N'mmm', N'mmm', 0, 0, 1, 0)
INSERT [dbo].[prueba] ([fecha], [Nombre], [PrimerApellido], [SegundoApellido], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-09-15' AS Date), N'Ana', N'mmm', N'mmm', 0, 1, 0, 0)
INSERT [dbo].[prueba] ([fecha], [Nombre], [PrimerApellido], [SegundoApellido], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-10-17' AS Date), N'Ana', N'mmm', N'mmm', 0, 0, 0, 1)
INSERT [dbo].[prueba] ([fecha], [Nombre], [PrimerApellido], [SegundoApellido], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-09-01' AS Date), N'Diana', N'Artavia', N'Martinez', 0, 0, 1, 0)
INSERT [dbo].[prueba] ([fecha], [Nombre], [PrimerApellido], [SegundoApellido], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-10-17' AS Date), N'Diana', N'Artavia', N'Martinez', 0, 1, 0, 0)
INSERT [dbo].[prueba] ([fecha], [Nombre], [PrimerApellido], [SegundoApellido], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-10-21' AS Date), N'Diana', N'Artavia', N'Martinez', 1, 1, 0, 0)
INSERT [dbo].[prueba] ([fecha], [Nombre], [PrimerApellido], [SegundoApellido], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-11-25' AS Date), N'Diana', N'Artavia', N'Martinez', 0, 0, 1, 0)
INSERT [dbo].[prueba] ([fecha], [Nombre], [PrimerApellido], [SegundoApellido], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-09-01' AS Date), N'Monica', N'Velasquez', N'Calderon', 0, 1, 0, 0)
INSERT [dbo].[prueba] ([fecha], [Nombre], [PrimerApellido], [SegundoApellido], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-09-02' AS Date), N'Monica', N'Velasquez', N'Calderon', 0, 1, 0, 0)
INSERT [dbo].[prueba] ([fecha], [Nombre], [PrimerApellido], [SegundoApellido], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-10-17' AS Date), N'Monica', N'Velasquez', N'Calderon', 1, 1, 1, 0)
INSERT [dbo].[prueba] ([fecha], [Nombre], [PrimerApellido], [SegundoApellido], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-10-21' AS Date), N'Monica', N'Velasquez', N'Calderon', 0, 0, 0, 1)
INSERT [dbo].[prueba] ([fecha], [Nombre], [PrimerApellido], [SegundoApellido], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-11-25' AS Date), N'Monica', N'Velasquez', N'Calderon', 1, 0, 0, 0)
INSERT [dbo].[prueba] ([fecha], [Nombre], [PrimerApellido], [SegundoApellido], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-09-02' AS Date), N'Pamela', NULL, N'Fonseca', 0, 1, 0, 0)
INSERT [dbo].[prueba] ([fecha], [Nombre], [PrimerApellido], [SegundoApellido], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-09-15' AS Date), N'Pamela', NULL, N'Fonseca', 0, 1, 0, 0)
INSERT [dbo].[prueba] ([fecha], [Nombre], [PrimerApellido], [SegundoApellido], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (CAST(N'2022-10-17' AS Date), N'Pamela', NULL, N'Fonseca', 1, 0, 0, 0)
GO
INSERT [dbo].[SepararEsatadosdeCitas] ([Nombre], [PrimerApellido], [SegundoApellido], [Fecha], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (N'Ana', N'mmm', N'mmm', CAST(N'2022-09-01' AS Date), NULL, NULL, 3, NULL)
INSERT [dbo].[SepararEsatadosdeCitas] ([Nombre], [PrimerApellido], [SegundoApellido], [Fecha], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (N'Ana', N'mmm', N'mmm', CAST(N'2022-09-15' AS Date), NULL, 2, NULL, NULL)
INSERT [dbo].[SepararEsatadosdeCitas] ([Nombre], [PrimerApellido], [SegundoApellido], [Fecha], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (N'Ana', N'mmm', N'mmm', CAST(N'2022-10-17' AS Date), NULL, NULL, NULL, 4)
INSERT [dbo].[SepararEsatadosdeCitas] ([Nombre], [PrimerApellido], [SegundoApellido], [Fecha], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (N'Diana', N'Artavia', N'Martinez', CAST(N'2022-09-01' AS Date), NULL, NULL, 3, NULL)
INSERT [dbo].[SepararEsatadosdeCitas] ([Nombre], [PrimerApellido], [SegundoApellido], [Fecha], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (N'Diana', N'Artavia', N'Martinez', CAST(N'2022-10-17' AS Date), NULL, 4, NULL, NULL)
INSERT [dbo].[SepararEsatadosdeCitas] ([Nombre], [PrimerApellido], [SegundoApellido], [Fecha], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (N'Diana', N'Artavia', N'Martinez', CAST(N'2022-10-21' AS Date), 1, 2, NULL, NULL)
INSERT [dbo].[SepararEsatadosdeCitas] ([Nombre], [PrimerApellido], [SegundoApellido], [Fecha], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (N'Diana', N'Artavia', N'Martinez', CAST(N'2022-11-25' AS Date), NULL, NULL, 3, NULL)
INSERT [dbo].[SepararEsatadosdeCitas] ([Nombre], [PrimerApellido], [SegundoApellido], [Fecha], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (N'Monica', N'Velasquez', N'Calderon', CAST(N'2022-09-01' AS Date), NULL, 2, NULL, NULL)
INSERT [dbo].[SepararEsatadosdeCitas] ([Nombre], [PrimerApellido], [SegundoApellido], [Fecha], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (N'Monica', N'Velasquez', N'Calderon', CAST(N'2022-09-02' AS Date), NULL, 2, NULL, NULL)
INSERT [dbo].[SepararEsatadosdeCitas] ([Nombre], [PrimerApellido], [SegundoApellido], [Fecha], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (N'Monica', N'Velasquez', N'Calderon', CAST(N'2022-10-17' AS Date), 1, 2, 6, NULL)
INSERT [dbo].[SepararEsatadosdeCitas] ([Nombre], [PrimerApellido], [SegundoApellido], [Fecha], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (N'Monica', N'Velasquez', N'Calderon', CAST(N'2022-10-21' AS Date), NULL, NULL, NULL, 4)
INSERT [dbo].[SepararEsatadosdeCitas] ([Nombre], [PrimerApellido], [SegundoApellido], [Fecha], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (N'Monica', N'Velasquez', N'Calderon', CAST(N'2022-11-25' AS Date), 1, NULL, NULL, NULL)
INSERT [dbo].[SepararEsatadosdeCitas] ([Nombre], [PrimerApellido], [SegundoApellido], [Fecha], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (N'Pamela', NULL, N'Fonseca', CAST(N'2022-09-02' AS Date), NULL, 2, NULL, NULL)
INSERT [dbo].[SepararEsatadosdeCitas] ([Nombre], [PrimerApellido], [SegundoApellido], [Fecha], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (N'Pamela', NULL, N'Fonseca', CAST(N'2022-09-15' AS Date), NULL, 2, NULL, NULL)
INSERT [dbo].[SepararEsatadosdeCitas] ([Nombre], [PrimerApellido], [SegundoApellido], [Fecha], [CitasReservadas], [CitasCanceladas], [CitasEfectivas], [CitasPerdidas]) VALUES (N'Pamela', NULL, N'Fonseca', CAST(N'2022-10-17' AS Date), 1, NULL, NULL, NULL)
GO
INSERT [dbo].[TipoAcceso] ([IdTipoAcceso], [Tipo]) VALUES (1, N'Usuario')
INSERT [dbo].[TipoAcceso] ([IdTipoAcceso], [Tipo]) VALUES (2, N'Empleados')
GO
INSERT [dbo].[Usuario] ([Identificacion], [Nombre], [PrimerApellido], [SegundoApellido], [FechaNacimiento], [CorreoElectronico], [Telefono], [Contrasena], [IdEstado], [IdUsuario]) VALUES (114050310, N'Aljandro', N'Monestel', N'Ramirez', CAST(N'1997-02-15' AS Date), N'AM@gmail.com', N'86984387', N'12345678910    ', 1, 1)
INSERT [dbo].[Usuario] ([Identificacion], [Nombre], [PrimerApellido], [SegundoApellido], [FechaNacimiento], [CorreoElectronico], [Telefono], [Contrasena], [IdEstado], [IdUsuario]) VALUES (114050311, N'Cristina', N'Solano', N'Fonseca', CAST(N'1989-10-02' AS Date), N'SF@gmail.com', N'86984387', N'12345678910    ', 1, 1)
INSERT [dbo].[Usuario] ([Identificacion], [Nombre], [PrimerApellido], [SegundoApellido], [FechaNacimiento], [CorreoElectronico], [Telefono], [Contrasena], [IdEstado], [IdUsuario]) VALUES (114050314, N'Diana', N'Martinez', N'Artavia', CAST(N'1997-03-10' AS Date), N'dmA@gmail.com', N'85499865', N'12345678910    ', 1, 1)
INSERT [dbo].[Usuario] ([Identificacion], [Nombre], [PrimerApellido], [SegundoApellido], [FechaNacimiento], [CorreoElectronico], [Telefono], [Contrasena], [IdEstado], [IdUsuario]) VALUES (114050316, N'Martina', N'Fonseca', N'Vargas', CAST(N'1993-06-18' AS Date), N'monica.calderon.velasquez@cuc.cr', N'86984387', N'12345678910    ', 1, 1)
INSERT [dbo].[Usuario] ([Identificacion], [Nombre], [PrimerApellido], [SegundoApellido], [FechaNacimiento], [CorreoElectronico], [Telefono], [Contrasena], [IdEstado], [IdUsuario]) VALUES (114050317, N'Monica', N'Calderon', N'Velasquez', CAST(N'2022-02-10' AS Date), N'monica.calderon.velasquez@cuc.cr', N'86984388', N'12345678910    ', 1, 2)
INSERT [dbo].[Usuario] ([Identificacion], [Nombre], [PrimerApellido], [SegundoApellido], [FechaNacimiento], [CorreoElectronico], [Telefono], [Contrasena], [IdEstado], [IdUsuario]) VALUES (114050318, N'Dana', N'Monestel', N'Villalobos', CAST(N'1996-10-02' AS Date), N'monica.calderon.velasquez@cuc.cr', N'86984988', N'12345678910    ', 1, 2)
INSERT [dbo].[Usuario] ([Identificacion], [Nombre], [PrimerApellido], [SegundoApellido], [FechaNacimiento], [CorreoElectronico], [Telefono], [Contrasena], [IdEstado], [IdUsuario]) VALUES (114050319, N'Ana', N'mmm', N'mmm', CAST(N'2022-12-10' AS Date), N'monica.calderon.velasquez@cuc.cr', N'86984387', N'12345678910    ', 1, 1)
INSERT [dbo].[Usuario] ([Identificacion], [Nombre], [PrimerApellido], [SegundoApellido], [FechaNacimiento], [CorreoElectronico], [Telefono], [Contrasena], [IdEstado], [IdUsuario]) VALUES (365252336, N'Pamela', N'Fonseca', NULL, CAST(N'2022-02-25' AS Date), N'mm@gmail.com', N'85475858', N'mm1233         ', 1, 1)
GO
ALTER TABLE [dbo].[Cancelarcita]  WITH CHECK ADD  CONSTRAINT [FK_Cancelarcita_EstadoCita] FOREIGN KEY([Iddiponibilidad])
REFERENCES [dbo].[EstadoCita] ([IdEstadoCita])
GO
ALTER TABLE [dbo].[Cancelarcita] CHECK CONSTRAINT [FK_Cancelarcita_EstadoCita]
GO
ALTER TABLE [dbo].[Citas]  WITH CHECK ADD  CONSTRAINT [FK_Citas_EstadoCita] FOREIGN KEY([IdEstadoCita])
REFERENCES [dbo].[EstadoCita] ([IdEstadoCita])
GO
ALTER TABLE [dbo].[Citas] CHECK CONSTRAINT [FK_Citas_EstadoCita]
GO
ALTER TABLE [dbo].[Citas]  WITH CHECK ADD  CONSTRAINT [FK_Citas_Horario] FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horario] ([IdHorario])
GO
ALTER TABLE [dbo].[Citas] CHECK CONSTRAINT [FK_Citas_Horario]
GO
ALTER TABLE [dbo].[Citas]  WITH CHECK ADD  CONSTRAINT [FK_Citas_Usuario] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuario] ([Identificacion])
GO
ALTER TABLE [dbo].[Citas] CHECK CONSTRAINT [FK_Citas_Usuario]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_Horario_Doctor] FOREIGN KEY([IdDoctor])
REFERENCES [dbo].[Doctor] ([Identificacion])
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_Horario_Doctor]
GO
ALTER TABLE [dbo].[Horas]  WITH CHECK ADD  CONSTRAINT [FK_Horas_Doctor] FOREIGN KEY([Iddoctor])
REFERENCES [dbo].[Doctor] ([Identificacion])
GO
ALTER TABLE [dbo].[Horas] CHECK CONSTRAINT [FK_Horas_Doctor]
GO
ALTER TABLE [dbo].[MedicoEspecialidad]  WITH CHECK ADD  CONSTRAINT [FK_MedicoEspecialidad_Doctor] FOREIGN KEY([MedicoID])
REFERENCES [dbo].[Doctor] ([Identificacion])
GO
ALTER TABLE [dbo].[MedicoEspecialidad] CHECK CONSTRAINT [FK_MedicoEspecialidad_Doctor]
GO
ALTER TABLE [dbo].[MedicoEspecialidad]  WITH CHECK ADD  CONSTRAINT [FK_MedicoEspecialidad_Especialidad] FOREIGN KEY([IdEspecialidad])
REFERENCES [dbo].[Especialidad] ([EspecialidadID])
GO
ALTER TABLE [dbo].[MedicoEspecialidad] CHECK CONSTRAINT [FK_MedicoEspecialidad_Especialidad]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_EstadoUsuario] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[EstadoUsuario] ([IdEstadoUsuario])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_EstadoUsuario]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_TipoAcceso] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[TipoAcceso] ([IdTipoAcceso])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_TipoAcceso]
GO
/****** Object:  StoredProcedure [dbo].[_SPCargarListaPorcentajeporMes]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[_SPCargarListaPorcentajeporMes]
@fechaI date,
@fechaf date,
@suma int


as 

begin
select @fechaf= getDate()
select @suma =   sum(CitasCanceladas+CitasEfectivas+CitasPerdidas) from prueba  group by Nombre
	if   @fechaf>eomonth(@FechaI)
		begin
		select Concat (Nombre,' ',PrimerApellido,' ',SegundoApellido) as Nombre,concat((@suma*100/@suma),'%') as CitasTotal
			,concat(sum(CitasCanceladas*100/@suma),'%') as CitasCancelada ,concat(sum(CitasEfectivas*100/@suma),'%') as CitasEfectivas,
			concat(sum(CitasPerdidas*100/@suma),'%') as CitasPerdidas from prueba where fecha  between @fechaI and  eomonth(@FechaI)
			group by  Nombre,PrimerApellido,SegundoApellido
	end
	
	else 
		 begin 
			print 'No se puede realizar el analisis porque no ha concluido el mes'
	end

end
GO
/****** Object:  StoredProcedure [dbo].[_SPCitasPormesCantidad]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[_SPCitasPormesCantidad]
@fechaI date,
@fechaf date 
as 

begin
select @fechaf= getDate()

	if   @fechaf>eomonth(@FechaI)
		begin
		select Concat (Nombre,' ',PrimerApellido,' ',SegundoApellido) as Nombre,sum(CitasCanceladas+CitasEfectivas+CitasPerdidas)as CitasTotal
			,sum(CitasCanceladas) as CitasCancelada ,sum(CitasEfectivas) as CitasEfectivas,
			sum(CitasPerdidas) as CitasPerdidas from prueba where fecha  between @fechaI and  eomonth(@FechaI)
			group by  Nombre,PrimerApellido,SegundoApellido
	end
	
	else 
		 begin 
			print 'No se puede realizar el analisis porque no ha concluido el mes'
	end
end
GO
/****** Object:  StoredProcedure [dbo].[_SPInsertarListaCantidadporMes]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[_SPInsertarListaCantidadporMes]
@fecha Date,
@Nombre varchar(50),
@CitasTotal int,
@CitasCancelada int,
@CitasEfectivas int,
@CitasPerdidas int
as 

begin

insert into CantidadCitasPorMes( fecha, Nombre ,CitasTotal ,CitasCancelada ,CitasEfectivas ,CitasPerdidas ) Values(@fecha, @Nombre, @CitasTotal,
			@CitasCancelada, @CitasEfectivas,@CitasPerdidas)
end
GO
/****** Object:  StoredProcedure [dbo].[_SPInsertarListaPorcentajeporMes]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[_SPInsertarListaPorcentajeporMes]
@fecha date,
@Nombre varchar(50),
@CitasTotal varchar(50),
@CitasCancelada varchar(50),
@CitasEfectivas varchar(50),
@CitasPerdidas varchar(50)
as 

begin

insert into PorcentajeCitasPorMes( fecha,Nombre ,CitasTotal ,CitasCancelada ,CitasEfectivas ,CitasPerdidas ) Values( @fecha,@Nombre, @CitasTotal,
			@CitasCancelada, @CitasEfectivas,@CitasPerdidas)
end
GO
/****** Object:  StoredProcedure [dbo].[CantidaddeCitas]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[CantidaddeCitas]
@FechaInicial date,
@FechaFinal date
as
    if @FechaFinal< getdate()
  
 begin
 Select count(dbo.Horario.Fecha)as Cantidad, datename(dw,dbo.Horario.Fecha) as Fecha
 FROM dbo.Citas INNER JOIN
dbo.Horario ON dbo.Citas.IdHorario = dbo.Horario.IdHorario where dbo.Horario.Fecha between @FechaInicial and @FechaFinal 
				  group by  Horario.Fecha
 end;
GO
/****** Object:  StoredProcedure [dbo].[Crud]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[Crud]

 


@parametro int,
@Identificacion int ,
@Nombre varchar (50) ,
@Primerapellido varchar (50) ,
@SegundoApellido varchar (50) ,
@FechaNacimiento date ,
@CorreoElectronico varchar (50) ,
@Telefono varchar (50) ,
@Contrasena char (15) ,
@IdEstado int,
@IdUsuario int  
 

as
    if @parametro=1
  
 begin
insert into Usuario
(Identificacion,nombre,PrimerApellido,SegundoApellido,FechaNacimiento,CorreoElectronico,Telefono,Contrasena,IdEstado,IdUsuario)
values
(@Identificacion,@Nombre, @Primerapellido, @SegundoApellido, @FechaNacimiento , @CorreoElectronico, @Telefono, @Contrasena, @IdEstado, @IdUsuario)
        end

 

    if @parametro=2
        begin
            update Usuario set nombre=@Nombre,PrimerApellido=@Primerapellido,SegundoApellido=@SegundoApellido,FechaNacimiento=@FechaNacimiento,CorreoElectronico=@CorreoElectronico,
			Telefono= @Telefono,Contrasena= @Contrasena,IdEstado=@IdEstado,IdUsuario=@IdUsuario
WHERE Identificacion=@Identificacion
        end

 

    if @parametro=3
        begin
            delete  from Usuario where Identificacion=@Identificacion
        end;
GO
/****** Object:  StoredProcedure [dbo].[EliminarUsuario]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[EliminarUsuario]
@Identificacion int 
as
		  begin
            delete  from Usuario where Identificacion=@Identificacion
        end;
GO
/****** Object:  StoredProcedure [dbo].[InicioSesion]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[InicioSesion]
@Usuario varchar(20),
@Contrasena char(20)
as
select  *from Usuario
where Identificacion=@Usuario
GO
/****** Object:  StoredProcedure [dbo].[OrdenarCitas]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[OrdenarCitas]
 @Nombre Varchar(50),
 @parametro int,
 @CitasTotal int,
 @CitasCancelada int,
 @CitasEfectivas int,
 @CitasPerdidas int

 as 
 
 begin 



if  @parametro=1
begin
	if @Nombre=1
	begin
	select dateName (mm,Fecha) as Fecha,Nombre, CitasTotal,CitasCancelada,CitasEfectivas,CitasPerdidas from PorcentajeCitasPorMes
	order by nombre desc
	end
	if @Nombre=2
	begin
	select dateName (mm,Fecha) as Fecha,Nombre, CitasTotal,CitasCancelada,CitasEfectivas,CitasPerdidas from PorcentajeCitasPorMes
	order by nombre asc
	end
end

if  @parametro=2
begin
	if @CitasTotal=1
	begin
	select dateName (mm,Fecha) as Fecha,Nombre, CitasTotal,CitasCancelada,CitasEfectivas,CitasPerdidas from PorcentajeCitasPorMes
	order by CitasTotal desc
	end
	if @CitasTotal=2
	begin
	select dateName (mm,Fecha) as Fecha,Nombre, CitasTotal,CitasCancelada,CitasEfectivas,CitasPerdidas from PorcentajeCitasPorMes
	order by CitasTotal asc
	end
end

if  @parametro=3
begin
	if @CitasCancelada=1
	begin
	select dateName (mm,Fecha) as Fecha,Nombre, CitasTotal,CitasCancelada,CitasEfectivas,CitasPerdidas from PorcentajeCitasPorMes
	order by CitasCancelada desc
	end
	if @CitasCancelada=2
	begin
	select dateName (mm,Fecha) as Fecha,Nombre, CitasTotal,CitasCancelada,CitasEfectivas,CitasPerdidas from PorcentajeCitasPorMes
	order by CitasCancelada asc
	end
end

if  @parametro=4
begin
	if @CitasEfectivas=1
	begin
	select dateName (mm,Fecha) as Fecha,Nombre, CitasTotal,CitasCancelada,CitasEfectivas,CitasPerdidas from PorcentajeCitasPorMes
	order by CitasEfectivas desc
	end
	if @CitasEfectivas=2
	begin
	select dateName (mm,Fecha) as Fecha, Nombre, CitasTotal,CitasCancelada,CitasEfectivas,CitasPerdidas from PorcentajeCitasPorMes
	order by CitasEfectivas asc
	end
end

if  @parametro=5
begin
	if @CitasPerdidas=1
	begin
	select dateName (mm,Fecha) as Fecha,Nombre, CitasTotal,CitasCancelada,CitasEfectivas,CitasPerdidas from PorcentajeCitasPorMes
	order by CitasPerdidas desc
	end
	if @CitasPerdidas=2
	begin
	select dateName (mm,Fecha) as Fecha, Nombre, CitasTotal,CitasCancelada,CitasEfectivas,CitasPerdidas from PorcentajeCitasPorMes
	order by CitasPerdidas asc
	end
end

 end


GO
/****** Object:  StoredProcedure [dbo].[sp_ActualizarUsuario]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ActualizarUsuario]
@Identificacion int ,
@Nombre varchar (50) ,
@Primerapellido varchar (50) ,
@SegundoApellido varchar (50) ,
@FechaNacimiento date ,
@CorreoElectronico varchar (50) ,
@Telefono varchar (50) ,
@Contrasena char (15) ,
@IdEstado int,
@IdUsuario int


as begin
update Usuario set nombre=@Nombre,PrimerApellido=@Primerapellido,SegundoApellido=@SegundoApellido,FechaNacimiento=@FechaNacimiento,CorreoElectronico=@CorreoElectronico,Telefono= @Telefono,Contrasena= @Contrasena,IdEstado=@IdEstado,IdUsuario=@IdUsuario
WHERE Identificacion=@Identificacion
end
GO
/****** Object:  StoredProcedure [dbo].[sp_BucarsUsuarios]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_BucarsUsuarios]
 @id int 
as begin
select *  from Usuario Where Identificacion =@id 
end

GO
/****** Object:  StoredProcedure [dbo].[sp_buscarUsuario]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[sp_buscarUsuario]
@Idusario int


 as 

 begin
  SELECT dbo.Citas.CitasId, dbo.Citas.UsuarioID, concat( dbo.Usuario.Nombre,' ', dbo.Usuario.PrimerApellido,' ',dbo.Usuario.SegundoApellido) as Usuario, dbo.Horario.Fecha, dbo.Horario.Horas,
                  concat (dbo.Doctor.Nombre ,' ', dbo.Doctor.PrimerApellido ,' ', dbo.Doctor.SegundoApellido) as Doctor ,  dbo.EstadoCita.Estado
FROM     dbo.Citas INNER JOIN
                  dbo.Horario ON dbo.Citas.IdHorario = dbo.Horario.IdHorario INNER JOIN
                  dbo.Usuario ON dbo.Citas.UsuarioID = dbo.Usuario.Identificacion INNER JOIN
                  dbo.Doctor ON dbo.Horario.IdDoctor = dbo.Doctor.Identificacion INNER JOIN
                  dbo.EstadoCita ON dbo.Citas.CitasId = dbo.EstadoCita.IdEstadoCita where dbo.Citas.UsuarioID like @Idusario
        end
 
GO
/****** Object:  StoredProcedure [dbo].[SP_CancelarCita]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[SP_CancelarCita]
@CitasId int,
@UsuarioID int ,
@IdEstadoCita int ,
@Descripcion Varchar(50)

 as 

 begin
insert into  Cancelarcita(IdCita,IDUsuario,Iddiponibilidad,Motivo  )
values
(@CitasId,@UsuarioID ,@IdEstadoCita, @Descripcion)
        end
 
GO
/****** Object:  StoredProcedure [dbo].[SP_CrudHorario]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_CrudHorario]

--@HorarioId int,
@Fecha date ,
@Horas time(0),
@IdDoctor int ,
@IDDisponibilidad int,
@parametro int


as
if @parametro=1
  
 begin
	 if exists (select *from horario where Fecha=@Fecha 
		 and Horas= convert(char(5),@Horas , 108)
		 and IdDoctor=@IdDoctor)
		 begin
		raiserror ('Los datos ya existen', 16,1 )
	
	 end
	else
	begin
		insert into Horario
		(Fecha,Horas,IdDoctor,IDDisponibilidad)
		values
		(@Fecha,convert(char(5), @Horas, 108),@IdDoctor,@IDDisponibilidad)
		
	end
	end


if @parametro=2
begin
update Horario set IDDisponibilidad=@IDDisponibilidad
WHERE Fecha= @fecha
and Horas= @Horas
and IdDoctor= @IdDoctor
end

if @parametro=3
begin
delete  from Horario where Fecha= @fecha
and Horas= @Horas
and IdDoctor= @IdDoctor
end;
GO
/****** Object:  StoredProcedure [dbo].[sp_DatosUsuarios]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_DatosUsuarios]

as begin
select* from  Usuario
end

GO
/****** Object:  StoredProcedure [dbo].[SP_disponibilidadCita]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[SP_disponibilidadCita]
as

begin

SELECT  * from EstadoCita

end
GO
/****** Object:  StoredProcedure [dbo].[SP_DropBoxCita]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_DropBoxCita]
@parametro int 


as


if @parametro=1
  
begin

SELECT  distinct dbo.Horario.IdDoctor, concat (dbo.Doctor.Nombre, ' ',dbo.Doctor.PrimerApellido,' ' ,dbo.Doctor.SegundoApellido) as Nombre
FROM     dbo.Horario   JOIN
dbo.Doctor  on Horario.IdDoctor=Doctor.Identificacion

end

if @parametro=2

declare @fecha date 
declare @idDoctor int 
begin

select convert(char(5), Horas, 108) as hora from Horario where Fecha=@fecha and IdDoctor=@idDoctor and IDDisponibilidad=1
end

if @parametro=3

begin
declare @idDoctor1 int 
select Fecha from Horario where IdDoctor=@idDoctor1 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DropBoxFecha]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_DropBoxFecha]
@idDoctor1 int 
as
begin

select  Fecha from Horario where IdDoctor=@idDoctor1 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DropBoxhora]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[SP_DropBoxhora]
 @fecha date ,
 @idDoctor int 
as
begin
select convert(char(5), Horas, 108) as hora from Horario where Fecha=@fecha and IdDoctor=@idDoctor and IDDisponibilidad=1
end
GO
/****** Object:  StoredProcedure [dbo].[SP_DropBoxHorario]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_DropBoxHorario]
@parametro int
as


if @parametro=1
  
begin

select  identificacion,CONCAT(Nombre,' ',PrimerApellido,' ',SegundoApellido)as NombreDoctor from Doctor
end

if @parametro=2
begin
select distinct id, convert(char(5), Horas, 108) as hora from Horas_rango
end

if @parametro=3
begin
select IdDisponibilidaDoctor,estado from DiponibilidadDoctor
end
 
GO
/****** Object:  StoredProcedure [dbo].[Sp_horas]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[Sp_horas]
 @HoraI as time(0),
 @HoraF as time(0),
 @HoraM as int,
 @Ho as int,
 @Ho1 as int  

as
begin
delete from Horas_rango
while (@HoraI<=@HoraF or @Ho<=@Ho1)

begin
insert into Horas_rango values(@Ho,@HoraI) 
set @HoraI= dateadd(minute,@HoraM,@HoraI)
set @Ho= @Ho+1
end
end;
GO
/****** Object:  StoredProcedure [dbo].[Sp_horas1]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_horas1]
 @HoraI as time(0),
 @HoraF as time(0),
 @HoraM as int,

 @canttidadcitas int null

as
begin
delete from Horas_rango

while (@HoraI<=@HoraF )

begin
insert into Horas_rango1 values(@HoraI,@canttidadcitas) 
set @HoraI= dateadd(minute,@HoraM,@HoraI)
set @canttidadcitas= (DATEDIFF(minute,@HoraI,@HoraF))/@HoraM


end
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertarCita]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_InsertarCita]
@CitasId int,
@UsuarioID int ,
@MedicoID int ,
@IdHorario int ,
@IdEstadoCita int ,
@Parametro int 
 

 as 
 begin
if  @parametro=1
 begin
  if exists (select *from Citas where UsuarioID=@UsuarioID and MedicoID=@MedicoID and IdHorario=@IdHorario)
		 begin
			raiserror ('Los datos ya existen', 16,1 )
		end
else
	begin
			insert into  Citas(CitasId,UsuarioID,MedicoID,IdHorario ,IdEstadoCita  )
			values
			(@CitasId,@UsuarioID,@MedicoID,@IdHorario ,@IdEstadoCita )
        end

if  @parametro=2
 begin
  update Citas set IdEstadoCita=@IdEstadoCita,IdHorario=@IdHorario,MedicoId=@MedicoID,UsuarioID=@UsuarioID 
WHERE CitasId=@CitasId 

end
end
end


GO
/****** Object:  StoredProcedure [dbo].[sp_leer_empleado]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_leer_empleado]

as begin
SELECT Usuario.Identificacion, Usuario.Nombre, Usuario.PrimerApellido,  Usuario.SegundoApellido,Usuario.FechaNacimiento, Usuario.CorreoElectronico, 
Usuario.Telefono, Usuario.Contrasena, EstadoUsuario.EstadoUsuario, TipoAcceso.Tipo FROM Usuario INNER JOIN EstadoUsuario ON Usuario.IdEstado = EstadoUsuario.IdEstadoUsuario INNER JOIN 
TipoAcceso ON Usuario.IdUsuario = TipoAcceso.IdTipoAcceso  where IdTipoAcceso=2
end
GO
/****** Object:  StoredProcedure [dbo].[sp_leer_Usuario]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_leer_Usuario]

as begin
SELECT Usuario.Identificacion, Usuario.Nombre, Usuario.PrimerApellido as "Primer Apellido",  Usuario.SegundoApellido as "Segundo Apellido",Usuario.FechaNacimiento as "Fecha de nacimiento", Usuario.CorreoElectronico as "Correo Electronico", 
Usuario.Telefono, Usuario.Contrasena, EstadoUsuario.EstadoUsuario as "Estado del Usuario ", TipoAcceso.Tipo as " Tipo de usuario" FROM Usuario INNER JOIN EstadoUsuario ON Usuario.IdEstado = EstadoUsuario.IdEstadoUsuario INNER JOIN 
TipoAcceso ON Usuario.IdUsuario = TipoAcceso.IdTipoAcceso  where IdTipoAcceso=1
end
GO
/****** Object:  StoredProcedure [dbo].[SP_LeerCita]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[SP_LeerCita]

 as 

 begin
 SELECT dbo.Citas.CitasId, dbo.Citas.UsuarioID, dbo.Citas.MedicoID, dbo.Horario.IdHorario, dbo.Horario.Fecha, dbo.Horario.Horas,concat( dbo.Usuario.Nombre,' ', dbo.Usuario.PrimerApellido,' ',dbo.Usuario.SegundoApellido) as Usuario,
                  concat (dbo.Doctor.Nombre ,' ', dbo.Doctor.PrimerApellido ,' ', dbo.Doctor.SegundoApellido) as Doctor , dbo.Citas.IdEstadoCita, dbo.EstadoCita.Estado
FROM     dbo.Citas INNER JOIN
                  dbo.Horario ON dbo.Citas.IdHorario = dbo.Horario.IdHorario INNER JOIN
                  dbo.Usuario ON dbo.Citas.UsuarioID = dbo.Usuario.Identificacion INNER JOIN
                  dbo.Doctor ON dbo.Horario.IdDoctor = dbo.Doctor.Identificacion INNER JOIN
                  dbo.EstadoCita ON dbo.Citas.CitasId = dbo.EstadoCita.IdEstadoCita
        end
GO
/****** Object:  StoredProcedure [dbo].[SP_LeerHorario]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_LeerHorario]


as

  
 begin
 SELECT distinct  dbo.Doctor.Identificacion,CONCAT( Doctor.Nombre,' ', Doctor.PrimerApellido,' ', Doctor.SegundoApellido) as NombreCompleto, dbo.Horario.Fecha, dbo.Horario.Horas, 
             dbo.DiponibilidadDoctor.IdDisponibilidaDoctor as IdEstado ,     dbo.DiponibilidadDoctor.estado
FROM     dbo.Doctor INNER JOIN
                  dbo.Horario ON dbo.Doctor.Identificacion = dbo.Horario.IdDoctor INNER JOIN
                  dbo.DiponibilidadDoctor ON dbo.Horario.IDDisponibilidad = dbo.DiponibilidadDoctor.IdDisponibilidaDoctor
end
GO
/****** Object:  StoredProcedure [dbo].[sp_LeerProvedor]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_LeerProvedor]

as begin
select *  from provedor 
end

GO
/****** Object:  StoredProcedure [dbo].[sp_leerrUsuario]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_leerrUsuario]
@Id as int
as begin
SELECT Usuario.Identificacion, Usuario.Nombre, Usuario.PrimerApellido,  Usuario.SegundoApellido,Usuario.FechaNacimiento, Usuario.CorreoElectronico, 
Usuario.Telefono, Usuario.Contrasena, EstadoUsuario.EstadoUsuario, TipoAcceso.Tipo FROM Usuario INNER JOIN EstadoUsuario ON Usuario.IdEstado = EstadoUsuario.IdEstadoUsuario INNER JOIN 
TipoAcceso ON Usuario.IdUsuario = TipoAcceso.IdTipoAcceso where Identificacion=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_leerUsuario]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_leerUsuario]
@Id int
as begin
SELECT Usuario.Identificacion, Usuario.Nombre, Usuario.PrimerApellido,  Usuario.SegundoApellido,Usuario.FechaNacimiento, Usuario.CorreoElectronico, 
Usuario.Telefono, Usuario.Contrasena, EstadoUsuario.EstadoUsuario, TipoAcceso.Tipo FROM Usuario INNER JOIN EstadoUsuario ON Usuario.IdEstado = EstadoUsuario.IdEstadoUsuario INNER JOIN 
TipoAcceso ON Usuario.IdUsuario = TipoAcceso.IdTipoAcceso  where IdTipoAcceso=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ListaCancelacion]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[SP_ListaCancelacion]


@Parametro int
as 
begin

if @Parametro=1 
begin
SELECT dbo.Usuario.Identificacion, concat (dbo.Usuario.Nombre,' ',dbo.Usuario.PrimerApellido,' ' ,dbo.Usuario.SegundoApellido)as Nombre, dbo.Horario.Fecha, 
dbo.Horario.Horas, dbo.EstadoCita.Estado
FROM     dbo.EstadoCita INNER JOIN
                 dbo.Citas ON dbo.EstadoCita.IdEstadoCita = dbo.Citas.IdEstadoCita INNER JOIN
                 dbo.Horario ON dbo.Citas.IdHorario = dbo.Horario.IdHorario INNER JOIN
                 dbo.Usuario ON dbo.Citas.UsuarioID = dbo.Usuario.Identificacion  where dbo.Citas.IdEstadoCita= 2
				 group by dbo.Usuario.Identificacion
				,dbo.Usuario.Nombre
				,dbo.Usuario.PrimerApellido
				,dbo.Usuario.SegundoApellido
				,dbo.Horario.Fecha
				, dbo.Horario.Horas
				,dbo.EstadoCita.Estado
end

if @Parametro=2

begin
SELECT dbo.Usuario.Identificacion, concat (dbo.Usuario.Nombre,' ',dbo.Usuario.PrimerApellido,' ' ,dbo.Usuario.SegundoApellido)as Nombre,  
dbo.EstadoCita.Estado,count (dbo.EstadoCita.Estado)as Cantidad_Citas_Canceladas
FROM     dbo.EstadoCita INNER JOIN
                  dbo.Citas ON dbo.EstadoCita.IdEstadoCita = dbo.Citas.IdEstadoCita INNER JOIN
                  dbo.Horario ON dbo.Citas.IdHorario = dbo.Horario.IdHorario INNER JOIN
                  dbo.Usuario ON dbo.Citas.UsuarioID = dbo.Usuario.Identificacion  where dbo.Citas.IdEstadoCita= 2 
				 
				  group by dbo.Usuario.Identificacion
				,dbo.Usuario.Nombre
				,dbo.Usuario.PrimerApellido
				,dbo.Usuario.SegundoApellido
				,dbo.EstadoCita.Estado
end
        end
 
GO
/****** Object:  StoredProcedure [dbo].[SP_ListaCancelacionBuscar]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_ListaCancelacionBuscar]


@id int
as 
begin


begin
SELECT dbo.Usuario.Identificacion, concat (dbo.Usuario.Nombre,' ',dbo.Usuario.PrimerApellido,' ' ,dbo.Usuario.SegundoApellido)as Nombre, dbo.Horario.Fecha, 
dbo.Horario.Horas, dbo.EstadoCita.Estado
FROM     dbo.EstadoCita INNER JOIN
                 dbo.Citas ON dbo.EstadoCita.IdEstadoCita = dbo.Citas.IdEstadoCita INNER JOIN
                 dbo.Horario ON dbo.Citas.IdHorario = dbo.Horario.IdHorario INNER JOIN
                 dbo.Usuario ON dbo.Citas.UsuarioID = dbo.Usuario.Identificacion  where dbo.Citas.IdEstadoCita= 2 and  dbo.Usuario.Identificacion=@id
				 group by dbo.Usuario.Identificacion
				,dbo.Usuario.Nombre
				,dbo.Usuario.PrimerApellido
				,dbo.Usuario.SegundoApellido
				,dbo.Horario.Fecha
				, dbo.Horario.Horas
				,dbo.EstadoCita.Estado
end


        end
 
GO
/****** Object:  StoredProcedure [dbo].[SP_ListaCantidadCitas]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_ListaCantidadCitas]

@fecha date

as 
begin
 --insert into CantidadesdeCitas(Fecha,TotalCitas,CitasCanceladas,Citasreservadas)
 SELECT  distinct dbo.Horario.Fecha, count (Citasid)  as Cantidad_en_total, 
(select count (Citasid) FROM     dbo.Citas INNER JOIN
                  dbo.EstadoCita ON dbo.Citas.IdEstadoCita = dbo.EstadoCita.IdEstadoCita INNER JOIN
                  dbo.Horario ON dbo.Citas.IdHorario = dbo.Horario.IdHorario where Citas.IdEstadoCita=2 and dbo.Horario.Fecha=@fecha)as Cantidad_Canceladas,

(select count (Citasid) FROM     dbo.Citas INNER JOIN
                  dbo.EstadoCita ON dbo.Citas.IdEstadoCita = dbo.EstadoCita.IdEstadoCita INNER JOIN
                  dbo.Horario ON dbo.Citas.IdHorario = dbo.Horario.IdHorario where Citas.IdEstadoCita=1 and dbo.Horario.Fecha=@fecha)as Cantidad_Reservadas,

(select count (Citasid) FROM     dbo.Citas INNER JOIN
                  dbo.EstadoCita ON dbo.Citas.IdEstadoCita = dbo.EstadoCita.IdEstadoCita INNER JOIN
                  dbo.Horario ON dbo.Citas.IdHorario = dbo.Horario.IdHorario where Citas.IdEstadoCita=3 and dbo.Horario.Fecha=@fecha)as Cantidad_Efectivas,

(select count (Citasid) FROM     dbo.Citas INNER JOIN
                  dbo.EstadoCita ON dbo.Citas.IdEstadoCita = dbo.EstadoCita.IdEstadoCita INNER JOIN
                  dbo.Horario ON dbo.Citas.IdHorario = dbo.Horario.IdHorario where Citas.IdEstadoCita=4 and dbo.Horario.Fecha=@fecha)as Cantidad_Perdidas



FROM     dbo.Citas INNER JOIN
                  dbo.EstadoCita ON dbo.Citas.IdEstadoCita = dbo.EstadoCita.IdEstadoCita INNER JOIN
                  dbo.Horario ON dbo.Citas.IdHorario = dbo.Horario.IdHorario where   dbo.Horario.Fecha=@fecha
group by dbo.Horario.Fecha
        end
GO
/****** Object:  StoredProcedure [dbo].[SP_ListaCantidadCitasCargartb]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_ListaCantidadCitasCargartb]

@id date
as 
begin
select Fecha,TotalCitas,CitasCanceladas,Citasreservadas,CitasEfectivas,CitasPerdidas from  CantidadesdeCitas where Fecha=@id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ListaCantidadCitasInsertar]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_ListaCantidadCitasInsertar]

@fecha date,
@TotalCitas int,
@CitasCanceladas int,
@Citasreservadas int,
@CitasEfectivas int,
@CitasPerdidas int

as 
begin
 insert into CantidadesdeCitas(Fecha,TotalCitas,CitasCanceladas,Citasreservadas,CitasEfectivas,CitasPerdidas)values(@Fecha,@TotalCitas,@CitasCanceladas,@Citasreservadas, @CitasEfectivas,@CitasPerdidas)

        end
 
GO
/****** Object:  StoredProcedure [dbo].[SP_listaCita]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_listaCita]
as

begin

SELECT  distinct  dbo.Horario.IdHorario,dbo.Horario.IdDoctor, concat(dbo.Doctor.Nombre, ' ',dbo.Doctor.PrimerApellido,' ' ,dbo.Doctor.SegundoApellido) as Nombre,
dbo.Horario.fecha,convert(char(5), dbo.Horario.Horas, 108) as hora
FROM     dbo.Horario   JOIN
dbo.Doctor  on Horario.IdDoctor=Doctor.Identificacion and IDDisponibilidad=1

end

GO
/****** Object:  StoredProcedure [dbo].[SP_listaCitasPorcentajeInsertar]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_listaCitasPorcentajeInsertar]

@Fecha date,
@TotalCitas varchar(50),
@CitasCanceladas varchar(50),
@Citasreservadas varchar(50),
@CitasEfectivas varchar(50),
@CitasPerdidas varchar(50)

as 
begin
 insert into listaCitasPorcentaje(Fecha,TotalCitas,CitasCanceladas,Citasreservadas,CitasEfectivas,CitasPerdidas)values(@Fecha,@TotalCitas,@CitasCanceladas,@Citasreservadas, @CitasEfectivas,@CitasPerdidas)

        end
GO
/****** Object:  StoredProcedure [dbo].[SP_listaCitPorcentaje]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_listaCitPorcentaje]

@Fecha date


as 
begin
SELECT  distinct fecha as Fecha, concat((((TotalCitas)*100)/ TotalCitas),'%') AS TotalCitas, concat((((CitasCanceladas)*100)/ TotalCitas) ,'%')as CitasCanceladas, 
concat((((Citasreservadas)*100)/ TotalCitas),'%') as CitasReservadas, concat((((CitasEfectivas)*100)/ TotalCitas),'%') AS CitasEfectivas,concat((((CitasPerdidas)*100)/ TotalCitas),'%') AS CitasPerdidas from  CantidadesdeCitas where fecha=@Fecha
group by Citasreservadas,
fecha,TotalCitas, CitasCanceladas,CitasEfectivas,CitasPerdidas
end
 
GO
/****** Object:  StoredProcedure [dbo].[SP_Listafechas]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_Listafechas]
@Fecha1  date,
 @Fecha2  date


 as 

 begin
  


 SELECT dbo.Citas.CitasId, dbo.Citas.UsuarioID, concat( dbo.Usuario.Nombre,' ', dbo.Usuario.PrimerApellido,' ',dbo.Usuario.SegundoApellido) as Usuario, dbo.Horario.Fecha, dbo.Horario.Horas,
                  concat (dbo.Doctor.Nombre ,' ', dbo.Doctor.PrimerApellido ,' ', dbo.Doctor.SegundoApellido) as Doctor ,  dbo.EstadoCita.Estado
FROM     dbo.Citas INNER JOIN
                  dbo.Horario ON dbo.Citas.IdHorario = dbo.Horario.IdHorario INNER JOIN
                  dbo.Usuario ON dbo.Citas.UsuarioID = dbo.Usuario.Identificacion INNER JOIN
                  dbo.Doctor ON dbo.Horario.IdDoctor = dbo.Doctor.Identificacion INNER JOIN
                  dbo.EstadoCita ON dbo.Citas.CitasId = dbo.EstadoCita.IdEstadoCita where dbo.Horario.Fecha between @Fecha1 and @fecha2
        end
 
GO
/****** Object:  StoredProcedure [dbo].[SP_Listaporcentajetb]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Listaporcentajetb]

@id date
as 
begin
select concat (datepart (d,Fecha),'-',datename (mm,Fecha),'-',datepart (yyyy,Fecha)) as Fecha,TotalCitas,CitasCanceladas,Citasreservadas, CitasEfectivas,CitasPerdidas from  listaCitasPorcentaje where Fecha=@id

end
GO
/****** Object:  StoredProcedure [dbo].[sp_permisos]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_permisos]
@Id_Rol int
as begin
select* from  Usuario where Identificacion=@Id_Rol
end
GO
/****** Object:  StoredProcedure [dbo].[sp_registrarUsuario]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_registrarUsuario]
@Identificacion int ,
@Nombre varchar (50) ,
@Primerapellido varchar (50) ,
@SegundoApellido varchar (50) ,
@FechaNacimiento date ,
@CorreoElectronico varchar (50) ,
@Telefono varchar (50) ,
@Contrasena char (15) ,
@IdEstado int,
@IdUsuario int


as begin
insert into Usuario
(Identificacion,nombre,PrimerApellido,SegundoApellido,FechaNacimiento,CorreoElectronico,Telefono,Contrasena,IdEstado,IdUsuario)
values
(@Identificacion,@Nombre, @Primerapellido, @SegundoApellido, @FechaNacimiento , @CorreoElectronico, @Telefono, @Contrasena, @IdEstado, @IdUsuario)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ValidarUsuario]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ValidarUsuario]
@Usuario varchar(50),
@Contrasenia varchar(50)

as
begin
select*from Usuario where Identificacion=@Usuario and Contrasena=@Contrasenia
end
GO
/****** Object:  Trigger [dbo].[CanclarCita]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[CanclarCita] ON [dbo].[Citas]
AFTER UPDATE 

as

if  UPDATE(IdEstadoCita)
begin

declare @cita int =(select  citasId  from inserted)



begin
		insert into Cancelarcita(IdCita,IdUsuario,Iddiponibilidad)
		select citasId,UsuarioID,IdEstadoCita from Citas
		where citasId =@cita and IdEstadoCita=2
end

end

GO
ALTER TABLE [dbo].[Citas] ENABLE TRIGGER [CanclarCita]
GO
/****** Object:  Trigger [dbo].[Insertar]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Insertar] ON [dbo].[Citas]
AFTER Insert, Update 

as

begin
delete from SepararEsatadosdeCitas

		insert into SepararEsatadosdeCitas(Nombre,PrimerApellido,SegundoApellido,Fecha,CitasReservadas,CitasCanceladas,CitasEfectivas,CitasPerdidas)
		select *from (
SELECT dbo.Usuario.Nombre, dbo.Usuario.SegundoApellido, dbo.Usuario.PrimerApellido, dbo.Horario.Fecha, dbo.Citas.IdEstadoCita
FROM     dbo.Citas INNER JOIN
                  dbo.Horario ON dbo.Citas.IdHorario = dbo.Horario.IdHorario INNER JOIN
                  dbo.Usuario ON dbo.Citas.UsuarioID = dbo.Usuario.Identificacion


)as m

pivot(
sum(IdEstadoCita)
for [IdEstadoCita] in ([1],[2],[3],[4])
)As EstadoCitaSepardo
end	
GO
ALTER TABLE [dbo].[Citas] ENABLE TRIGGER [Insertar]
GO
/****** Object:  Trigger [dbo].[InsertarDatos]    Script Date: 02/11/2022 8:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[InsertarDatos] ON [dbo].[SepararEsatadosdeCitas]
AFTER Insert

as

begin

delete from prueba

insert into  Prueba select  distinct fecha, Nombre,PrimerApellido,SegundoApellido,count(CitasReservadas),count(CitasCanceladas),Count(CitasEfectivas),count(CitasPerdidas) 
from SepararEsatadosdeCitas  
group by  Nombre,PrimerApellido,SegundoApellido, fecha
		
end
GO
ALTER TABLE [dbo].[SepararEsatadosdeCitas] ENABLE TRIGGER [InsertarDatos]
GO
USE [master]
GO
ALTER DATABASE [AdmiProyecto1] SET  READ_WRITE 
GO
