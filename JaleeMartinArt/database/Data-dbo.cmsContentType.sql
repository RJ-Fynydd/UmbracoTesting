
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 5 rows to dbo.cmsContentType...'
GO -- SQRIBE/GO;599a15

SET IDENTITY_INSERT [dbo].[cmsContentType] ON
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[allowAtRoot]) VALUES (531,1044,N'Member',N'icon-user',N'icon-user',NULL,0,0);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[allowAtRoot]) VALUES (532,1031,N'Folder',N'icon-folder',N'icon-folder',NULL,0,1);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[allowAtRoot]) VALUES (533,1032,N'Image',N'icon-picture',N'icon-picture',NULL,0,1);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[allowAtRoot]) VALUES (534,1033,N'File',N'icon-document',N'icon-document',NULL,0,1);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsContentType] ([pk],[nodeId],[alias],[icon],[thumbnail],[description],[isContainer],[allowAtRoot]) VALUES (535,1053,N'home',N'icon-home color-blue',N'folder.png',NULL,0,0);

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.cmsContentType succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.cmsContentType failed'
END

SET IDENTITY_INSERT [dbo].[cmsContentType] OFF
