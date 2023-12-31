USE [master]
GO
/****** Object:  Database [Bliblio_datawarehouse]    Script Date: 11/06/2023 15:44:29 ******/
CREATE DATABASE [Bliblio_datawarehouse]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bliblio_datawarehouse', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.ADS_MYSQLADS\MSSQL\DATA\Bliblio_datawarehouse.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Bliblio_datawarehouse_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.ADS_MYSQLADS\MSSQL\DATA\Bliblio_datawarehouse_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Bliblio_datawarehouse] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bliblio_datawarehouse].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bliblio_datawarehouse] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET  MULTI_USER 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bliblio_datawarehouse] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Bliblio_datawarehouse] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Bliblio_datawarehouse] SET QUERY_STORE = OFF
GO
USE [Bliblio_datawarehouse]
GO
/****** Object:  Table [dbo].[Autores]    Script Date: 11/06/2023 15:44:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autores](
	[id] [int] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[fecha_nacimiento] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 11/06/2023 15:44:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[id] [int] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Editoriales]    Script Date: 11/06/2023 15:44:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Editoriales](
	[id] [int] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[direccion] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estantes]    Script Date: 11/06/2023 15:44:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estantes](
	[id] [int] NOT NULL,
	[numero] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Generos]    Script Date: 11/06/2023 15:44:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Generos](
	[id] [int] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 11/06/2023 15:44:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libros](
	[id] [int] NOT NULL,
	[titulo] [varchar](255) NOT NULL,
	[autor_id] [int] NOT NULL,
	[anio_publicacion] [date] NOT NULL,
	[genero_id] [int] NOT NULL,
	[editorial_id] [int] NOT NULL,
	[estante_id] [int] NOT NULL,
	[categoria_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prestamos]    Script Date: 11/06/2023 15:44:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestamos](
	[id] [int] NOT NULL,
	[libro_id] [int] NOT NULL,
	[usuario_id] [int] NOT NULL,
	[fecha_prestamo] [date] NOT NULL,
	[fecha_devolucion] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 11/06/2023 15:44:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id] [int] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[direccion] [varchar](255) NOT NULL,
	[telefono] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD FOREIGN KEY([autor_id])
REFERENCES [dbo].[Autores] ([id])
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD FOREIGN KEY([categoria_id])
REFERENCES [dbo].[Categorias] ([id])
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD FOREIGN KEY([editorial_id])
REFERENCES [dbo].[Editoriales] ([id])
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD FOREIGN KEY([estante_id])
REFERENCES [dbo].[Estantes] ([id])
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD FOREIGN KEY([genero_id])
REFERENCES [dbo].[Generos] ([id])
GO
ALTER TABLE [dbo].[Prestamos]  WITH CHECK ADD FOREIGN KEY([libro_id])
REFERENCES [dbo].[Libros] ([id])
GO
ALTER TABLE [dbo].[Prestamos]  WITH CHECK ADD FOREIGN KEY([usuario_id])
REFERENCES [dbo].[Usuarios] ([id])
GO
USE [master]
GO
ALTER DATABASE [Bliblio_datawarehouse] SET  READ_WRITE 
GO
