
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsContent]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsContent]
(
    [pk] [int] IDENTITY(1,1) NOT NULL,
    [nodeId] [int] NOT NULL,
    [contentType] [int] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsContentType2ContentType]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsContentType2ContentType]
(
    [parentContentTypeId] [int] NOT NULL,
    [childContentTypeId] [int] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsContentVersion]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsContentVersion]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [ContentId] [int] NOT NULL,
    [VersionId] [uniqueidentifier] NOT NULL,
    [VersionDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsContentXml]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsContentXml]
(
    [nodeId] [int] NOT NULL,
    [xml] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsDictionary]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsDictionary]
(
    [pk] [int] IDENTITY(1,1) NOT NULL,
    [id] [uniqueidentifier] NOT NULL,
    [parent] [uniqueidentifier] NULL,
    [key] [nvarchar](450) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsDocument]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsDocument]
(
    [nodeId] [int] NOT NULL,
    [published] [bit] NOT NULL,
    [documentUser] [int] NOT NULL,
    [versionId] [uniqueidentifier] NOT NULL,
    [text] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [releaseDate] [datetime] NULL,
    [expireDate] [datetime] NULL,
    [updateDate] [datetime] NOT NULL,
    [templateId] [int] NULL,
    [newest] [bit] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsDocumentType]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsDocumentType]
(
    [contentTypeNodeId] [int] NOT NULL,
    [templateNodeId] [int] NOT NULL,
    [IsDefault] [bit] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsLanguageText]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsLanguageText]
(
    [pk] [int] IDENTITY(1,1) NOT NULL,
    [languageId] [int] NOT NULL,
    [UniqueId] [uniqueidentifier] NOT NULL,
    [value] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsMacro]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsMacro]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [uniqueId] [uniqueidentifier] NOT NULL,
    [macroUseInEditor] [bit] NOT NULL,
    [macroRefreshRate] [int] NOT NULL,
    [macroAlias] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [macroName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [macroScriptType] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [macroScriptAssembly] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [macroXSLT] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [macroCacheByPage] [bit] NOT NULL,
    [macroCachePersonalized] [bit] NOT NULL,
    [macroDontRender] [bit] NOT NULL,
    [macroPython] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsMacroProperty]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsMacroProperty]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [uniquePropertyId] [uniqueidentifier] NOT NULL,
    [editorAlias] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [macro] [int] NOT NULL,
    [macroPropertySortOrder] [int] NOT NULL,
    [macroPropertyAlias] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [macroPropertyName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsMedia]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsMedia]
(
    [nodeId] [int] NOT NULL,
    [versionId] [uniqueidentifier] NOT NULL,
    [mediaPath] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsMember]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsMember]
(
    [nodeId] [int] NOT NULL,
    [Email] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [LoginName] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Password] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsMember2MemberGroup]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsMember2MemberGroup]
(
    [Member] [int] NOT NULL,
    [MemberGroup] [int] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsPreviewXml]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsPreviewXml]
(
    [nodeId] [int] NOT NULL,
    [versionId] [uniqueidentifier] NOT NULL,
    [timestamp] [datetime] NOT NULL,
    [xml] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsPropertyData]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsPropertyData]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [contentNodeId] [int] NOT NULL,
    [versionId] [uniqueidentifier] NULL,
    [propertytypeid] [int] NOT NULL,
    [dataInt] [int] NULL,
    [dataDecimal] [decimal](38,6) NULL,
    [dataDate] [datetime] NULL,
    [dataNvarchar] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [dataNtext] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsTagRelationship]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsTagRelationship]
(
    [nodeId] [int] NOT NULL,
    [tagId] [int] NOT NULL,
    [propertyTypeId] [int] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsTags]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsTags]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [tag] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [ParentId] [int] NULL,
    [group] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsTask]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsTask]
(
    [closed] [bit] NOT NULL,
    [id] [int] IDENTITY(1,1) NOT NULL,
    [taskTypeId] [int] NOT NULL,
    [nodeId] [int] NOT NULL,
    [parentUserId] [int] NOT NULL,
    [userId] [int] NOT NULL,
    [DateTime] [datetime] NOT NULL,
    [Comment] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsTemplate]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsTemplate]
