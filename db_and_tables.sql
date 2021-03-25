CREATE DATABASE Factory;
GO

USE Factory;
GO

CREATE TABLE [������]
(
	[��� ������]	[varchar](50)		PRIMARY KEY,
	[����]			[varchar](50),
	[��������]		[varchar](50),
);
GO

CREATE TABLE [����������]
(
	[��� ����������]		[varchar](50)		PRIMARY KEY,
	[�������� ����������]	[varchar](50),
	[�����]					[varchar](50),
);
GO

CREATE TABLE [�������]
(
	[��� �������]		[varchar](50)		PRIMARY KEY,
	[�������� �������]	[varchar](50),
	[�����]				[varchar](50),
);
GO

CREATE TABLE [������������ ������]
(
	[��� ����������]	[varchar](50)		NOT NULL,
	[��� ������]		[varchar](50)		NOT NULL,
	[����������]		[int]				NOT NULL,

	PRIMARY KEY ([��� ����������], [��� ������]),
	FOREIGN KEY ([��� ������]) REFERENCES [������] ([��� ������]),
	FOREIGN KEY ([��� ����������]) REFERENCES [����������] ([��� ����������]),
);
GO

CREATE TABLE [��������� ������]
(
	[��� ������]	[varchar](50)	NOT NULL,
	[��� �������]	[varchar](50)	NOT NULL,
	[����������]	[int]			NOT NULL,

	PRIMARY KEY ([��� �������], [��� ������]),
	FOREIGN KEY ([��� ������]) REFERENCES [������] ([��� ������]),
	FOREIGN KEY ([��� �������]) REFERENCES [�������] ([��� �������]),
);
GO


SELECT * 
FROM [����������]

SELECT *
FROM [������������ ������]

SELECT *
FROM [������]

SELECT *
FROM [��������� ������]

SELECT *
FROM [�������]
