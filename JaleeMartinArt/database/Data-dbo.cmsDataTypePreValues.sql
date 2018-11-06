
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 14 rows to dbo.cmsDataTypePreValues...'
GO -- SQRIBE/GO;599a15

SET IDENTITY_INSERT [dbo].[cmsDataTypePreValues] ON
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataTypePreValues] ([id],[datatypeNodeId],[value],[sortorder],[alias]) VALUES (-9,-96,N'[{"alias":"updateDate","header":"Last edited","isSystem":1},{"alias":"owner","header":"Updated by","isSystem":1}]',5,N'includeProperties');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataTypePreValues] ([id],[datatypeNodeId],[value],[sortorder],[alias]) VALUES (-8,-96,N'[{"name": "Grid","path": "views/propertyeditors/listview/layouts/grid/grid.html", "icon": "icon-thumbnails-small", "isSystem": 1, "selected": true},{"name": "List","path": "views/propertyeditors/listview/layouts/list/list.html","icon": "icon-list", "isSystem": 1,"selected": true}]',4,N'layouts');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataTypePreValues] ([id],[datatypeNodeId],[value],[sortorder],[alias]) VALUES (-7,-96,N'desc',3,N'orderDirection');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataTypePreValues] ([id],[datatypeNodeId],[value],[sortorder],[alias]) VALUES (-6,-96,N'updateDate',2,N'orderBy');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataTypePreValues] ([id],[datatypeNodeId],[value],[sortorder],[alias]) VALUES (-5,-96,N'100',1,N'pageSize');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataTypePreValues] ([id],[datatypeNodeId],[value],[sortorder],[alias]) VALUES (-4,-97,N'[{"alias":"username","isSystem":1},{"alias":"email","isSystem":1},{"alias":"updateDate","header":"Last edited","isSystem":1}]',4,N'includeProperties');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataTypePreValues] ([id],[datatypeNodeId],[value],[sortorder],[alias]) VALUES (-3,-97,N'asc',3,N'orderDirection');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataTypePreValues] ([id],[datatypeNodeId],[value],[sortorder],[alias]) VALUES (-2,-97,N'username',2,N'orderBy');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataTypePreValues] ([id],[datatypeNodeId],[value],[sortorder],[alias]) VALUES (-1,-97,N'10',1,N'pageSize');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataTypePreValues] ([id],[datatypeNodeId],[value],[sortorder],[alias]) VALUES (4,1041,N'default',0,N'group');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataTypePreValues] ([id],[datatypeNodeId],[value],[sortorder],[alias]) VALUES (5,1041,N'Json',0,N'storageType');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataTypePreValues] ([id],[datatypeNodeId],[value],[sortorder],[alias]) VALUES (6,1049,N'1',0,N'multiPicker');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataTypePreValues] ([id],[datatypeNodeId],[value],[sortorder],[alias]) VALUES (7,-87,N'{
  "toolbar": [
    "code",
    "styleselect",
    "bold",
    "italic",
    "alignleft",
    "aligncenter",
    "alignright",
    "bullist",
    "numlist",
    "outdent",
    "indent",
    "link",
    "umbmediapicker",
    "umbmacro",
    "umbembeddialog"
  ],
  "stylesheets": [],
  "dimensions": {
    "height": 500
  },
  "maxImageSize": 500
}',1,N'editor');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDataTypePreValues] ([id],[datatypeNodeId],[value],[sortorder],[alias]) VALUES (8,-87,N'0',2,N'hideLabel');

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.cmsDataTypePreValues succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.cmsDataTypePreValues failed'
END

SET IDENTITY_INSERT [dbo].[cmsDataTypePreValues] OFF
