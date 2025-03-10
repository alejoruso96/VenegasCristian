USE [prueba]
GO
/****** Object:  Table [dbo].[Deportistas]    Script Date: 4/2/2025 21:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportistas](
	[DeportistaId] [int] IDENTITY(1,1) NOT NULL,
	[PaisId] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DeportistaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intentos]    Script Date: 4/2/2025 21:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intentos](
	[IntentoId] [int] IDENTITY(1,1) NOT NULL,
	[DeportistaId] [int] NOT NULL,
	[ModalidadId] [int] NOT NULL,
	[Peso] [decimal](5, 2) NOT NULL,
	[FechaIntento] [datetime] NULL,
	[Exitoso] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IntentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 4/2/2025 21:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[Mensaje] [nvarchar](max) NULL,
	[Nivel] [nvarchar](50) NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modalidades]    Script Date: 4/2/2025 21:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modalidades](
	[ModalidadId] [int] IDENTITY(1,1) NOT NULL,
	[NombreIntento] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ModalidadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 4/2/2025 21:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[PaisId] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](3) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Deportistas] ON 

INSERT [dbo].[Deportistas] ([DeportistaId], [PaisId], [Nombre], [FechaRegistro]) VALUES (1, 1, N'Anthony Boral', CAST(N'2025-02-04T05:31:36.250' AS DateTime))
INSERT [dbo].[Deportistas] ([DeportistaId], [PaisId], [Nombre], [FechaRegistro]) VALUES (2, 2, N'Li Wei', CAST(N'2025-02-04T05:31:36.250' AS DateTime))
INSERT [dbo].[Deportistas] ([DeportistaId], [PaisId], [Nombre], [FechaRegistro]) VALUES (3, 3, N'John Smith', CAST(N'2025-02-04T05:31:36.250' AS DateTime))
INSERT [dbo].[Deportistas] ([DeportistaId], [PaisId], [Nombre], [FechaRegistro]) VALUES (4, 4, N'María García', CAST(N'2025-02-04T05:31:36.250' AS DateTime))
INSERT [dbo].[Deportistas] ([DeportistaId], [PaisId], [Nombre], [FechaRegistro]) VALUES (5, 5, N'Paulo Santos', CAST(N'2025-02-04T05:31:36.250' AS DateTime))
INSERT [dbo].[Deportistas] ([DeportistaId], [PaisId], [Nombre], [FechaRegistro]) VALUES (6, 6, N'Carlos Ramírez', CAST(N'2025-02-04T05:31:36.250' AS DateTime))
INSERT [dbo].[Deportistas] ([DeportistaId], [PaisId], [Nombre], [FechaRegistro]) VALUES (7, 7, N'Laura Martínez', CAST(N'2025-02-04T05:31:36.250' AS DateTime))
INSERT [dbo].[Deportistas] ([DeportistaId], [PaisId], [Nombre], [FechaRegistro]) VALUES (8, 8, N'Mike Thompson', CAST(N'2025-02-04T05:31:36.250' AS DateTime))
SET IDENTITY_INSERT [dbo].[Deportistas] OFF
GO
SET IDENTITY_INSERT [dbo].[Intentos] ON 

INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (1, 1, 1, CAST(130.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.270' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (2, 1, 1, CAST(134.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.270' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (3, 1, 1, CAST(136.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.270' AS DateTime), 0)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (4, 2, 1, CAST(140.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.273' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (5, 2, 1, CAST(145.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.273' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (6, 2, 1, CAST(150.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.273' AS DateTime), 0)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (7, 3, 1, CAST(125.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.277' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (8, 3, 1, CAST(130.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.277' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (9, 3, 1, CAST(135.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.277' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (10, 4, 1, CAST(120.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.280' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (11, 4, 1, CAST(125.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.280' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (12, 4, 1, CAST(128.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.280' AS DateTime), 0)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (13, 5, 1, CAST(133.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.283' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (14, 5, 1, CAST(138.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.283' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (15, 5, 1, CAST(140.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.283' AS DateTime), 0)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (16, 6, 1, CAST(128.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.290' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (17, 6, 1, CAST(132.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.290' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (18, 6, 1, CAST(135.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.290' AS DateTime), 0)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (19, 7, 1, CAST(115.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.290' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (20, 7, 1, CAST(120.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.290' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (21, 7, 1, CAST(123.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.290' AS DateTime), 0)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (22, 8, 1, CAST(127.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.297' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (23, 8, 1, CAST(132.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.297' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (24, 8, 1, CAST(135.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.297' AS DateTime), 0)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (25, 1, 2, CAST(170.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.300' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (26, 1, 2, CAST(175.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.300' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (27, 1, 2, CAST(177.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.300' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (28, 2, 2, CAST(180.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.300' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (29, 2, 2, CAST(185.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.300' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (30, 2, 2, CAST(190.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.300' AS DateTime), 0)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (31, 3, 2, CAST(165.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.307' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (32, 3, 2, CAST(170.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.307' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (33, 3, 2, CAST(175.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.307' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (34, 4, 2, CAST(160.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.310' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (35, 4, 2, CAST(165.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.310' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (36, 4, 2, CAST(168.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.310' AS DateTime), 0)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (37, 5, 2, CAST(173.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.313' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (38, 5, 2, CAST(178.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.313' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (39, 5, 2, CAST(180.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.313' AS DateTime), 0)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (40, 6, 2, CAST(168.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.317' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (41, 6, 2, CAST(172.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.317' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (42, 6, 2, CAST(175.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.317' AS DateTime), 0)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (43, 7, 2, CAST(155.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.320' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (44, 7, 2, CAST(160.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.320' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (45, 7, 2, CAST(163.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.320' AS DateTime), 0)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (46, 8, 2, CAST(167.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.323' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (47, 8, 2, CAST(172.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.323' AS DateTime), 1)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (48, 8, 2, CAST(175.00 AS Decimal(5, 2)), CAST(N'2025-02-04T05:31:36.323' AS DateTime), 0)
INSERT [dbo].[Intentos] ([IntentoId], [DeportistaId], [ModalidadId], [Peso], [FechaIntento], [Exitoso]) VALUES (49, 4, 1, CAST(190.00 AS Decimal(5, 2)), CAST(N'2025-02-05T01:53:46.040' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Intentos] OFF
GO
SET IDENTITY_INSERT [dbo].[Modalidades] ON 

INSERT [dbo].[Modalidades] ([ModalidadId], [NombreIntento]) VALUES (1, N'Arranque')
INSERT [dbo].[Modalidades] ([ModalidadId], [NombreIntento]) VALUES (2, N'Envion')
SET IDENTITY_INSERT [dbo].[Modalidades] OFF
GO
SET IDENTITY_INSERT [dbo].[Paises] ON 

INSERT [dbo].[Paises] ([PaisId], [Codigo], [Nombre]) VALUES (1, N'COL', N'Colombia')
INSERT [dbo].[Paises] ([PaisId], [Codigo], [Nombre]) VALUES (2, N'CHN', N'China')
INSERT [dbo].[Paises] ([PaisId], [Codigo], [Nombre]) VALUES (3, N'USA', N'Estados Unidos')
INSERT [dbo].[Paises] ([PaisId], [Codigo], [Nombre]) VALUES (4, N'ESP', N'España')
INSERT [dbo].[Paises] ([PaisId], [Codigo], [Nombre]) VALUES (5, N'BRA', N'Brasil')
INSERT [dbo].[Paises] ([PaisId], [Codigo], [Nombre]) VALUES (6, N'MEX', N'México')
INSERT [dbo].[Paises] ([PaisId], [Codigo], [Nombre]) VALUES (7, N'ARG', N'Argentina')
INSERT [dbo].[Paises] ([PaisId], [Codigo], [Nombre]) VALUES (8, N'CAN', N'Canadá')
SET IDENTITY_INSERT [dbo].[Paises] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Modalida__75E3EFCF74C79C3F]    Script Date: 4/2/2025 21:41:34 ******/
ALTER TABLE [dbo].[Modalidades] ADD UNIQUE NONCLUSTERED 
(
	[NombreIntento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Paises__06370DAC890D6279]    Script Date: 4/2/2025 21:41:34 ******/
ALTER TABLE [dbo].[Paises] ADD UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Deportistas] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[Intentos] ADD  DEFAULT (getdate()) FOR [FechaIntento]
GO
ALTER TABLE [dbo].[Intentos] ADD  DEFAULT ((0)) FOR [Exitoso]
GO
ALTER TABLE [dbo].[Logs] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[Deportistas]  WITH NOCHECK ADD FOREIGN KEY([PaisId])
REFERENCES [dbo].[Paises] ([PaisId])
GO
ALTER TABLE [dbo].[Intentos]  WITH NOCHECK ADD FOREIGN KEY([DeportistaId])
REFERENCES [dbo].[Deportistas] ([DeportistaId])
GO
ALTER TABLE [dbo].[Intentos]  WITH NOCHECK ADD FOREIGN KEY([ModalidadId])
REFERENCES [dbo].[Modalidades] ([ModalidadId])
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerIntentosPorDeportista]    Script Date: 4/2/2025 21:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerIntentosPorDeportista]
AS
BEGIN
    SELECT 
        d.Nombre AS Deportista,
        p.Codigo AS Pais,
        m.NombreIntento AS Modalidad,
        COUNT(i.IntentoId) AS NumeroIntentos
    FROM Deportistas d
    INNER JOIN Paises p ON d.PaisId = p.PaisId
    INNER JOIN Intentos i ON d.DeportistaId = i.DeportistaId
    INNER JOIN Modalidades m ON i.ModalidadId = m.ModalidadId
    GROUP BY d.Nombre, p.Codigo, m.NombreIntento
    ORDER BY d.Nombre, m.NombreIntento;
END;
GO
