
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 2 rows to dbo.cmsPreviewXml...'
GO -- SQRIBE/GO;599a15
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPreviewXml] ([nodeId],[versionId],[timestamp],[xml]) VALUES (1067,'7942A777-D186-482A-9725-35B16D0F45F4',CONVERT(datetime,'2018-11-06 00:15:52.223',121),N'<home id="1067" key="bfeb3a2f-a77c-4dd9-a6f2-ea56e4e59fb4" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2018-11-06T00:15:52" updateDate="2018-11-06T00:15:52" nodeName="Home" urlName="home" path="-1,1067" isDoc="" nodeType="1063" creatorName="Richard Nader, Jr" writerName="Richard Nader, Jr" writerID="0" template="1062" nodeTypeAlias="home" isPublished="true"><metaTitle><![CDATA[Jalee Martin - Artist]]></metaTitle><metaTags><![CDATA[[]]]></metaTags><metaAuthor><![CDATA[Richard Nader, Jr.]]></metaAuthor></home>');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPreviewXml] ([nodeId],[versionId],[timestamp],[xml]) VALUES (1068,'0C461F3F-7876-4AC2-BA44-5B199A256848',CONVERT(datetime,'2018-11-06 00:18:25.143',121),N'<about id="1068" key="2c08cfca-6cba-4b52-a612-175dba6b574d" parentID="1067" level="2" creatorID="0" sortOrder="0" createDate="2018-11-06T00:18:25" updateDate="2018-11-06T00:18:25" nodeName="About" urlName="about" path="-1,1067,1068" isDoc="" nodeType="1065" creatorName="Richard Nader, Jr" writerName="Richard Nader, Jr" writerID="0" template="1064" nodeTypeAlias="about" isPublished="true"><metaTitle><![CDATA[Jalee Martin - Artist | About]]></metaTitle><metaTags><![CDATA[[]]]></metaTags></about>');

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.cmsPreviewXml succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.cmsPreviewXml failed'
END
