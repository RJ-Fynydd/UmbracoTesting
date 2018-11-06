
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 8 rows to dbo.cmsPropertyData...'
GO -- SQRIBE/GO;599a15

SET IDENTITY_INSERT [dbo].[cmsPropertyData] ON
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyData] ([id],[contentNodeId],[versionId],[propertytypeid],[dataInt],[dataDecimal],[dataDate],[dataNvarchar],[dataNtext]) VALUES (4,1067,'7942A777-D186-482A-9725-35B16D0F45F4',41,NULL,NULL,CONVERT(datetime,NULL,121),N'Jalee Martin - Artist',NULL);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyData] ([id],[contentNodeId],[versionId],[propertytypeid],[dataInt],[dataDecimal],[dataDate],[dataNvarchar],[dataNtext]) VALUES (5,1067,'7942A777-D186-482A-9725-35B16D0F45F4',43,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[]');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyData] ([id],[contentNodeId],[versionId],[propertytypeid],[dataInt],[dataDecimal],[dataDate],[dataNvarchar],[dataNtext]) VALUES (6,1067,'7942A777-D186-482A-9725-35B16D0F45F4',44,NULL,NULL,CONVERT(datetime,NULL,121),N'Richard Nader, Jr.',NULL);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyData] ([id],[contentNodeId],[versionId],[propertytypeid],[dataInt],[dataDecimal],[dataDate],[dataNvarchar],[dataNtext]) VALUES (7,1067,'7942A777-D186-482A-9725-35B16D0F45F4',42,NULL,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyData] ([id],[contentNodeId],[versionId],[propertytypeid],[dataInt],[dataDecimal],[dataDate],[dataNvarchar],[dataNtext]) VALUES (8,1068,'0C461F3F-7876-4AC2-BA44-5B199A256848',41,NULL,NULL,CONVERT(datetime,NULL,121),N'Jalee Martin - Artist | About',NULL);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyData] ([id],[contentNodeId],[versionId],[propertytypeid],[dataInt],[dataDecimal],[dataDate],[dataNvarchar],[dataNtext]) VALUES (9,1068,'0C461F3F-7876-4AC2-BA44-5B199A256848',43,NULL,NULL,CONVERT(datetime,NULL,121),NULL,N'[]');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyData] ([id],[contentNodeId],[versionId],[propertytypeid],[dataInt],[dataDecimal],[dataDate],[dataNvarchar],[dataNtext]) VALUES (10,1068,'0C461F3F-7876-4AC2-BA44-5B199A256848',44,NULL,NULL,CONVERT(datetime,NULL,121),NULL,NULL);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyData] ([id],[contentNodeId],[versionId],[propertytypeid],[dataInt],[dataDecimal],[dataDate],[dataNvarchar],[dataNtext]) VALUES (11,1068,'0C461F3F-7876-4AC2-BA44-5B199A256848',42,NULL,NULL,CONVERT(datetime,NULL,121),NULL,NULL);

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.cmsPropertyData succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.cmsPropertyData failed'
END

SET IDENTITY_INSERT [dbo].[cmsPropertyData] OFF
