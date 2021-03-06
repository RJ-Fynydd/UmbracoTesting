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
PRINT N'Add 2 rows to dbo.cmsContent...'
GO -- SQRIBE/GO;599a15

SET IDENTITY_INSERT [dbo].[cmsContent] ON
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsContent] ([pk],[nodeId],[contentType]) VALUES (2,1067,1063);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsContent] ([pk],[nodeId],[contentType]) VALUES (3,1068,1065);

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.cmsContent succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.cmsContent failed'
END

SET IDENTITY_INSERT [dbo].[cmsContent] OFF
