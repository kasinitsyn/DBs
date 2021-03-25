CREATE DATABASE Factory;
GO

USE Factory;
GO

CREATE TABLE [Детали]
(
	[Код детали]	[varchar](50)		PRIMARY KEY,
	[Цвет]			[varchar](50),
	[Материал]		[varchar](50),
);
GO

CREATE TABLE [Поставщики]
(
	[Код поставщика]		[varchar](50)		PRIMARY KEY,
	[Название поставщика]	[varchar](50),
	[Город]					[varchar](50),
);
GO

CREATE TABLE [Проекты]
(
	[Код проекта]		[varchar](50)		PRIMARY KEY,
	[Название проекта]	[varchar](50),
	[Город]				[varchar](50),
);
GO

CREATE TABLE [Поставляемые детали]
(
	[Код поставщика]	[varchar](50)		NOT NULL,
	[Код детали]		[varchar](50)		NOT NULL,
	[Количество]		[int]				NOT NULL,

	PRIMARY KEY ([Код поставщика], [Код детали]),
	FOREIGN KEY ([Код детали]) REFERENCES [Детали] ([Код детали]),
	FOREIGN KEY ([Код поставщика]) REFERENCES [Поставщики] ([Код поставщика]),
);
GO

CREATE TABLE [Требуемые детали]
(
	[Код детали]	[varchar](50)	NOT NULL,
	[Код проекта]	[varchar](50)	NOT NULL,
	[Количество]	[int]			NOT NULL,

	PRIMARY KEY ([Код проекта], [Код детали]),
	FOREIGN KEY ([Код детали]) REFERENCES [Детали] ([Код детали]),
	FOREIGN KEY ([Код проекта]) REFERENCES [Проекты] ([Код проекта]),
);
GO


SELECT * 
FROM [Поставщики]

SELECT *
FROM [Поставляемые детали]

SELECT *
FROM [Детали]

SELECT *
FROM [Требуемые детали]

SELECT *
FROM [Проекты]
