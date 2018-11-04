
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 12 rows to dbo.umbracoUserGroup2App...'
GO -- SQRIBE/GO;599a15
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (1,N'content');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (1,N'developer');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (1,N'forms');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (1,N'media');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (1,N'member');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (1,N'settings');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (1,N'users');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (2,N'content');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (3,N'content');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (3,N'forms');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (3,N'media');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUserGroup2App] ([userGroupId],[app]) VALUES (4,N'translation');

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.umbracoUserGroup2App succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.umbracoUserGroup2App failed'
END
