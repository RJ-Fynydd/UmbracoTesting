
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

PRINT N'CREATE foreign key constraints'
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMemberType] WITH NOCHECK ADD CONSTRAINT [FK_cmsMemberType_cmsContentType_nodeId] FOREIGN KEY([NodeId]) 
REFERENCES [dbo].[cmsContentType] ([nodeId]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMember] WITH NOCHECK ADD CONSTRAINT [FK_cmsMember_cmsContent_nodeId] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[cmsContent] ([nodeId]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMember] WITH NOCHECK ADD CONSTRAINT [FK_cmsMember_umbracoNode_id] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMember2MemberGroup] WITH NOCHECK ADD CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId] FOREIGN KEY([Member]) 
REFERENCES [dbo].[cmsMember] ([nodeId]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMember2MemberGroup] WITH NOCHECK ADD CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id] FOREIGN KEY([MemberGroup]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsContentXml] WITH NOCHECK ADD CONSTRAINT [FK_cmsContentXml_cmsContent_nodeId] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[cmsContent] ([nodeId]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsPreviewXml] WITH NOCHECK ADD CONSTRAINT [FK_cmsPreviewXml_cmsContent_nodeId] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[cmsContent] ([nodeId]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsPreviewXml] WITH NOCHECK ADD CONSTRAINT [FK_cmsPreviewXml_cmsContentVersion_VersionId] FOREIGN KEY([versionId]) 
REFERENCES [dbo].[cmsContentVersion] ([VersionId]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsPropertyTypeGroup] WITH NOCHECK ADD CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId] FOREIGN KEY([contenttypeNodeId]) 
REFERENCES [dbo].[cmsContentType] ([nodeId]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsPropertyType] WITH NOCHECK ADD CONSTRAINT [FK_cmsPropertyType_cmsDataType_nodeId] FOREIGN KEY([dataTypeId]) 
REFERENCES [dbo].[cmsDataType] ([nodeId]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsPropertyType] WITH NOCHECK ADD CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId] FOREIGN KEY([contentTypeId]) 
REFERENCES [dbo].[cmsContentType] ([nodeId]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsPropertyType] WITH NOCHECK ADD CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id] FOREIGN KEY([propertyTypeGroupId]) 
REFERENCES [dbo].[cmsPropertyTypeGroup] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsPropertyData] WITH NOCHECK ADD CONSTRAINT [FK_cmsPropertyData_umbracoNode_id] FOREIGN KEY([contentNodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsPropertyData] WITH NOCHECK ADD CONSTRAINT [FK_cmsPropertyData_cmsPropertyType_id] FOREIGN KEY([propertytypeid]) 
REFERENCES [dbo].[cmsPropertyType] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoRelation] WITH NOCHECK ADD CONSTRAINT [FK_umbracoRelation_umbracoNode] FOREIGN KEY([parentId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoRelation] WITH NOCHECK ADD CONSTRAINT [FK_umbracoRelation_umbracoNode1] FOREIGN KEY([childId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoRelation] WITH NOCHECK ADD CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id] FOREIGN KEY([relType]) 
REFERENCES [dbo].[umbracoRelationType] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsTags] WITH NOCHECK ADD CONSTRAINT [FK_cmsTags_cmsTags] FOREIGN KEY([ParentId]) 
REFERENCES [dbo].[cmsTags] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsTagRelationship] WITH NOCHECK ADD CONSTRAINT [FK_cmsTagRelationship_cmsContent] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[cmsContent] ([nodeId]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsTagRelationship] WITH NOCHECK ADD CONSTRAINT [FK_cmsTagRelationship_cmsTags_id] FOREIGN KEY([tagId]) 
REFERENCES [dbo].[cmsTags] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsTagRelationship] WITH NOCHECK ADD CONSTRAINT [FK_cmsTagRelationship_cmsPropertyType] FOREIGN KEY([propertyTypeId]) 
REFERENCES [dbo].[cmsPropertyType] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoNode] WITH NOCHECK ADD CONSTRAINT [FK_umbracoNode_umbracoNode_id] FOREIGN KEY([parentID]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsTask] WITH NOCHECK ADD CONSTRAINT [FK_cmsTask_cmsTaskType_id] FOREIGN KEY([taskTypeId]) 
REFERENCES [dbo].[cmsTaskType] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsTask] WITH NOCHECK ADD CONSTRAINT [FK_cmsTask_umbracoNode_id] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsTask] WITH NOCHECK ADD CONSTRAINT [FK_cmsTask_umbracoUser] FOREIGN KEY([parentUserId]) 
REFERENCES [dbo].[umbracoUser] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsTask] WITH NOCHECK ADD CONSTRAINT [FK_cmsTask_umbracoUser1] FOREIGN KEY([userId]) 
REFERENCES [dbo].[umbracoUser] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsContentType] WITH NOCHECK ADD CONSTRAINT [FK_cmsContentType_umbracoNode_id] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsContentType2ContentType] WITH NOCHECK ADD CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent] FOREIGN KEY([parentContentTypeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsContentType2ContentType] WITH NOCHECK ADD CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child] FOREIGN KEY([childContentTypeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsTemplate] WITH NOCHECK ADD CONSTRAINT [FK_cmsTemplate_umbracoNode] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsContent] WITH NOCHECK ADD CONSTRAINT [FK_cmsContent_umbracoNode_id] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] WITH NOCHECK ADD CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType] FOREIGN KEY([Id]) 
REFERENCES [dbo].[cmsContentType] ([nodeId]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsContent] WITH NOCHECK ADD CONSTRAINT [FK_cmsContent_cmsContentType_nodeId] FOREIGN KEY([contentType]) 
REFERENCES [dbo].[cmsContentType] ([nodeId]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] WITH NOCHECK ADD CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1] FOREIGN KEY([AllowedId]) 
REFERENCES [dbo].[cmsContentType] ([nodeId]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoUser2NodeNotify] WITH NOCHECK ADD CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id] FOREIGN KEY([userId]) 
REFERENCES [dbo].[umbracoUser] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsContentVersion] WITH NOCHECK ADD CONSTRAINT [FK_cmsContentVersion_cmsContent_nodeId] FOREIGN KEY([ContentId]) 
REFERENCES [dbo].[cmsContent] ([nodeId]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoUser2NodeNotify] WITH NOCHECK ADD CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsDocument] WITH NOCHECK ADD CONSTRAINT [FK_cmsDocument_cmsContent_nodeId] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[cmsContent] ([nodeId]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsDocument] WITH NOCHECK ADD CONSTRAINT [FK_cmsDocument_umbracoNode_id] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsDocument] WITH NOCHECK ADD CONSTRAINT [FK_cmsDocument_cmsTemplate_nodeId] FOREIGN KEY([templateId]) 
REFERENCES [dbo].[cmsTemplate] ([nodeId]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoAccess] WITH NOCHECK ADD CONSTRAINT [FK_umbracoAccess_umbracoNode_id] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoAccess] WITH NOCHECK ADD CONSTRAINT [FK_umbracoAccess_umbracoNode_id1] FOREIGN KEY([loginNodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMedia] WITH NOCHECK ADD CONSTRAINT [FK_cmsMedia_cmsContent_nodeId] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[cmsContent] ([nodeId]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoAccess] WITH NOCHECK ADD CONSTRAINT [FK_umbracoAccess_umbracoNode_id2] FOREIGN KEY([noAccessNodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMedia] WITH NOCHECK ADD CONSTRAINT [FK_cmsMedia_umbracoNode_id] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsDocumentType] WITH NOCHECK ADD CONSTRAINT [FK_cmsDocumentType_cmsContentType_nodeId] FOREIGN KEY([contentTypeNodeId]) 
REFERENCES [dbo].[cmsContentType] ([nodeId]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoAccessRule] WITH NOCHECK ADD CONSTRAINT [FK_umbracoAccessRule_umbracoAccess_id] FOREIGN KEY([accessId]) 
REFERENCES [dbo].[umbracoAccess] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsDocumentType] WITH NOCHECK ADD CONSTRAINT [FK_cmsDocumentType_umbracoNode_id] FOREIGN KEY([contentTypeNodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsDocumentType] WITH NOCHECK ADD CONSTRAINT [FK_cmsDocumentType_cmsTemplate_nodeId] FOREIGN KEY([templateNodeId]) 
REFERENCES [dbo].[cmsTemplate] ([nodeId]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsDataType] WITH NOCHECK ADD CONSTRAINT [FK_cmsDataType_umbracoNode_id] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsDataTypePreValues] WITH NOCHECK ADD CONSTRAINT [FK_cmsDataTypePreValues_cmsDataType_nodeId] FOREIGN KEY([datatypeNodeId]) 
REFERENCES [dbo].[cmsDataType] ([nodeId]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsDictionary] WITH NOCHECK ADD CONSTRAINT [FK_cmsDictionary_cmsDictionary_id] FOREIGN KEY([parent]) 
REFERENCES [dbo].[cmsDictionary] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoRedirectUrl] WITH NOCHECK ADD CONSTRAINT [FK_umbracoRedirectUrl_umbracoNode_uniqueID] FOREIGN KEY([contentKey]) 
REFERENCES [dbo].[umbracoNode] ([uniqueID]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsLanguageText] WITH NOCHECK ADD CONSTRAINT [FK_cmsLanguageText_umbracoLanguage_id] FOREIGN KEY([languageId]) 
REFERENCES [dbo].[umbracoLanguage] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsLanguageText] WITH NOCHECK ADD CONSTRAINT [FK_cmsLanguageText_cmsDictionary_id] FOREIGN KEY([UniqueId]) 
REFERENCES [dbo].[cmsDictionary] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoUserGroup] WITH NOCHECK ADD CONSTRAINT [FK_startContentId_umbracoNode_id] FOREIGN KEY([startContentId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoDomains] WITH NOCHECK ADD CONSTRAINT [FK_umbracoDomains_umbracoNode_id] FOREIGN KEY([domainRootStructureID]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoUserGroup] WITH NOCHECK ADD CONSTRAINT [FK_startMediaId_umbracoNode_id] FOREIGN KEY([startMediaId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoUser2UserGroup] WITH NOCHECK ADD CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUser_id] FOREIGN KEY([userId]) 
REFERENCES [dbo].[umbracoUser] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoUser2UserGroup] WITH NOCHECK ADD CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUserGroup_id] FOREIGN KEY([userGroupId]) 
REFERENCES [dbo].[umbracoUserGroup] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoUserGroup2NodePermission] WITH NOCHECK ADD CONSTRAINT [FK_umbracoUserGroup2NodePermission_umbracoUserGroup_id] FOREIGN KEY([userGroupId]) 
REFERENCES [dbo].[umbracoUserGroup] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoUserGroup2NodePermission] WITH NOCHECK ADD CONSTRAINT [FK_umbracoUserGroup2NodePermission_umbracoNode_id] FOREIGN KEY([nodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoUserGroup2App] WITH NOCHECK ADD CONSTRAINT [FK_umbracoUserGroup2App_umbracoUserGroup_id] FOREIGN KEY([userGroupId]) 
REFERENCES [dbo].[umbracoUserGroup] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMacroProperty] WITH NOCHECK ADD CONSTRAINT [FK_cmsMacroProperty_cmsMacro_id] FOREIGN KEY([macro]) 
REFERENCES [dbo].[cmsMacro] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoUserStartNode] WITH NOCHECK ADD CONSTRAINT [FK_umbracoUserStartNode_umbracoUser_id] FOREIGN KEY([userId]) 
REFERENCES [dbo].[umbracoUser] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoUserStartNode] WITH NOCHECK ADD CONSTRAINT [FK_umbracoUserStartNode_umbracoNode_id] FOREIGN KEY([startNode]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[umbracoUserLogin] WITH NOCHECK ADD CONSTRAINT [FK_umbracoUserLogin_umbracoUser_id] FOREIGN KEY([userId]) 
REFERENCES [dbo].[umbracoUser] ([id]) 
GO -- SQRIBE/GO;599a15

-- SQRIBE/OBJ;599a15
ALTER TABLE [dbo].[cmsMemberType] WITH NOCHECK ADD CONSTRAINT [FK_cmsMemberType_umbracoNode_id] FOREIGN KEY([NodeId]) 
REFERENCES [dbo].[umbracoNode] ([id]) 
GO -- SQRIBE/GO;599a15
