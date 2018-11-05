
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 29 rows to dbo.umbracoAudit...'
GO -- SQRIBE/GO;599a15

SET IDENTITY_INSERT [dbo].[umbracoAudit] ON
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (1,0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'::1',CONVERT(datetime,'2018-11-04 05:20:14.160',121),1,N'User "Jalee Martin" <jamart12@svsu.edu>',N'umbraco/user/save',N'updating SessionTimeout, SecurityStamp, CreateDate, UpdateDate, Id, HasIdentity');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (2,0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'::1',CONVERT(datetime,'2018-11-04 05:20:14.200',121),1,N'User "Jalee Martin" <jamart12@svsu.edu>',N'umbraco/user/save',N'updating LastPasswordChangeDate, RawPasswordValue, SecurityStamp, UpdateDate');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (3,0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'::1',CONVERT(datetime,'2018-11-04 05:20:14.217',121),1,N'User "Jalee Martin" <jamart12@svsu.edu>',N'umbraco/user/save',N'updating Key, IsApproved, Groups, UpdateDate; groups assigned: admin, writer, editor, translator, sensitiveData');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (4,0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'::1',CONVERT(datetime,'2018-11-04 05:23:31.627',121),1,N'User "Jalee Martin" <jamart12@svsu.edu>',N'umbraco/user/save',N'updating LastPasswordChangeDate, RawPasswordValue, SecurityStamp, UpdateDate');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (5,0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'::1',CONVERT(datetime,'2018-11-04 05:23:31.633',121),1,N'User "Jalee Martin" <jamart12@svsu.edu>',N'umbraco/user/password/change',N'password change');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (6,0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'::1',CONVERT(datetime,'2018-11-04 05:23:31.643',121),1,N'User "Jalee Martin" <jamart12@svsu.edu>',N'umbraco/user/save',N'updating Key, Groups, UpdateDate; groups assigned: admin, writer, editor, translator, sensitiveData');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (7,0,N'User "SYSTEM" ',N'127.0.0.1',CONVERT(datetime,'2018-11-04 06:30:38.147',121),1,N'User "Jalee Martin" <jamart12@svsu.edu>',N'umbraco/user/save',N'updating FailedPasswordAttempts, UpdateDate');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (8,0,N'User "SYSTEM" ',N'127.0.0.1',CONVERT(datetime,'2018-11-04 06:30:57.150',121),0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (9,0,N'User "SYSTEM" ',N'127.0.0.1',CONVERT(datetime,'2018-11-04 06:30:57.153',121),0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (10,0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'127.0.0.1',CONVERT(datetime,'2018-11-04 06:31:23.323',121),1,N'User "Jalee Martin" <jamart12@svsu.edu>',N'umbraco/user/save',N'updating LastPasswordChangeDate, RawPasswordValue, SecurityStamp, UpdateDate');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (11,0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'127.0.0.1',CONVERT(datetime,'2018-11-04 06:31:23.327',121),1,N'User "Jalee Martin" <jamart12@svsu.edu>',N'umbraco/user/password/change',N'password change');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (12,0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'127.0.0.1',CONVERT(datetime,'2018-11-04 06:31:23.347',121),1,N'User "Jalee Martin" <jamart12@svsu.edu>',N'umbraco/user/save',N'updating Key, Groups, UpdateDate; groups assigned: admin, writer, editor, translator, sensitiveData');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (13,0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'127.0.0.1',CONVERT(datetime,'2018-11-04 06:31:32.430',121),0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (14,0,N'User "SYSTEM" ',N'127.0.0.1',CONVERT(datetime,'2018-11-04 06:31:42.997',121),1,N'User "Jalee Martin" <jamart12@svsu.edu>',N'umbraco/user/save',N'updating FailedPasswordAttempts, UpdateDate');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (15,0,N'User "SYSTEM" ',N'127.0.0.1',CONVERT(datetime,'2018-11-04 06:31:43.000',121),1,N'User "Jalee Martin" <jamart12@svsu.edu>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (16,0,N'User "SYSTEM" ',N'127.0.0.1',CONVERT(datetime,'2018-11-04 06:31:43.007',121),1,N'User "Jalee Martin" <jamart12@svsu.edu>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (17,0,N'User "SYSTEM" ',N'127.0.0.1',CONVERT(datetime,'2018-11-04 06:33:46.853',121),0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (18,0,N'User "SYSTEM" ',N'127.0.0.1',CONVERT(datetime,'2018-11-04 06:33:46.873',121),0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (19,0,N'User "SYSTEM" ',N'127.0.0.1',CONVERT(datetime,'2018-11-04 07:44:37.393',121),0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (20,0,N'User "SYSTEM" ',N'127.0.0.1',CONVERT(datetime,'2018-11-04 07:44:37.440',121),0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (21,0,N'User "SYSTEM" ',N'127.0.0.1',CONVERT(datetime,'2018-11-04 17:40:28.543',121),0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (22,0,N'User "SYSTEM" ',N'127.0.0.1',CONVERT(datetime,'2018-11-04 17:40:28.637',121),0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (23,0,N'User "SYSTEM" ',N'127.0.0.1',CONVERT(datetime,'2018-11-05 18:40:53.130',121),0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (24,0,N'User "SYSTEM" ',N'127.0.0.1',CONVERT(datetime,'2018-11-05 18:40:53.170',121),0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (25,0,N'User "SYSTEM" ',N'127.0.0.1',CONVERT(datetime,'2018-11-05 19:15:12.900',121),0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (26,0,N'User "SYSTEM" ',N'127.0.0.1',CONVERT(datetime,'2018-11-05 19:15:12.940',121),0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'umbraco/user/sign-in/login',N'login success');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (27,0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'127.0.0.1',CONVERT(datetime,'2018-11-05 19:15:45.257',121),0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'umbraco/user/sign-in/logout',N'logout success');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (28,0,N'User "SYSTEM" ',N'127.0.0.1',CONVERT(datetime,'2018-11-05 19:15:47.563',121),0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'umbraco/user/save',N'updating LastLoginDate, UpdateDate');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoAudit] ([id],[performingUserId],[performingDetails],[performingIp],[eventDateUtc],[affectedUserId],[affectedDetails],[eventType],[eventDetails]) VALUES (29,0,N'User "SYSTEM" ',N'127.0.0.1',CONVERT(datetime,'2018-11-05 19:15:47.563',121),0,N'User "Richard Nader, Jr" <richard.nader@fynydd.com>',N'umbraco/user/sign-in/login',N'login success');

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.umbracoAudit succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.umbracoAudit failed'
END

SET IDENTITY_INSERT [dbo].[umbracoAudit] OFF
