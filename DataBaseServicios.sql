USE [Test]
GO
/****** Object:  Table [dbo].[actividades]    Script Date: 10/10/2020 2:24:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[actividades](
	[IdAct] [int] IDENTITY(1,1) NOT NULL,
	[Descr] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_actividades] PRIMARY KEY CLUSTERED 
(
	[IdAct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[modulo]    Script Date: 10/10/2020 2:24:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[modulo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_modulo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[operaciones]    Script Date: 10/10/2020 2:24:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[operaciones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[idModulo] [int] NULL,
 CONSTRAINT [PK_operaciones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol]    Script Date: 10/10/2020 2:24:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_rol] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol_operacion]    Script Date: 10/10/2020 2:24:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol_operacion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idRol] [int] NULL,
	[idOperacion] [int] NULL,
 CONSTRAINT [PK_perfil_operacion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tiempos]    Script Date: 10/10/2020 2:24:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tiempos](
	[IdTiempos] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NULL,
	[Horas] [int] NULL,
	[IdActiv] [int] NULL,
 CONSTRAINT [PK_Tiempos] PRIMARY KEY CLUSTERED 
(
	[IdTiempos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 10/10/2020 2:24:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](200) NULL,
	[fecha] [datetime] NULL,
	[idRol] [int] NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[actividades] ON 

INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (1, N'Trabajo 1', N'maicol_931028@hotmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (2, N'Trabajo 2', N'maicol_931028@hotmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (3, N'Trabajo 3', N'maicol_931028@hotmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (4, N'Trabajo 4', N'maicol_931028@hotmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (5, N'Trabajo 5', N'maicol_931028@hotmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (6, N'Trabajo 6', N'maicol_931028@hotmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (7, N'Trabajo 7', N'maicol_931028@hotmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (8, N'Trabajo 8', N'maicol_931028@hotmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (9, N'Trabajo 12', N'maicol_931028@hotmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (10, N'15', N'maicol_931028@hotmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (11, N'Trabajo 20', N'maicol_931028@hotmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (12, N'Trabajo 20', N'maicol_931028@hotmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (13, N'Trabajo 20', N'maicol_931028@hotmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (14, N'Trabajo 20', N'maicol_931028@hotmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (15, N'Trabajo 200', N'maicol_931028@hotmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (16, N'Trabajo 6', N'aquiles.vaesa1990@gmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (17, N'Trabajo 11', N'aquiles.vaesa1990@gmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (18, N'Trabajo 8', N'aquiles.vaesa1990@gmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (19, N'Trabajo 10', N'aquiles.vaesa1990@gmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (20, N'Trabajo 9', N'aquiles.vaesa1990@gmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (21, N'Trabajo 70', N'aquiles.vaesa1990@gmail.com')
INSERT [dbo].[actividades] ([IdAct], [Descr], [Email]) VALUES (22, N'Trabajo 57', N'aquiles.vaesa1990@gmail.com')
SET IDENTITY_INSERT [dbo].[actividades] OFF
GO
SET IDENTITY_INSERT [dbo].[modulo] ON 

INSERT [dbo].[modulo] ([id], [nombre]) VALUES (1, N'VerReg')
SET IDENTITY_INSERT [dbo].[modulo] OFF
GO
SET IDENTITY_INSERT [dbo].[operaciones] ON 

INSERT [dbo].[operaciones] ([id], [nombre], [idModulo]) VALUES (1, N'Ver', 1)
SET IDENTITY_INSERT [dbo].[operaciones] OFF
GO
SET IDENTITY_INSERT [dbo].[rol] ON 

INSERT [dbo].[rol] ([id], [nombre]) VALUES (1, N'UsuVer')
SET IDENTITY_INSERT [dbo].[rol] OFF
GO
SET IDENTITY_INSERT [dbo].[rol_operacion] ON 

INSERT [dbo].[rol_operacion] ([id], [idRol], [idOperacion]) VALUES (1, 1, 1)
SET IDENTITY_INSERT [dbo].[rol_operacion] OFF
GO
SET IDENTITY_INSERT [dbo].[Tiempos] ON 

INSERT [dbo].[Tiempos] ([IdTiempos], [Fecha], [Horas], [IdActiv]) VALUES (1, CAST(N'2020-10-10' AS Date), 5, 1)
INSERT [dbo].[Tiempos] ([IdTiempos], [Fecha], [Horas], [IdActiv]) VALUES (2, CAST(N'2020-05-15' AS Date), 7, 1)
INSERT [dbo].[Tiempos] ([IdTiempos], [Fecha], [Horas], [IdActiv]) VALUES (3, CAST(N'2020-06-25' AS Date), 1, 20)
INSERT [dbo].[Tiempos] ([IdTiempos], [Fecha], [Horas], [IdActiv]) VALUES (4, CAST(N'2020-06-25' AS Date), 2, 20)
INSERT [dbo].[Tiempos] ([IdTiempos], [Fecha], [Horas], [IdActiv]) VALUES (5, CAST(N'2010-10-28' AS Date), 1, 1)
SET IDENTITY_INSERT [dbo].[Tiempos] OFF
GO
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([id], [nombre], [email], [password], [fecha], [idRol]) VALUES (3, N'Jan', N'maicol_931028@hotmail.com', N'123456789', CAST(N'2020-08-29T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[usuario] ([id], [nombre], [email], [password], [fecha], [idRol]) VALUES (4, N'Maicol', N'aquiles.vaesa1990@gmail.com', N'123456789', CAST(N'2020-10-10T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[usuario] OFF
GO
ALTER TABLE [dbo].[operaciones]  WITH CHECK ADD  CONSTRAINT [FK_operaciones_modulo] FOREIGN KEY([idModulo])
REFERENCES [dbo].[modulo] ([id])
GO
ALTER TABLE [dbo].[operaciones] CHECK CONSTRAINT [FK_operaciones_modulo]
GO
ALTER TABLE [dbo].[rol_operacion]  WITH CHECK ADD  CONSTRAINT [FK_rol_operacion_operaciones] FOREIGN KEY([idOperacion])
REFERENCES [dbo].[operaciones] ([id])
GO
ALTER TABLE [dbo].[rol_operacion] CHECK CONSTRAINT [FK_rol_operacion_operaciones]
GO
ALTER TABLE [dbo].[rol_operacion]  WITH CHECK ADD  CONSTRAINT [FK_rol_operacion_rol] FOREIGN KEY([idRol])
REFERENCES [dbo].[rol] ([id])
GO
ALTER TABLE [dbo].[rol_operacion] CHECK CONSTRAINT [FK_rol_operacion_rol]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_rol] FOREIGN KEY([idRol])
REFERENCES [dbo].[rol] ([id])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_rol]
GO
/****** Object:  StoredProcedure [dbo].[InsertarAct]    Script Date: 10/10/2020 2:24:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertarAct] (@Descr    NVARCHAR(50),  
                                           @Email    NVARCHAR(50))  
AS  
  BEGIN  
            INSERT INTO actividades  
                        (Descr,
						 Email)  
            VALUES     ( @Descr,  
                         @Email) 

  END  
GO
/****** Object:  StoredProcedure [dbo].[InsertarHoras]    Script Date: 10/10/2020 2:24:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[InsertarHoras] (@Fecha DATE,  
                                        @Horas INT,
										@IdActiv INT)  
AS  
  BEGIN  
            INSERT INTO Tiempos 
                        (Fecha,
						 Horas,
						 IdActiv)  
            VALUES     ( @Fecha,  
                         @Horas,
						 @IdActiv) 

  END
GO
/****** Object:  StoredProcedure [dbo].[ListAct]    Script Date: 10/10/2020 2:24:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ListAct] (@Email    NVARCHAR(50))  
AS  
  BEGIN  
    select IdAct, Descr from actividades where Email = @Email;
  END  
GO
/****** Object:  StoredProcedure [dbo].[ListHoras]    Script Date: 10/10/2020 2:24:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ListHoras] (@IdActiv INT)  
AS  
  BEGIN  
    select [Fecha],[Horas] from Tiempos where [IdActiv] = @IdActiv;
  END  
GO
