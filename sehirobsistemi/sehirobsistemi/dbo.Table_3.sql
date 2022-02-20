CREATE TABLE [dbo].[yerler]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [yerler_isim] NVARCHAR(50) NULL, 
    [yerler_aciklama] NVARCHAR(500) NULL, 
    [yerler_puan] NCHAR(10) NULL, 
    [yerler_resim] NVARCHAR(150) NULL
)
