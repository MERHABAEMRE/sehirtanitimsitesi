CREATE TABLE [dbo].[yorum]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [icerik] NVARCHAR(500) NULL, 
    [tarih] SMALLDATETIME NULL DEFAULT getDate(), 
    [sayi] TINYINT NULL DEFAULT 3, 
    [urun_id] INT NULL, 
    [kullanici_id] INT NULL, 
    [begeni] INT NULL DEFAULT 1, 
    CONSTRAINT [FK_yorum_kullanici] FOREIGN KEY ([kullanici_id]) REFERENCES [kullanici]([Id]), 
    CONSTRAINT [FK_yorum_urunler] FOREIGN KEY ([urun_id]) REFERENCES [urunler]([Id])
)
