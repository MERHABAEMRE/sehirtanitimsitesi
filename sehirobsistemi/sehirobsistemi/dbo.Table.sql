CREATE TABLE [dbo].[kullanici]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [isim] NVARCHAR(50) NULL, 
    [email] NVARCHAR(50) NULL, 
    [telefon] NVARCHAR(15) NULL, 
    [adres] NVARCHAR(250) NULL 
)
