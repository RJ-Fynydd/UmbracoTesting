
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 2 rows to dbo.umbracoUser...'
GO -- SQRIBE/GO;599a15

SET IDENTITY_INSERT [dbo].[umbracoUser] ON
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUser] ([id],[userDisabled],[userNoConsole],[userName],[userLogin],[userPassword],[passwordConfig],[userEmail],[userLanguage],[securityStampToken],[failedLoginAttempts],[lastLockoutDate],[lastPasswordChangeDate],[lastLoginDate],[emailConfirmedDate],[invitedDate],[createDate],[updateDate],[avatar],[tourData]) VALUES (0,0,0,N'Richard Nader, Jr',N'richard.nader@fynydd.com',N'mOS4t4Di8Of/Uu1Jfoxlyg==am7p48wNzFUTv6REMGRD6QNd65/DVIhuHjllxdADYSE=',N'{"hashAlgorithm":"HMACSHA256"}',N'richard.nader@fynydd.com',N'en-US',N'5171518e-10cc-4b4b-8115-ebf972f3a553',NULL,CONVERT(datetime,NULL,121),CONVERT(datetime,'2018-11-04 01:18:29.917',121),CONVERT(datetime,'2018-11-06 00:00:12.040',121),CONVERT(datetime,NULL,121),CONVERT(datetime,NULL,121),CONVERT(datetime,'2018-11-04 01:18:29.563',121),CONVERT(datetime,'2018-11-06 00:00:12.043',121),NULL,N'[{"alias":"umbIntroIntroduction","completed":false,"disabled":true}]');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoUser] ([id],[userDisabled],[userNoConsole],[userName],[userLogin],[userPassword],[passwordConfig],[userEmail],[userLanguage],[securityStampToken],[failedLoginAttempts],[lastLockoutDate],[lastPasswordChangeDate],[lastLoginDate],[emailConfirmedDate],[invitedDate],[createDate],[updateDate],[avatar],[tourData]) VALUES (1,0,0,N'Jalee Martin',N'jamart12@svsu.edu',N'CSJFzkTn39OLHsGc+c3Vqg==kbyheFutG8+m/dmLDpwDhqQNH7SKywpPsBHIvpiZi8M=',N'{"hashAlgorithm":"HMACSHA256"}',N'jamart12@svsu.edu',N'en-US',N'6892711c-8cc4-47f4-a344-cc6788692c1b',0,CONVERT(datetime,NULL,121),CONVERT(datetime,'2018-11-04 01:31:23.317',121),CONVERT(datetime,'2018-11-04 01:31:43.000',121),CONVERT(datetime,NULL,121),CONVERT(datetime,NULL,121),CONVERT(datetime,'2018-11-04 01:20:14.133',121),CONVERT(datetime,'2018-11-04 01:31:43.000',121),NULL,NULL);

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.umbracoUser succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.umbracoUser failed'
END

SET IDENTITY_INSERT [dbo].[umbracoUser] OFF