(
    [pk] [int] IDENTITY(1,1) NOT NULL,
    [nodeId] [int] NOT NULL,
    [alias] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [design] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoAccess]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoAccess]
(
    [id] [uniqueidentifier] NOT NULL,
    [nodeId] [int] NOT NULL,
    [loginNodeId] [int] NOT NULL,
    [noAccessNodeId] [int] NOT NULL,
    [createDate] [datetime] NOT NULL,
    [updateDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoAccessRule]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoAccessRule]
(
    [id] [uniqueidentifier] NOT NULL,
    [accessId] [uniqueidentifier] NOT NULL,
    [ruleValue] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [ruleType] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [createDate] [datetime] NOT NULL,
    [updateDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoConsent]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoConsent]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [current] [bit] NOT NULL,
    [source] [nvarchar](512) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [context] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [action] [nvarchar](512) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [createDate] [datetime] NOT NULL,
    [state] [int] NOT NULL,
    [comment] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoDomains]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoDomains]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [domainDefaultLanguage] [int] NULL,
    [domainRootStructureID] [int] NULL,
    [domainName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoExternalLogin]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoExternalLogin]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [userId] [int] NOT NULL,
    [loginProvider] [nvarchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [providerKey] [nvarchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [createDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoLog]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoLog]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [userId] [int] NOT NULL,
    [NodeId] [int] NOT NULL,
    [Datestamp] [datetime] NOT NULL,
    [logHeader] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [logComment] [nvarchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoRedirectUrl]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoRedirectUrl]
(
    [id] [uniqueidentifier] NOT NULL,
    [contentKey] [uniqueidentifier] NOT NULL,
    [createDateUtc] [datetime] NOT NULL,
    [url] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [urlHash] [nvarchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoRelation]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoRelation]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [parentId] [int] NOT NULL,
    [childId] [int] NOT NULL,
    [relType] [int] NOT NULL,
    [datetime] [datetime] NOT NULL,
    [comment] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoUser2NodeNotify]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoUser2NodeNotify]
(
    [userId] [int] NOT NULL,
    [nodeId] [int] NOT NULL,
    [action] [nchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoUserGroup2NodePermission]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoUserGroup2NodePermission]
(
    [userGroupId] [int] NOT NULL,
    [nodeId] [int] NOT NULL,
    [permission] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoUserStartNode]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoUserStartNode]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [userId] [int] NOT NULL,
    [startNode] [int] NOT NULL,
    [startNodeType] [int] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsTaskType]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsTaskType]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [alias] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoLanguage]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoLanguage]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [languageISOCode] [nvarchar](14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [languageCultureName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoLock]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoLock]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [value] [int] NOT NULL,
    [name] [nvarchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoMigration]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoMigration]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [name] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [createDate] [datetime] NOT NULL,
    [version] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoServer]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoServer]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [address] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [computerName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [registeredDate] [datetime] NOT NULL,
    [lastNotifiedDate] [datetime] NOT NULL,
    [isActive] [bit] NOT NULL,
    [isMaster] [bit] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoUser]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoUser]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [userDisabled] [bit] NOT NULL,
    [userNoConsole] [bit] NOT NULL,
    [userName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [userLogin] [nvarchar](125) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [userPassword] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [passwordConfig] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [userEmail] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [userLanguage] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [securityStampToken] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [failedLoginAttempts] [int] NULL,
    [lastLockoutDate] [datetime] NULL,
    [lastPasswordChangeDate] [datetime] NULL,
    [lastLoginDate] [datetime] NULL,
    [emailConfirmedDate] [datetime] NULL,
    [invitedDate] [datetime] NULL,
    [createDate] [datetime] NOT NULL,
    [updateDate] [datetime] NOT NULL,
    [avatar] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [tourData] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsContentTypeAllowedContentType]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsContentTypeAllowedContentType]
