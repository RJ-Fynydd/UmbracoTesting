
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 3 rows to dbo.umbracoRelationType...'
GO -- SQRIBE/GO;599a15

SET IDENTITY_INSERT [dbo].[umbracoRelationType] ON
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoRelationType] ([id],[typeUniqueId],[dual],[parentObjectType],[childObjectType],[name],[alias]) VALUES (1,'4CBEB612-E689-3563-B755-BF3EDE295433',1,'C66BA18E-EAF3-4CFF-8A22-41B16D66A972','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',N'Relate Document On Copy',N'relateDocumentOnCopy');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoRelationType] ([id],[typeUniqueId],[dual],[parentObjectType],[childObjectType],[name],[alias]) VALUES (2,'0CC3507C-66AB-3091-8913-3D998148E423',0,'C66BA18E-EAF3-4CFF-8A22-41B16D66A972','C66BA18E-EAF3-4CFF-8A22-41B16D66A972',N'Relate Parent Document On Delete',N'relateParentDocumentOnDelete');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoRelationType] ([id],[typeUniqueId],[dual],[parentObjectType],[childObjectType],[name],[alias]) VALUES (3,'8307994F-FAF2-3844-BAB9-72D34514EDF2',0,'B796F64C-1F99-4FFB-B886-4BF4BC011A9C','B796F64C-1F99-4FFB-B886-4BF4BC011A9C',N'Relate Parent Media Folder On Delete',N'relateParentMediaFolderOnDelete');

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.umbracoRelationType succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.umbracoRelationType failed'
END

SET IDENTITY_INSERT [dbo].[umbracoRelationType] OFF
