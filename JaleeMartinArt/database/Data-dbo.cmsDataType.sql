
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 24 rows to dbo.cmsDataType...'
GO -- SQRIBE/GO;599a15

SET IDENTITY_INSERT [dbo].[cmsDataType] ON
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (-28,-97,N'Umbraco.ListView',N'Nvarchar');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (-27,-96,N'Umbraco.ListView',N'Nvarchar');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (-26,-95,N'Umbraco.ListView',N'Nvarchar');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (1,-49,N'Umbraco.TrueFalse',N'Integer');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (2,-51,N'Umbraco.Integer',N'Integer');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (3,-87,N'Umbraco.TinyMCEv3',N'Ntext');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (4,-88,N'Umbraco.Textbox',N'Nvarchar');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (5,-89,N'Umbraco.TextboxMultiple',N'Ntext');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (6,-90,N'Umbraco.UploadField',N'Nvarchar');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (7,-92,N'Umbraco.NoEdit',N'Nvarchar');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (8,-36,N'Umbraco.DateTime',N'Date');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (9,-37,N'Umbraco.ColorPickerAlias',N'Nvarchar');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (11,-39,N'Umbraco.DropDownMultiple',N'Nvarchar');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (12,-40,N'Umbraco.RadioButtonList',N'Nvarchar');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (13,-41,N'Umbraco.Date',N'Date');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (14,-42,N'Umbraco.DropDown',N'Integer');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (15,-43,N'Umbraco.CheckBoxList',N'Nvarchar');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (22,1041,N'Umbraco.Tags',N'Ntext');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (24,1043,N'Umbraco.ImageCropper',N'Ntext');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (26,1046,N'Umbraco.ContentPicker2',N'Nvarchar');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (27,1047,N'Umbraco.MemberPicker2',N'Nvarchar');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (28,1048,N'Umbraco.MediaPicker2',N'Ntext');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (29,1049,N'Umbraco.MediaPicker2',N'Ntext');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataType] ([pk],[nodeId],[propertyEditorAlias],[dbType]) VALUES (30,1050,N'Umbraco.RelatedLinks2',N'Ntext');

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.cmsDataType succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.cmsDataType failed'
END

SET IDENTITY_INSERT [dbo].[cmsDataType] OFF
