
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 3 rows to dbo.cmsTemplate...'
GO -- SQRIBE/GO;599a15

SET IDENTITY_INSERT [dbo].[cmsTemplate] ON
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsTemplate] ([pk],[nodeId],[alias],[design]) VALUES (5,1058,N'SiteBase',N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage<ContentModels.SiteBase>
@using ContentModels = Umbraco.Web.PublishedContentModels;
@{
	Layout = null;
}

<html>
    <head>
        <meta charset="utf-8">
        <title>@Umbraco.Field("metaTitle")</title>
        <meta name="author" content="@Umbraco.Field("metaAuthor")">
        <meta name="description" content="@Umbraco.Field("metaDescription")">
        <meta name="keywords" content="@Umbraco.Field("metaTags")">
    </head>
    
    
    <body>
        <div>
            <h1 style="text-align: center;">@Umbraco.Field("pageName")</h1>
        </div>
        @RenderBody()
        
    </body>
    
    
</html>');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsTemplate] ([pk],[nodeId],[alias],[design]) VALUES (7,1062,N'Home',N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage<ContentModels.Home>
@using ContentModels = Umbraco.Web.PublishedContentModels;
@{
	Layout = "SiteBase.cshtml";
}

');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsTemplate] ([pk],[nodeId],[alias],[design]) VALUES (8,1064,N'About',N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage<ContentModels.About>
@using ContentModels = Umbraco.Web.PublishedContentModels;
@{
	Layout = "SiteBase.cshtml";
}');

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
