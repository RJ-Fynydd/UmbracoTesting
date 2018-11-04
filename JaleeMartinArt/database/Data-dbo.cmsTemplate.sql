
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 2 rows to dbo.cmsTemplate...'
GO -- SQRIBE/GO;599a15

SET IDENTITY_INSERT [dbo].[cmsTemplate] ON
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsTemplate] ([pk],[nodeId],[alias],[design]) VALUES (1,1051,N'WebBase',N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage
@{
	Layout = null;
}

@* the fun starts here *@

@RenderBody()');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsTemplate] ([pk],[nodeId],[alias],[design]) VALUES (4,1055,N'Home',N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage
@{
	Layout = "WebBase.cshtml";
}

@* the fun starts here *@

');

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.cmsTemplate succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.cmsTemplate failed'
END

SET IDENTITY_INSERT [dbo].[cmsTemplate] OFF
