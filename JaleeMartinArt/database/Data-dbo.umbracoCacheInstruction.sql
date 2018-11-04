
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 15 rows to dbo.umbracoCacheInstruction...'
GO -- SQRIBE/GO;599a15

SET IDENTITY_INSERT [dbo].[umbracoCacheInstruction] ON
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (1,CONVERT(datetime,'2018-11-04 05:20:14.383',121),N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null}]',N'RJ-DESKTOP//LM/W3SVC/2/ROOT [P32544/D4] A8B961F2E01A4AD2A59DF6D523ACA46B',3);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (2,CONVERT(datetime,'2018-11-04 05:23:31.667',121),N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null}]',N'RJ-DESKTOP//LM/W3SVC/2/ROOT [P32544/D4] A8B961F2E01A4AD2A59DF6D523ACA46B',2);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (3,CONVERT(datetime,'2018-11-04 06:30:38.190',121),N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null}]',N'RJ-DESKTOP//LM/W3SVC/1/ROOT [P10376/D17] 0C0BDF7DD3DE447FAD243001C39F1438',1);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (4,CONVERT(datetime,'2018-11-04 06:31:23.357',121),N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null}]',N'RJ-DESKTOP//LM/W3SVC/1/ROOT [P10376/D17] 0C0BDF7DD3DE447FAD243001C39F1438',2);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (5,CONVERT(datetime,'2018-11-04 06:31:43.007',121),N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null}]',N'RJ-DESKTOP//LM/W3SVC/1/ROOT [P10376/D17] 0C0BDF7DD3DE447FAD243001C39F1438',2);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (6,CONVERT(datetime,'2018-11-04 17:41:23.010',121),N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]',N'RJ-LAPTOP//LM/W3SVC/1/ROOT [P19888/D4] A9708BE87E4A41E991B70D9B0E08F287',1);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (7,CONVERT(datetime,'2018-11-04 17:41:31.590',121),N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]',N'RJ-LAPTOP//LM/W3SVC/1/ROOT [P19888/D4] A9708BE87E4A41E991B70D9B0E08F287',1);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (8,CONVERT(datetime,'2018-11-04 17:42:17.407',121),N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1052]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Alias\":\"home\",\"Id\":1053,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":true,\"PropertyRemoved\":false,\"PropertyTypeAliasChanged\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":true}]"}]',N'RJ-LAPTOP//LM/W3SVC/1/ROOT [P19888/D4] A9708BE87E4A41E991B70D9B0E08F287',2);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (9,CONVERT(datetime,'2018-11-04 17:42:24.717',121),N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1054]","JsonIdCount":1,"JsonPayload":null}]',N'RJ-LAPTOP//LM/W3SVC/1/ROOT [P19888/D4] A9708BE87E4A41E991B70D9B0E08F287',1);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (10,CONVERT(datetime,'2018-11-04 17:42:39.187',121),N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]',N'RJ-LAPTOP//LM/W3SVC/1/ROOT [P19888/D4] A9708BE87E4A41E991B70D9B0E08F287',1);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (11,CONVERT(datetime,'2018-11-04 17:43:47.257',121),N'[{"RefreshType":5,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":1052,"JsonIds":null,"JsonIdCount":1,"JsonPayload":null}]',N'RJ-LAPTOP//LM/W3SVC/1/ROOT [P19888/D4] A9708BE87E4A41E991B70D9B0E08F287',1);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (12,CONVERT(datetime,'2018-11-04 17:45:24.960',121),N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1054]","JsonIdCount":1,"JsonPayload":null}]',N'RJ-LAPTOP//LM/W3SVC/1/ROOT [P19888/D4] A9708BE87E4A41E991B70D9B0E08F287',1);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (13,CONVERT(datetime,'2018-11-04 17:45:28.543',121),N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1054]","JsonIdCount":1,"JsonPayload":null}]',N'RJ-LAPTOP//LM/W3SVC/1/ROOT [P19888/D4] A9708BE87E4A41E991B70D9B0E08F287',1);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (14,CONVERT(datetime,'2018-11-04 17:45:59.767',121),N'[{"RefreshType":5,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":1054,"JsonIds":null,"JsonIdCount":1,"JsonPayload":null}]',N'RJ-LAPTOP//LM/W3SVC/1/ROOT [P19888/D4] A9708BE87E4A41E991B70D9B0E08F287',1);
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[umbracoCacheInstruction] ([id],[utcStamp],[jsonInstruction],[originated],[instructionCount]) VALUES (15,CONVERT(datetime,'2018-11-04 17:46:11.677',121),N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1055]","JsonIdCount":1,"JsonPayload":null}]',N'RJ-LAPTOP//LM/W3SVC/1/ROOT [P19888/D4] A9708BE87E4A41E991B70D9B0E08F287',1);

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.umbracoCacheInstruction succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.umbracoCacheInstruction failed'
END

SET IDENTITY_INSERT [dbo].[umbracoCacheInstruction] OFF
