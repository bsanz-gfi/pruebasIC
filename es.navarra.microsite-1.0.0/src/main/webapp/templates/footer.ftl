<#if pieID!=''>
	<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone") />
	<#assign theme_groupID = htmlUtil.escape(theme_display.getCompanyGroupId()?string) />
	<#assign VOID = freeMarkerPortletPreferences.setValue("groupId", '${group_id}') />
	<#assign VOID = freeMarkerPortletPreferences.setValue("articleId", pieID) />
	<@liferay_portlet["runtime"]
	defaultPreferences="${freeMarkerPortletPreferences}"
	portletProviderAction=portletProviderAction.VIEW
	instanceId="pie"
	portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" />
	${freeMarkerPortletPreferences.reset()}
</#if>