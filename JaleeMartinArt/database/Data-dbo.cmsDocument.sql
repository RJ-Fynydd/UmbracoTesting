
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 2 rows to dbo.cmsDocument...'
GO -- SQRIBE/GO;599a15
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDocument] ([nodeId],[published],[documentUser],[versionId],[text],[releaseDate],[expireDate],[updateDate],[templateId],[newest]) VALUES (1056,1,0,'B380CD3D-E090-43B4-AC2D-59DC1348C4F6',N'Home',CONVERT(datetime,NULL,121),CONVERT(datetime,NULL,121),CONVERT(datetime,'2018-11-05 14:23:51.447',121),1055,1);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsDocument] ([nodeId],[published],[documentUser],[versionId],[text],[releaseDate],[expireDate],[updateDate],[templateId],[newest]) VALUES (1056,0,0,'03589414-A591-4D4F-B768-D173CB6BB772',N'Home',CONVERT(datetime,NULL,121),CONVERT(datetime,NULL,121),CONVERT(datetime,'2018-11-05 14:18:43.433',121),NULL,0);

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.cmsDocument succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.cmsDocument failed'
END
