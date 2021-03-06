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
PRINT N'Add 1 row to dbo.umbracoMigration...'
GO -- SQRIBE/GO;599a15

SET IDENTITY_INSERT [dbo].[umbracoMigration] ON
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoMigration] ([id],[name],[createDate],[version]) VALUES (1,N'Umbraco',CONVERT(datetime,'2018-11-04 01:18:29.643',121),N'7.12.3');

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.umbracoMigration succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.umbracoMigration failed'
END

SET IDENTITY_INSERT [dbo].[umbracoMigration] OFF
