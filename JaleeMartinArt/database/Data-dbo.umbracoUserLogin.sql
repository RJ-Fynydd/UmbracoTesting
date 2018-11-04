
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 6 rows to dbo.umbracoUserLogin...'
GO -- SQRIBE/GO;599a15
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUserLogin] ([sessionId],[userId],[loggedInUtc],[lastValidatedUtc],[loggedOutUtc],[ipAddress]) VALUES ('A0279B64-6D3D-4B59-BECC-0A00690CBF10',0,CONVERT(datetime,'2018-11-04 06:33:47.100',121),CONVERT(datetime,'2018-11-04 06:33:47.100',121),CONVERT(datetime,NULL,121),N'127.0.0.1');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUserLogin] ([sessionId],[userId],[loggedInUtc],[lastValidatedUtc],[loggedOutUtc],[ipAddress]) VALUES ('9949DD74-007D-47CD-8629-2AE094E00DA0',0,CONVERT(datetime,'2018-11-04 06:30:57.403',121),CONVERT(datetime,'2018-11-04 06:30:57.403',121),CONVERT(datetime,'2018-11-04 06:31:32.437',121),N'127.0.0.1');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUserLogin] ([sessionId],[userId],[loggedInUtc],[lastValidatedUtc],[loggedOutUtc],[ipAddress]) VALUES ('8BDC0E32-3063-4CF4-92F9-403E2E639741',1,CONVERT(datetime,'2018-11-04 06:31:43.007',121),CONVERT(datetime,'2018-11-04 06:31:43.007',121),CONVERT(datetime,NULL,121),N'127.0.0.1');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUserLogin] ([sessionId],[userId],[loggedInUtc],[lastValidatedUtc],[loggedOutUtc],[ipAddress]) VALUES ('80EEA27D-1B20-4DFC-8B79-55E08FA8A028',0,CONVERT(datetime,'2018-11-04 05:18:31.110',121),CONVERT(datetime,'2018-11-04 05:23:31.573',121),CONVERT(datetime,NULL,121),N'::1');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUserLogin] ([sessionId],[userId],[loggedInUtc],[lastValidatedUtc],[loggedOutUtc],[ipAddress]) VALUES ('BC942932-6DE0-47B6-89E4-75F3641689CB',0,CONVERT(datetime,'2018-11-04 17:40:29.083',121),CONVERT(datetime,'2018-11-04 17:46:14.093',121),CONVERT(datetime,NULL,121),N'127.0.0.1');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUserLogin] ([sessionId],[userId],[loggedInUtc],[lastValidatedUtc],[loggedOutUtc],[ipAddress]) VALUES ('09E65FD4-ACFA-4FC4-89B1-FD43807469BD',0,CONVERT(datetime,'2018-11-04 07:44:37.760',121),CONVERT(datetime,'2018-11-04 07:44:37.760',121),CONVERT(datetime,NULL,121),N'127.0.0.1');

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.umbracoUserLogin succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.umbracoUserLogin failed'
END
