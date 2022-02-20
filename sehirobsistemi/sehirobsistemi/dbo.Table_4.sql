CREATE TABLE [dbo].[unluler]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [unlu_isim] NCHAR(10) NULL, 
    [unlu_aciklama] NVARCHAR(500) NULL, 
    [unlu_resim] NVARCHAR(250) NULL
)
