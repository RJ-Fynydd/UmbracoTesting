
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 7 rows to dbo.umbracoUser2UserGroup...'
GO -- SQRIBE/GO;599a15
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUser2UserGroup] ([userId],[userGroupId]) VALUES (0,1);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUser2UserGroup] ([userId],[userGroupId]) VALUES (0,5);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUser2UserGroup] ([userId],[userGroupId]) VALUES (1,1);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUser2UserGroup] ([userId],[userGroupId]) VALUES (1,2);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUser2UserGroup] ([userId],[userGroupId]) VALUES (1,3);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUser2UserGroup] ([userId],[userGroupId]) VALUES (1,4);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUser2UserGroup] ([userId],[userGroupId]) VALUES (1,5);

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.umbracoUser2UserGroup succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.umbracoUser2UserGroup failed'
END
