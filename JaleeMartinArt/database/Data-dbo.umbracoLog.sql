
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 11 rows to dbo.umbracoLog...'
GO -- SQRIBE/GO;599a15

SET IDENTITY_INSERT [dbo].[umbracoLog] ON
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (1,0,0,CONVERT(datetime,'2018-11-04 12:41:22.963',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (2,0,1051,CONVERT(datetime,'2018-11-04 12:41:31.583',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (3,0,0,CONVERT(datetime,'2018-11-04 12:42:17.177',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (4,0,1053,CONVERT(datetime,'2018-11-04 12:42:17.247',121),N'Save',N'Save ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (5,0,0,CONVERT(datetime,'2018-11-04 12:42:24.713',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (6,0,1051,CONVERT(datetime,'2018-11-04 12:42:39.180',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (7,0,1052,CONVERT(datetime,'2018-11-04 12:43:47.247',121),N'Delete',N'Delete Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (8,0,1054,CONVERT(datetime,'2018-11-04 12:45:24.943',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (9,0,1054,CONVERT(datetime,'2018-11-04 12:45:28.533',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (10,0,1054,CONVERT(datetime,'2018-11-04 12:45:59.760',121),N'Delete',N'Delete Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (11,0,0,CONVERT(datetime,'2018-11-04 12:46:11.667',121),N'Save',N'Save Template performed by user');

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.umbracoLog succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.umbracoLog failed'
END

SET IDENTITY_INSERT [dbo].[umbracoLog] OFF