(
    [Id] [int] NOT NULL,
    [AllowedId] [int] NOT NULL,
    [SortOrder] [int] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoRelationType]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoRelationType]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [typeUniqueId] [uniqueidentifier] NOT NULL,
    [dual] [bit] NOT NULL,
    [parentObjectType] [uniqueidentifier] NOT NULL,
    [childObjectType] [uniqueidentifier] NOT NULL,
    [name] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [alias] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsContentType]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsContentType]
(
    [pk] [int] IDENTITY(1,1) NOT NULL,
    [nodeId] [int] NOT NULL,
    [alias] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [icon] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [thumbnail] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [description] [nvarchar](1500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [isContainer] [bit] NOT NULL,
    [allowAtRoot] [bit] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsPropertyTypeGroup]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsPropertyTypeGroup]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [contenttypeNodeId] [int] NOT NULL,
    [text] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [sortorder] [int] NOT NULL,
    [uniqueID] [uniqueidentifier] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoUserLogin]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoUserLogin]
(
    [sessionId] [uniqueidentifier] NOT NULL,
    [userId] [int] NOT NULL,
    [loggedInUtc] [datetime] NOT NULL,
    [lastValidatedUtc] [datetime] NOT NULL,
    [loggedOutUtc] [datetime] NULL,
    [ipAddress] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoCacheInstruction]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoCacheInstruction]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [utcStamp] [datetime] NOT NULL,
    [jsonInstruction] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [originated] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [instructionCount] [int] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoUserGroup]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoUserGroup]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [userGroupAlias] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [userGroupName] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [userGroupDefaultPermissions] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [createDate] [datetime] NOT NULL,
    [updateDate] [datetime] NOT NULL,
    [icon] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [startContentId] [int] NULL,
    [startMediaId] [int] NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoUser2UserGroup]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoUser2UserGroup]
(
    [userId] [int] NOT NULL,
    [userGroupId] [int] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsMemberType]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsMemberType]
(
    [pk] [int] IDENTITY(1,1) NOT NULL,
    [NodeId] [int] NOT NULL,
    [propertytypeId] [int] NOT NULL,
    [memberCanEdit] [bit] NOT NULL,
    [viewOnProfile] [bit] NOT NULL,
    [isSensitive] [bit] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoUserGroup2App]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoUserGroup2App]
(
    [userGroupId] [int] NOT NULL,
    [app] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsDataTypePreValues]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsDataTypePreValues]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [datatypeNodeId] [int] NOT NULL,
    [value] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [sortorder] [int] NOT NULL,
    [alias] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsPropertyType]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsPropertyType]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [dataTypeId] [int] NOT NULL,
    [contentTypeId] [int] NOT NULL,
    [propertyTypeGroupId] [int] NULL,
    [Alias] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Name] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [sortOrder] [int] NOT NULL,
    [mandatory] [bit] NOT NULL,
    [validationRegExp] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [Description] [nvarchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [UniqueID] [uniqueidentifier] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoAudit]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoAudit]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [performingUserId] [int] NOT NULL,
    [performingDetails] [nvarchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [performingIp] [nvarchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [eventDateUtc] [datetime] NOT NULL,
    [affectedUserId] [int] NOT NULL,
    [affectedDetails] [nvarchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [eventType] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [eventDetails] [nvarchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[cmsDataType]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[cmsDataType]
(
    [pk] [int] IDENTITY(1,1) NOT NULL,
    [nodeId] [int] NOT NULL,
    [propertyEditorAlias] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [dbType] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15

PRINT N'CREATE TABLE [dbo].[umbracoNode]'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
CREATE TABLE [dbo].[umbracoNode]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [trashed] [bit] NOT NULL,
    [parentID] [int] NOT NULL,
    [nodeUser] [int] NULL,
    [level] [int] NOT NULL,
    [path] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [sortOrder] [int] NOT NULL,
    [uniqueID] [uniqueidentifier] NOT NULL,
    [text] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [nodeObjectType] [uniqueidentifier] NULL,
    [createDate] [datetime] NOT NULL

) ON [PRIMARY]
GO -- SQRIBE/GO;599a15
