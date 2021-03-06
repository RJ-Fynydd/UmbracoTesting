﻿
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 2 rows to dbo.cmsContentVersion...'
GO -- SQRIBE/GO;599a15

SET IDENTITY_INSERT [dbo].[cmsContentVersion] ON
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsContentVersion] ([id],[ContentId],[VersionId],[VersionDate]) VALUES (6,1067,'7942A777-D186-482A-9725-35B16D0F45F4',CONVERT(datetime,'2018-11-06 00:15:52.193',121));
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsContentVersion] ([id],[ContentId],[VersionId],[VersionDate]) VALUES (7,1068,'0C461F3F-7876-4AC2-BA44-5B199A256848',CONVERT(datetime,'2018-11-06 00:18:25.123',121));

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.cmsContentVersion succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.cmsContentVersion failed'
END

SET IDENTITY_INSERT [dbo].[cmsContentVersion] OFF
