
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 69 rows to dbo.umbracoLog...'
GO -- SQRIBE/GO;599a15

SET IDENTITY_INSERT [dbo].[umbracoLog] ON
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (1,0,0,CONVERT(datetime,'2018-11-04 12:41:22.963',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (2,0,1051,CONVERT(datetime,'2018-11-04 12:41:31.583',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (3,0,0,CONVERT(datetime,'2018-11-04 12:42:17.177',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (4,0,1053,CONVERT(datetime,'2018-11-04 12:42:17.247',121),N'Save',N'Save ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (5,0,0,CONVERT(datetime,'2018-11-04 12:42:24.713',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (6,0,1051,CONVERT(datetime,'2018-11-04 12:42:39.180',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (7,0,1052,CONVERT(datetime,'2018-11-04 12:43:47.247',121),N'Delete',N'Delete Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (8,0,1054,CONVERT(datetime,'2018-11-04 12:45:24.943',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (9,0,1054,CONVERT(datetime,'2018-11-04 12:45:28.533',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (10,0,1054,CONVERT(datetime,'2018-11-04 12:45:59.760',121),N'Delete',N'Delete Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (11,0,0,CONVERT(datetime,'2018-11-04 12:46:11.667',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (12,0,0,CONVERT(datetime,'2018-11-05 14:18:43.487',121),N'Publish',N'Save and Publish performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (13,0,1051,CONVERT(datetime,'2018-11-05 14:23:09.563',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (14,0,1055,CONVERT(datetime,'2018-11-05 14:23:15.380',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (15,0,1053,CONVERT(datetime,'2018-11-05 14:23:42.897',121),N'Save',N'Save ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (16,0,1056,CONVERT(datetime,'2018-11-05 14:23:51.467',121),N'Publish',N'Save and Publish performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (17,0,1055,CONVERT(datetime,'2018-11-05 21:12:16.527',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (18,0,-87,CONVERT(datetime,'2018-11-05 21:35:24.540',121),N'Save',N'Save DataTypeDefinition performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (19,0,1053,CONVERT(datetime,'2018-11-05 21:35:51.953',121),N'Save',N'Save ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (20,0,1056,CONVERT(datetime,'2018-11-05 21:38:06.297',121),N'Save',N'Save Content performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (21,0,1056,CONVERT(datetime,'2018-11-05 21:41:27.830',121),N'Publish',N'Save and Publish performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (22,0,1051,CONVERT(datetime,'2018-11-05 23:25:42.633',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (23,0,1051,CONVERT(datetime,'2018-11-05 23:29:44.287',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (24,0,1057,CONVERT(datetime,'2018-11-05 23:31:28.603',121),N'Save',N'Save ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (25,0,1051,CONVERT(datetime,'2018-11-05 23:38:03.570',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (26,0,1057,CONVERT(datetime,'2018-11-05 23:39:22.047',121),N'Save',N'Save ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (27,0,-1,CONVERT(datetime,'2018-11-05 23:41:54.977',121),N'Delete',N'Delete Content of Types 1057 performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (28,0,1057,CONVERT(datetime,'2018-11-05 23:41:55.120',121),N'Delete',N'Delete ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (29,0,1056,CONVERT(datetime,'2018-11-05 23:42:01.547',121),N'UnPublish',N'UnPublish performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (30,0,1056,CONVERT(datetime,'2018-11-05 23:42:01.617',121),N'Delete',N'Delete Content performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (31,0,-1,CONVERT(datetime,'2018-11-05 23:42:01.617',121),N'Delete',N'Delete Content of Types 1053 performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (32,0,1053,CONVERT(datetime,'2018-11-05 23:42:01.630',121),N'Delete',N'Delete ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (33,0,1055,CONVERT(datetime,'2018-11-05 23:42:08.650',121),N'Delete',N'Delete Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (34,0,1051,CONVERT(datetime,'2018-11-05 23:42:11.763',121),N'Delete',N'Delete Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (35,0,0,CONVERT(datetime,'2018-11-06 00:00:59.923',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (36,0,1059,CONVERT(datetime,'2018-11-06 00:00:59.957',121),N'Save',N'Save ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (37,0,0,CONVERT(datetime,'2018-11-06 00:01:20.703',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (38,0,1061,CONVERT(datetime,'2018-11-06 00:01:20.733',121),N'Save',N'Save ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (39,0,1061,CONVERT(datetime,'2018-11-06 00:01:38.433',121),N'Save',N'Save ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (40,0,1059,CONVERT(datetime,'2018-11-06 00:02:16.187',121),N'Save',N'Save ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (41,0,1061,CONVERT(datetime,'2018-11-06 00:02:29.883',121),N'Save',N'Save ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (42,0,-1,CONVERT(datetime,'2018-11-06 00:03:11.747',121),N'Delete',N'Delete Content of Types 1061 performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (43,0,1061,CONVERT(datetime,'2018-11-06 00:03:11.807',121),N'Delete',N'Delete ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (44,0,1060,CONVERT(datetime,'2018-11-06 00:03:17.623',121),N'Delete',N'Delete Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (45,0,0,CONVERT(datetime,'2018-11-06 00:03:26.617',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (46,0,1063,CONVERT(datetime,'2018-11-06 00:03:26.663',121),N'Save',N'Save ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (47,0,0,CONVERT(datetime,'2018-11-06 00:03:45.447',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (48,0,1065,CONVERT(datetime,'2018-11-06 00:03:45.483',121),N'Save',N'Save ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (49,0,1063,CONVERT(datetime,'2018-11-06 00:03:51.177',121),N'Save',N'Save ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (50,0,0,CONVERT(datetime,'2018-11-06 00:06:28.247',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (51,0,1066,CONVERT(datetime,'2018-11-06 00:07:03.817',121),N'Delete',N'Delete Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (52,0,1062,CONVERT(datetime,'2018-11-06 00:07:21.227',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (53,0,1064,CONVERT(datetime,'2018-11-06 00:07:27.693',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (54,0,1058,CONVERT(datetime,'2018-11-06 00:07:51.920',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (55,0,1059,CONVERT(datetime,'2018-11-06 00:11:26.503',121),N'Save',N'Save ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (56,0,1058,CONVERT(datetime,'2018-11-06 00:13:20.363',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (57,0,1058,CONVERT(datetime,'2018-11-06 00:13:50.493',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (58,0,1059,CONVERT(datetime,'2018-11-06 00:14:20.610',121),N'Save',N'Save ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (59,0,1059,CONVERT(datetime,'2018-11-06 00:14:24.273',121),N'Save',N'Save ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (60,0,1058,CONVERT(datetime,'2018-11-06 00:14:42.440',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (61,0,1058,CONVERT(datetime,'2018-11-06 00:14:53.017',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (62,0,0,CONVERT(datetime,'2018-11-06 00:15:52.233',121),N'Publish',N'Save and Publish performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (63,0,1062,CONVERT(datetime,'2018-11-06 00:16:40.397',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (64,0,1059,CONVERT(datetime,'2018-11-06 00:17:46.130',121),N'Save',N'Save ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (65,0,1063,CONVERT(datetime,'2018-11-06 00:17:52.493',121),N'Save',N'Save ContentType performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (66,0,0,CONVERT(datetime,'2018-11-06 00:18:25.147',121),N'Publish',N'Save and Publish performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (67,0,1062,CONVERT(datetime,'2018-11-06 00:19:33.267',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (68,0,1058,CONVERT(datetime,'2018-11-06 00:20:08.577',121),N'Save',N'Save Template performed by user');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoLog] ([id],[userId],[NodeId],[Datestamp],[logHeader],[logComment]) VALUES (69,0,1058,CONVERT(datetime,'2018-11-06 00:20:55.577',121),N'Save',N'Save Template performed by user');

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.umbracoLog succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.umbracoLog failed'
END

SET IDENTITY_INSERT [dbo].[umbracoLog] OFF
