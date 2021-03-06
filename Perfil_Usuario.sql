USE [master]
GO
/****** Object:  Database [Perfil_Usuario]    Script Date: 2/1/2019 10:56:54 PM ******/
CREATE DATABASE [Perfil_Usuario]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Perfil_Usuario', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Perfil_Usuario.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Perfil_Usuario_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Perfil_Usuario_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Perfil_Usuario] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Perfil_Usuario].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Perfil_Usuario] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Perfil_Usuario] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Perfil_Usuario] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Perfil_Usuario] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Perfil_Usuario] SET ARITHABORT OFF 
GO
ALTER DATABASE [Perfil_Usuario] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Perfil_Usuario] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Perfil_Usuario] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Perfil_Usuario] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Perfil_Usuario] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Perfil_Usuario] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Perfil_Usuario] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Perfil_Usuario] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Perfil_Usuario] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Perfil_Usuario] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Perfil_Usuario] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Perfil_Usuario] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Perfil_Usuario] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Perfil_Usuario] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Perfil_Usuario] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Perfil_Usuario] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Perfil_Usuario] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Perfil_Usuario] SET RECOVERY FULL 
GO
ALTER DATABASE [Perfil_Usuario] SET  MULTI_USER 
GO
ALTER DATABASE [Perfil_Usuario] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Perfil_Usuario] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Perfil_Usuario] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Perfil_Usuario] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Perfil_Usuario] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Perfil_Usuario', N'ON'
GO
ALTER DATABASE [Perfil_Usuario] SET QUERY_STORE = OFF
GO
USE [Perfil_Usuario]
GO
/****** Object:  Table [dbo].[Modulo]    Script Date: 2/1/2019 10:56:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modulo](
	[id_modulo] [int] NOT NULL,
	[descripcion] [nvarchar](50) NULL,
	[referencia] [nvarchar](50) NULL,
	[fecha] [datetime] NULL,
 CONSTRAINT [PK_Modulo] PRIMARY KEY CLUSTERED 
(
	[id_modulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 2/1/2019 10:56:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[id_persona] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[apellido] [nvarchar](50) NULL,
	[identificacion] [nvarchar](50) NULL,
	[fecha_nacimiento] [date] NULL,
	[estado] [bit] NULL,
	[sexo] [nvarchar](50) NULL,
	[estado_civil] [nvarchar](50) NULL,
	[fecha] [datetime] NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[id_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 2/1/2019 10:56:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[id_sucursal] [int] NOT NULL,
	[descripcion] [nvarchar](50) NULL,
	[referencia] [nvarchar](50) NULL,
	[fecha] [datetime] NULL,
	[telefono] [nvarchar](50) NULL,
	[direccion] [nvarchar](50) NULL,
	[estado] [bit] NULL,
	[usuario_id] [int] NULL,
	[terminal_id] [int] NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[id_sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Terminal]    Script Date: 2/1/2019 10:56:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Terminal](
	[id_terminal] [int] NOT NULL,
	[id_sucursal] [int] NULL,
	[descripcion] [nvarchar](50) NULL,
	[referencia] [nvarchar](50) NULL,
	[mac] [nvarchar](50) NULL,
	[estado] [bit] NULL,
	[fecha] [datetime] NULL,
	[id_usuario] [int] NULL,
 CONSTRAINT [PK_Terminal] PRIMARY KEY CLUSTERED 
(
	[id_terminal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 2/1/2019 10:56:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id_persona] [int] NOT NULL,
	[usuario] [nvarchar](50) NULL,
	[id_usuario_perfil] [int] NULL,
	[estado] [bit] NULL,
	[fecha] [datetime] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario_clave]    Script Date: 2/1/2019 10:56:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_clave](
	[id_persona] [int] NULL,
	[clave] [nvarchar](50) NULL,
	[estado] [bit] NULL,
	[fecha] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario_Inicio]    Script Date: 2/1/2019 10:56:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Inicio](
	[id_persona] [int] NULL,
	[id_terminal] [int] NULL,
	[fecha_inicio] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario_perfil]    Script Date: 2/1/2019 10:56:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_perfil](
	[id_usuario_perfil] [int] NOT NULL,
	[descripcion] [nvarchar](50) NULL,
	[referencia] [nvarchar](50) NULL,
	[fecha] [datetime] NULL,
 CONSTRAINT [PK_Usuario_perfil] PRIMARY KEY CLUSTERED 
(
	[id_usuario_perfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario_Perfil_Modulo]    Script Date: 2/1/2019 10:56:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Perfil_Modulo](
	[id_usuario_perfil] [int] NULL,
	[id_modulo] [int] NULL,
	[inicio] [bit] NULL,
	[leer] [bit] NULL,
	[escribir] [bit] NULL,
	[modificar] [bit] NULL,
	[fecha] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD  CONSTRAINT [FK_Sucursal_Terminal] FOREIGN KEY([terminal_id])
REFERENCES [dbo].[Terminal] ([id_terminal])
GO
ALTER TABLE [dbo].[Sucursal] CHECK CONSTRAINT [FK_Sucursal_Terminal]
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD  CONSTRAINT [FK_Sucursal_Usuario] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[Usuario] ([id_persona])
GO
ALTER TABLE [dbo].[Sucursal] CHECK CONSTRAINT [FK_Sucursal_Usuario]
GO
ALTER TABLE [dbo].[Terminal]  WITH CHECK ADD  CONSTRAINT [FK_Terminal_Usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuario] ([id_persona])
GO
ALTER TABLE [dbo].[Terminal] CHECK CONSTRAINT [FK_Terminal_Usuario]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Persona] ([id_persona])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Persona]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Usuario_perfil] FOREIGN KEY([id_usuario_perfil])
REFERENCES [dbo].[Usuario_perfil] ([id_usuario_perfil])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Usuario_perfil]
GO
ALTER TABLE [dbo].[Usuario_clave]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_clave_Usuario] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Usuario] ([id_persona])
GO
ALTER TABLE [dbo].[Usuario_clave] CHECK CONSTRAINT [FK_Usuario_clave_Usuario]
GO
ALTER TABLE [dbo].[Usuario_Inicio]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Inicio_Terminal] FOREIGN KEY([id_terminal])
REFERENCES [dbo].[Terminal] ([id_terminal])
GO
ALTER TABLE [dbo].[Usuario_Inicio] CHECK CONSTRAINT [FK_Usuario_Inicio_Terminal]
GO
ALTER TABLE [dbo].[Usuario_Inicio]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Inicio_Usuario] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Usuario] ([id_persona])
GO
ALTER TABLE [dbo].[Usuario_Inicio] CHECK CONSTRAINT [FK_Usuario_Inicio_Usuario]
GO
ALTER TABLE [dbo].[Usuario_Perfil_Modulo]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Perfil_Modulo_Modulo] FOREIGN KEY([id_modulo])
REFERENCES [dbo].[Modulo] ([id_modulo])
GO
ALTER TABLE [dbo].[Usuario_Perfil_Modulo] CHECK CONSTRAINT [FK_Usuario_Perfil_Modulo_Modulo]
GO
ALTER TABLE [dbo].[Usuario_Perfil_Modulo]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Perfil_Modulo_Usuario_perfil] FOREIGN KEY([id_usuario_perfil])
REFERENCES [dbo].[Usuario_perfil] ([id_usuario_perfil])
GO
ALTER TABLE [dbo].[Usuario_Perfil_Modulo] CHECK CONSTRAINT [FK_Usuario_Perfil_Modulo_Usuario_perfil]
GO
/****** Object:  StoredProcedure [dbo].[permiso_abrir_modulo]    Script Date: 2/1/2019 10:56:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[permiso_abrir_modulo]
	-- Add the parameters for the stored procedure here
	@usuario nvarchar(50),
	@modulo nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    declare @dev int;
	set @dev = 0;
	

	if exists ( select * from Usuario 
		inner join Usuario_perfil on Usuario.id_usuario_perfil = Usuario_perfil.id_usuario_perfil 
		inner join Usuario_Perfil_Modulo on Usuario_perfil.id_usuario_perfil = Usuario_Perfil_Modulo.id_usuario_perfil
		inner join Modulo on Modulo.id_modulo = Usuario_Perfil_Modulo.id_modulo
		where Modulo.descripcion = @modulo and Usuario.usuario = @usuario and Usuario_Perfil_Modulo.inicio = 1)

		begin
			set @dev = 1;
		end

	return @dev;
		



END
GO
/****** Object:  StoredProcedure [dbo].[permiso_escribir_modulo]    Script Date: 2/1/2019 10:56:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[permiso_escribir_modulo]
	-- Add the parameters for the stored procedure here
	@usuario int,
	@modulo nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    declare @dev int;
	set @dev = 0;
	

	if exists ( Select * from Usuario
		inner join Usuario_perfil on Usuario.id_usuario_perfil = Usuario_perfil.id_usuario_perfil 
		inner join Usuario_Perfil_Modulo on Usuario_perfil.id_usuario_perfil = Usuario_Perfil_Modulo.id_usuario_perfil
		inner join Modulo on Modulo.id_modulo = Usuario_Perfil_Modulo.id_modulo
		where Modulo.descripcion = @modulo and Usuario.usuario = @usuario and Usuario_Perfil_Modulo.escribir = 1)

		begin
			set @dev = 1;
		end

	return @dev;
		



END


GO
/****** Object:  StoredProcedure [dbo].[permiso_leer_modulo]    Script Date: 2/1/2019 10:56:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[permiso_leer_modulo]
	-- Add the parameters for the stored procedure here
	@usuario nvarchar(50),
	@modulo nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    declare @dev int;
	set @dev = 0;
	

	if exists ( select * from Usuario 
		inner join Usuario_perfil on Usuario.id_usuario_perfil = Usuario_perfil.id_usuario_perfil 
		inner join Usuario_Perfil_Modulo on Usuario_perfil.id_usuario_perfil = Usuario_Perfil_Modulo.id_usuario_perfil
		inner join Modulo on Modulo.id_modulo = Usuario_Perfil_Modulo.id_modulo
		where Modulo.descripcion = @modulo and Usuario.usuario = @usuario and Usuario_Perfil_Modulo.leer = 1)

		begin
			set @dev = 1;
		end

	return @dev;
		



END


GO
/****** Object:  StoredProcedure [dbo].[Persona_Agregar_Modificar]    Script Date: 2/1/2019 10:56:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Persona_Agregar_Modificar]
	@id_persona int,
	@nombre nvarchar(50),
	@apellido nvarchar(50),
	@identificacion nvarchar(50),
	@fecha_nacimiento date,
	@sexo nvarchar(50),
	@estado_civil nvarchar(50),
	@estado bit,
	@id_usuario int,
	@id_terminal int
	

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.	SET NOCOUNT ON;

	SET NOCOUNT ON;

	if exists (select nombre,apellido,sexo,fecha_nacimiento,estado_civil,identificacion,estado from Persona where id_persona=@id_persona)
			begin
				update Persona set nombre=@nombre, apellido=@apellido,
				sexo= @sexo , fecha_nacimiento= @fecha_nacimiento ,
				estado_civil= @estado_civil,identificacion=@identificacion, estado=@estado
				where id_persona = @id_persona
			end

		else

	 begin 
			if not  exists (select nombre,apellido,sexo,fecha_nacimiento,estado_civil,identificacion from Persona)
				begin
					set @id_persona = 1;
				end

			else
				begin
					set @id_persona = (select MAX(id_persona)+1 from Persona);
				end
			insert into Persona(id_persona,nombre,apellido,sexo,fecha_nacimiento,estado_civil,identificacion, estado, fecha)
			values			   (@id_persona,@nombre,@apellido,@sexo,@fecha_nacimiento,@estado_civil, @identificacion,@estado, Getdate())
			end	
			

END

GO
/****** Object:  StoredProcedure [dbo].[terminal_agregar_modificar]    Script Date: 2/1/2019 10:56:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[terminal_agregar_modificar]
	@id_terminal int,
	@id_sucursal int,
	@descripcion nvarchar(50),
	@referencia nvarchar(50),
	@mac nvarchar(50),
	@estado bit,
	@id_usuario int
AS
BEGIN
	if(@id_terminal = 0)
		begin	
			if not exists (select * from Terminal)
				begin	
					set @id_terminal = 1;
				end
			else
				begin
					set @id_terminal = (select MAX(Terminal.id_terminal) from Terminal)+1;
				end

			insert into Terminal (id_terminal,id_sucursal,descripcion,referencia,mac,estado,fecha,id_usuario)
			values (@id_terminal, @id_sucursal,@descripcion,@referencia,@mac,@estado,GETDATE(),@id_usuario)

		end
	else 
	if(@id_terminal >0)
		begin	
			update Terminal set id_sucursal = @id_sucursal, descripcion= @descripcion, referencia= @referencia,
			fecha = GETDATE(), id_usuario = @id_usuario ,mac = @mac, estado = @estado where id_terminal = @id_terminal

		end


END


GO
/****** Object:  StoredProcedure [dbo].[usuario_buscar_id]    Script Date: 2/1/2019 10:56:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usuario_buscar_id]
	@usuario nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @usuario_id int
    set @usuario_id = (select Usuario.id_persona from Usuario where Usuario.usuario = @usuario);
	return @usuario_id
END


GO
/****** Object:  StoredProcedure [dbo].[Usuario_Cambio_clave]    Script Date: 2/1/2019 10:56:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Usuario_Cambio_clave]
	-- Add the parameters for the stored procedure here
	@id_usuario int,
	@clave nvarchar(50),
	@clave_nueva nvarchar(50)
	

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @dev int 
	set @dev = 0;
	
	if not exists (select * from Usuario_clave where Usuario_clave.estado = 1 and Usuario_clave.id_persona = @id_usuario and Usuario_clave.clave = @clave)
		begin 
			set @dev = 2;
		end
	else
		begin
			if not exists (select * from Usuario_clave where Usuario_clave.id_persona = @id_usuario and Usuario_clave.clave = @clave_nueva)
			begin
				-- Insert statements for procedure here
				update Usuario_clave set estado = 0 where Usuario_clave.id_persona = @id_usuario

				insert into Usuario_clave (id_persona,clave,estado,fecha)
				values (@id_usuario,@clave_nueva,1,GETDATE())
				set @dev = 1;
			end
		end

		return @dev
END


GO
/****** Object:  StoredProcedure [dbo].[Usuario_Crear_Modificar]    Script Date: 2/1/2019 10:56:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Usuario_Crear_Modificar]
	@id_usuario_perfil int,
	@id_persona int,
	@id_usuario int,
	@clave Nvarchar(50),
	@estado bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
		
	if exists (select id_usuario_perfil, id_persona,usuario from Usuario where usuario=@id_usuario)
		begin
		
			update Usuario set id_usuario_perfil=@id_usuario_perfil,id_persona=@id_persona
	
			where usuario = @id_usuario
		end

		begin
		if not  exists (select id_usuario_perfil,usuario,id_persona from Usuario)
				begin
					set @id_usuario = 1;
				end
				begin
					set @id_usuario = (select MAX(usuario)+1 from Usuario);
				end
			insert into Usuario(id_usuario_perfil,usuario,id_persona,fecha)
			values			   (@id_usuario_perfil,@id_usuario,@id_persona,getdate())
		end
		
		begin
				insert into Usuario_clave(id_persona,clave,estado, fecha)
				values					 (@id_persona,@clave,@estado,GETDATE())
				end 

		return @id_usuario
END

GO
/****** Object:  StoredProcedure [dbo].[usuario_inicio_sec]    Script Date: 2/1/2019 10:56:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usuario_inicio_sec]
	-- Add the parameters for the stored procedure here
	@usuario nvarchar(50),
	@clave nvarchar(50),
	@terminal nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @dev int;
	set @dev = 0;

	if exists (select * from Usuario  inner join Usuario_clave on Usuario.id_persona = Usuario_clave.id_persona where Usuario_clave.estado = 1 and Usuario.usuario = @usuario and Usuario_clave.clave = @clave and Usuario.estado = 1)
		begin
			if exists (select * from Terminal where mac = @terminal and  Terminal.estado = 1)
				begin	
					set @dev = 1;
				end
			else
				begin	
					set @dev = 2;
				end

		end

	return @dev;
END


GO
/****** Object:  StoredProcedure [dbo].[Usuario_Perfil_Agregar_modificar]    Script Date: 2/1/2019 10:56:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Usuario_Perfil_Agregar_modificar]
	-- Add the parameters for the stored procedure here
	@id_usuario_perfil int,
	@descrip nvarchar(50),
	@refe nvarchar(50)

	

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	set @id_usuario_perfil = 0;
	if exists (select id_usuario_perfil, descripcion,referencia from Usuario_perfil where id_usuario_perfil=@id_usuario_perfil)
		begin
		
			update Usuario_perfil set descripcion=@descrip,referencia=@refe
	
			where id_usuario_perfil = @id_usuario_perfil
		end



		begin
		if not  exists (select id_usuario_perfil,descripcion from Usuario_perfil)
				begin
					set @id_usuario_perfil = 1;
				end
				begin
					set @id_usuario_perfil = (select MAX(id_usuario_perfil)+1 from Usuario_perfil);
				end
			insert into Usuario_perfil(id_usuario_perfil,descripcion,referencia,fecha)
			values					  (@id_usuario_perfil,@descrip,@refe,getdate())
		end

		


		return @id_usuario_perfil
END

GO
/****** Object:  StoredProcedure [dbo].[Usuario_Perfil_Modulo_Agregar_modificar]    Script Date: 2/1/2019 10:56:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Usuario_Perfil_Modulo_Agregar_modificar] 
	-- Add the parameters for the stored procedure here
	@id_usuario_perfil int,
	@id_modulo int,
    @inicio bit,
    @leer bit,
    @escribir bit,
    @modificar bit
	as
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	if exists (select id_modulo, id_usuario_perfil, leer, escribir, modificar, inicio from Usuario_Perfil_Modulo where id_usuario_perfil=@id_usuario_perfil and Usuario_Perfil_Modulo.id_modulo = @id_modulo)
		begin
		
			update Usuario_Perfil_Modulo set leer=@leer,escribir= @escribir,modificar= @modificar,inicio= @inicio
	
			where id_usuario_perfil = @id_usuario_perfil and Usuario_Perfil_Modulo.id_modulo = @id_modulo
		end

	else
		begin

		    insert into Usuario_Perfil_Modulo(id_modulo, id_usuario_perfil, leer, escribir, modificar, inicio, fecha)
			values			                 (@id_modulo, @id_usuario_perfil,@leer,@escribir,@modificar,@inicio,getdate())
		end


		return @id_usuario_perfil
END



GO
USE [master]
GO
ALTER DATABASE [Perfil_Usuario] SET  READ_WRITE 
GO
