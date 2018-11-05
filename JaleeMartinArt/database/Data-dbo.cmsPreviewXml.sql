
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
INSERT INTO [dbo].[cmsPreviewXml] ([nodeId],[versionId],[timestamp],[xml]) VALUES (1056,'B380CD3D-E090-43B4-AC2D-59DC1348C4F6',CONVERT(datetime,'2018-11-05 14:23:51.463',121),N'<home id="1056" key="26012471-c90a-4989-abaf-36b9c15ae86e" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2018-11-05T14:18:43" updateDate="2018-11-05T14:23:51" nodeName="Home" urlName="home" path="-1,1056" isDoc="" nodeType="1053" creatorName="Richard Nader, Jr" writerName="Richard Nader, Jr" writerID="0" template="1055" nodeTypeAlias="home" isPublished="true" />');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsPreviewXml] ([nodeId],[versionId],[timestamp],[xml]) VALUES (1056,'03589414-A591-4D4F-B768-D173CB6BB772',CONVERT(datetime,'2018-11-05 14:18:43.470',121),N'<home id="1056" key="26012471-c90a-4989-abaf-36b9c15ae86e" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2018-11-05T14:18:43" updateDate="2018-11-05T14:18:43" nodeName="Home" urlName="home" path="-1,1056" isDoc="" nodeType="1053" creatorName="Richard Nader, Jr" writerName="Richard Nader, Jr" writerID="0" template="0" nodeTypeAlias="home" isPublished="true" />');

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
