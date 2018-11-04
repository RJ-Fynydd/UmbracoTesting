
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 2 rows to dbo.umbracoServer...'
GO -- SQRIBE/GO;599a15

SET IDENTITY_INSERT [dbo].[umbracoServer] ON
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoServer] ([id],[address],[computerName],[registeredDate],[lastNotifiedDate],[isActive],[isMaster]) VALUES (1,N'http://localhost:62774/umbraco',N'RJ-DESKTOP//LM/W3SVC/2/ROOT',CONVERT(datetime,'2018-11-04 01:18:49.287',121),CONVERT(datetime,'2018-11-04 01:36:49.580',121),0,0);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoServer] ([id],[address],[computerName],[registeredDate],[lastNotifiedDate],[isActive],[isMaster]) VALUES (2,N'http://jaleemartin.art:80/umbraco',N'RJ-DESKTOP//LM/W3SVC/1/ROOT',CONVERT(datetime,'2018-11-04 01:27:53.237',121),CONVERT(datetime,'2018-11-04 02:00:43.510',121),1,1);

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.umbracoServer succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.umbracoServer failed'
END

SET IDENTITY_INSERT [dbo].[umbracoServer] OFF
