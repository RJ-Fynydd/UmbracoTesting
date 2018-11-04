
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 18 rows to dbo.cmsPropertyType...'
GO -- SQRIBE/GO;599a15

SET IDENTITY_INSERT [dbo].[cmsPropertyType] ON
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[UniqueID]) VALUES (6,1043,1032,3,N'umbracoFile',N'Upload image',0,0,NULL,NULL,'00000006-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[UniqueID]) VALUES (7,-92,1032,3,N'umbracoWidth',N'Width',0,0,NULL,NULL,'00000007-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[UniqueID]) VALUES (8,-92,1032,3,N'umbracoHeight',N'Height',0,0,NULL,NULL,'00000008-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[UniqueID]) VALUES (9,-92,1032,3,N'umbracoBytes',N'Size',0,0,NULL,NULL,'00000009-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[UniqueID]) VALUES (10,-92,1032,3,N'umbracoExtension',N'Type',0,0,NULL,NULL,'0000000A-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[UniqueID]) VALUES (24,-90,1033,4,N'umbracoFile',N'Upload file',0,0,NULL,NULL,'00000018-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[UniqueID]) VALUES (25,-92,1033,4,N'umbracoExtension',N'Type',0,0,NULL,NULL,'00000019-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[UniqueID]) VALUES (26,-92,1033,4,N'umbracoBytes',N'Size',0,0,NULL,NULL,'0000001A-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[UniqueID]) VALUES (27,-96,1031,5,N'contents',N'Contents:',0,0,NULL,NULL,'0000001B-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[UniqueID]) VALUES (28,-89,1044,11,N'umbracoMemberComments',N'Comments',0,0,NULL,NULL,'0000001C-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[UniqueID]) VALUES (29,-92,1044,11,N'umbracoMemberFailedPasswordAttempts',N'Failed Password Attempts',1,0,NULL,NULL,'0000001D-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[UniqueID]) VALUES (30,-49,1044,11,N'umbracoMemberApproved',N'Is Approved',2,0,NULL,NULL,'0000001E-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[UniqueID]) VALUES (31,-49,1044,11,N'umbracoMemberLockedOut',N'Is Locked Out',3,0,NULL,NULL,'0000001F-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[UniqueID]) VALUES (32,-92,1044,11,N'umbracoMemberLastLockoutDate',N'Last Lockout Date',4,0,NULL,NULL,'00000020-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[UniqueID]) VALUES (33,-92,1044,11,N'umbracoMemberLastLogin',N'Last Login Date',5,0,NULL,NULL,'00000021-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[UniqueID]) VALUES (34,-92,1044,11,N'umbracoMemberLastPasswordChangeDate',N'Last Password Change Date',6,0,NULL,NULL,'00000022-0000-0000-0000-000000000000');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[UniqueID]) VALUES (35,-92,1044,NULL,N'umbracoMemberPasswordRetrievalAnswer',N'Password Answer',0,0,NULL,NULL,'2C7A66A4-C6BF-400D-A7B7-1F0B5553D533');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPropertyType] ([id],[dataTypeId],[contentTypeId],[propertyTypeGroupId],[Alias],[Name],[sortOrder],[mandatory],[validationRegExp],[Description],[UniqueID]) VALUES (36,-92,1044,NULL,N'umbracoMemberPasswordRetrievalQuestion',N'Password Question',1,0,NULL,NULL,'E3FCB192-3015-4463-8D7E-158D094A0584');

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.cmsPropertyType succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.cmsPropertyType failed'
END

SET IDENTITY_INSERT [dbo].[cmsPropertyType] OFF
