USE [MyCarSharing]
GO
/****** Object:  Table [dbo].[Автомобиль]    Script Date: 13.06.2023 14:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Автомобиль](
	[Id] [nvarchar](50) NOT NULL,
	[Модель автомобиля] [nvarchar](50) NULL,
	[Начало использования] [datetime] NULL,
	[Продолжительность использования] [datetime] NULL,
	[Статус доступности] [nchar](10) NULL,
 CONSTRAINT [PK_Автомобиль] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Бронь автомобиля]    Script Date: 13.06.2023 14:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Бронь автомобиля](
	[id] [nvarchar](50) NOT NULL,
	[Дата начала брони] [datetime] NULL,
	[Дата окончания брони] [datetime] NULL,
	[Модель автомобиля] [nvarchar](50) NULL,
	[Клиент] [nvarchar](50) NULL,
 CONSTRAINT [PK_Бронь автомобиля] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Клиент]    Script Date: 13.06.2023 14:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Клиент](
	[id] [nvarchar](50) NOT NULL,
	[Фио] [nchar](50) NULL,
	[Номер телефона] [nvarchar](50) NULL,
	[Электронная почта] [nchar](100) NULL,
 CONSTRAINT [PK_Клиент] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Модель автомобиля]    Script Date: 13.06.2023 14:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Модель автомобиля](
	[id] [nvarchar](50) NOT NULL,
	[Стоимость аренды] [nvarchar](100) NULL,
	[Количество доступных автомобилей данной модели] [nvarchar](50) NULL,
 CONSTRAINT [PK_Модель автомобиля] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Автомобиль]  WITH CHECK ADD  CONSTRAINT [FK_Автомобиль_Модель автомобиля] FOREIGN KEY([Модель автомобиля])
REFERENCES [dbo].[Модель автомобиля] ([id])
GO
ALTER TABLE [dbo].[Автомобиль] CHECK CONSTRAINT [FK_Автомобиль_Модель автомобиля]
GO
ALTER TABLE [dbo].[Бронь автомобиля]  WITH CHECK ADD  CONSTRAINT [FK_Бронь автомобиля_Клиент] FOREIGN KEY([Клиент])
REFERENCES [dbo].[Клиент] ([id])
GO
ALTER TABLE [dbo].[Бронь автомобиля] CHECK CONSTRAINT [FK_Бронь автомобиля_Клиент]
GO
ALTER TABLE [dbo].[Бронь автомобиля]  WITH CHECK ADD  CONSTRAINT [FK_Бронь автомобиля_Модель автомобиля] FOREIGN KEY([Модель автомобиля])
REFERENCES [dbo].[Модель автомобиля] ([id])
GO
ALTER TABLE [dbo].[Бронь автомобиля] CHECK CONSTRAINT [FK_Бронь автомобиля_Модель автомобиля]
GO
