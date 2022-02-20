CREATE TABLE [dbo].[urunler]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [urun_isim] NVARCHAR(50) NULL, 
    [urun_aciklama] NVARCHAR(500) NULL, 
    [urun_puan] SMALLINT NULL, 
    [urun_fiyat] FLOAT NULL, 
    [urun_resim] NVARCHAR(150) NULL
)
