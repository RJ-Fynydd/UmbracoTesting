
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMacro] ADD CONSTRAINT [df_cmsMacro_macroUseInEditor] DEFAULT ('0') FOR [macroUseInEditor]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMacro] ADD CONSTRAINT [df_cmsMacro_macroRefreshRate] DEFAULT ('0') FOR [macroRefreshRate]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMacro] ADD CONSTRAINT [df_cmsMacro_macroCacheByPage] DEFAULT ('1') FOR [macroCacheByPage]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMacro] ADD CONSTRAINT [df_cmsMacro_macroCachePersonalized] DEFAULT ('0') FOR [macroCachePersonalized]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMacro] ADD CONSTRAINT [df_cmsMacro_macroDontRender] DEFAULT ('0') FOR [macroDontRender]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMacroProperty] ADD CONSTRAINT [df_cmsMacroProperty_macroPropertySortOrder] DEFAULT ('0') FOR [macroPropertySortOrder]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMember] ADD CONSTRAINT [df_cmsMember_Email] DEFAULT ('''') FOR [Email]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMember] ADD CONSTRAINT [df_cmsMember_LoginName] DEFAULT ('''') FOR [LoginName]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMember] ADD CONSTRAINT [df_cmsMember_Password] DEFAULT ('''') FOR [Password]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsTask] ADD CONSTRAINT [df_cmsTask_closed] DEFAULT ('0') FOR [closed]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsTask] ADD CONSTRAINT [df_cmsTask_DateTime] DEFAULT (getdate()) FOR [DateTime]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoAccess] ADD CONSTRAINT [df_umbracoAccess_createDate] DEFAULT (getdate()) FOR [createDate]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoAccess] ADD CONSTRAINT [df_umbracoAccess_updateDate] DEFAULT (getdate()) FOR [updateDate]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoAccessRule] ADD CONSTRAINT [df_umbracoAccessRule_createDate] DEFAULT (getdate()) FOR [createDate]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoAccessRule] ADD CONSTRAINT [df_umbracoAccessRule_updateDate] DEFAULT (getdate()) FOR [updateDate]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoConsent] ADD CONSTRAINT [df_umbracoConsent_createDate] DEFAULT (getdate()) FOR [createDate]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoExternalLogin] ADD CONSTRAINT [df_umbracoExternalLogin_createDate] DEFAULT (getdate()) FOR [createDate]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoRelation] ADD CONSTRAINT [df_umbracoRelation_datetime] DEFAULT (getdate()) FOR [datetime]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoMigration] ADD CONSTRAINT [df_umbracoMigration_createDate] DEFAULT (getdate()) FOR [createDate]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsContentVersion] ADD CONSTRAINT [df_cmsContentVersion_VersionDate] DEFAULT (getdate()) FOR [VersionDate]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsDocument] ADD CONSTRAINT [df_cmsDocument_updateDate] DEFAULT (getdate()) FOR [updateDate]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsDocument] ADD CONSTRAINT [df_cmsDocument_newest] DEFAULT ('0') FOR [newest]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoUser] ADD CONSTRAINT [df_umbracoUser_userDisabled] DEFAULT ('0') FOR [userDisabled]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoUser] ADD CONSTRAINT [df_umbracoUser_userNoConsole] DEFAULT ('0') FOR [userNoConsole]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoUser] ADD CONSTRAINT [df_umbracoUser_createDate] DEFAULT (getdate()) FOR [createDate]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoUser] ADD CONSTRAINT [df_umbracoUser_updateDate] DEFAULT (getdate()) FOR [updateDate]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsDocumentType] ADD CONSTRAINT [df_cmsDocumentType_IsDefault] DEFAULT ('0') FOR [IsDefault]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoServer] ADD CONSTRAINT [df_umbracoServer_registeredDate] DEFAULT (getdate()) FOR [registeredDate]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] ADD CONSTRAINT [df_cmsContentTypeAllowedContentType_SortOrder] DEFAULT ('0') FOR [SortOrder]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsPropertyTypeGroup] ADD CONSTRAINT [df_cmsPropertyTypeGroup_uniqueID] DEFAULT (newid()) FOR [uniqueID]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoUserGroup] ADD CONSTRAINT [df_umbracoUserGroup_createDate] DEFAULT (getdate()) FOR [createDate]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoUserGroup] ADD CONSTRAINT [df_umbracoUserGroup_updateDate] DEFAULT (getdate()) FOR [updateDate]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsContentType] ADD CONSTRAINT [df_cmsContentType_thumbnail] DEFAULT ('folder.png') FOR [thumbnail]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsContentType] ADD CONSTRAINT [df_cmsContentType_isContainer] DEFAULT ('0') FOR [isContainer]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsContentType] ADD CONSTRAINT [df_cmsContentType_allowAtRoot] DEFAULT ('0') FOR [allowAtRoot]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMemberType] ADD CONSTRAINT [df_cmsMemberType_memberCanEdit] DEFAULT ('0') FOR [memberCanEdit]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMemberType] ADD CONSTRAINT [df_cmsMemberType_viewOnProfile] DEFAULT ('0') FOR [viewOnProfile]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMemberType] ADD CONSTRAINT [df_cmsMemberType_isSensitive] DEFAULT ('0') FOR [isSensitive]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsPropertyType] ADD CONSTRAINT [df_cmsPropertyType_sortOrder] DEFAULT ('0') FOR [sortOrder]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsPropertyType] ADD CONSTRAINT [df_cmsPropertyType_mandatory] DEFAULT ('0') FOR [mandatory]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsPropertyType] ADD CONSTRAINT [df_cmsPropertyType_UniqueID] DEFAULT (newid()) FOR [UniqueID]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoAudit] ADD CONSTRAINT [df_umbracoAudit_eventDateUtc] DEFAULT (getdate()) FOR [eventDateUtc]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoNode] ADD CONSTRAINT [df_umbracoNode_trashed] DEFAULT ('0') FOR [trashed]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoNode] ADD CONSTRAINT [df_umbracoNode_uniqueID] DEFAULT (newid()) FOR [uniqueID]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoNode] ADD CONSTRAINT [df_umbracoNode_createDate] DEFAULT (getdate()) FOR [createDate]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoCacheInstruction] ADD CONSTRAINT [df_umbracoCacheInstruction_instructionCount] DEFAULT ('1') FOR [instructionCount]
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoLog] ADD CONSTRAINT [df_umbracoLog_Datestamp] DEFAULT (getdate()) FOR [Datestamp]
GO -- SQRIBE/GO;599a15
