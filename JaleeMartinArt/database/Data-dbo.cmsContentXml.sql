
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 1 row to dbo.cmsContentXml...'
GO -- SQRIBE/GO;599a15
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsContentXml] ([nodeId],[xml]) VALUES (1056,N'<home id="1056" key="26012471-c90a-4989-abaf-36b9c15ae86e" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2018-11-05T14:18:43" updateDate="2018-11-05T14:23:51" nodeName="Home" urlName="home" path="-1,1056" isDoc="" nodeType="1053" creatorName="Richard Nader, Jr" writerName="Richard Nader, Jr" writerID="0" template="1055" nodeTypeAlias="home" isPublished="true" />');

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.cmsContentXml succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.cmsContentXml failed'
END
