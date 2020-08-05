<#assign resolucion = 
    getterUtil.getString(theme_settings["Ancho de pagina"])
 color_cabecera = 
    getterUtil.getString(theme_settings["Color del fondo de la cabecera"])
 color_idioma_paginas = 
    getterUtil.getString(theme_settings["Color de idioma y pagina seleccionada"])
 color_titulos_botones = 
    getterUtil.getString(theme_settings["Color de titulos y fondo de los botones"])
 color_titulos_h1 = 
    getterUtil.getString(theme_settings["Color titulos H1"])
 color_titulos_h2 = 
    getterUtil.getString(theme_settings["Color titulos H2"])
 color_titulos_h3 = 
    getterUtil.getString(theme_settings["Color titulos H3"])
 color_menu = 
    getterUtil.getString(theme_settings["Color de los textos del menu y de los idiomas sin seleccionar"])
 color_texto_botones = 
    getterUtil.getString(theme_settings["Color del texto de los botones"])
 color_enlaces = 
    getterUtil.getString(theme_settings["Color de los enlaces"])
 pieID = 
    getterUtil.getString(theme_settings["ID pie de pagina"])
 portadaID = 
    getterUtil.getString(theme_settings["ID imagen portada"])
 cabeceraID = 
    getterUtil.getString(theme_settings["ID logotipos cabecera"])

	mostrar_menu_navegacion = getterUtil.getBoolean(themeDisplay.getThemeSetting("Mostrar menu de navegacion"))
	mostrar_logo_portada = getterUtil.getBoolean(themeDisplay.getThemeSetting("Mostrar logotipo en portada"))
	mostrar_migas = getterUtil.getBoolean(themeDisplay.getThemeSetting("Mostrar migas de pan"))
	show_footer = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-footer"))
	show_header = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-header"))
	show_header_search = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-header-search"))
	wrap_content = getterUtil.getBoolean(themeDisplay.getThemeSetting("wrap-content"))
/>

<#if wrap_content>
	<#assign portal_content_css_class = "container" />
<#else>
	<#assign portal_content_css_class = "" />
</#if>
<#assign languages = languageUtil.getAvailableLocales(group_id) />



<#if ( !themeDisplay.isSignedIn() && !(themeDisplay.getScopeGroup().getDefaultPublicPlid() == layout.getPlid()))>
	<#assign wrapper_css="pagina-interior"/>
<#else>
	<#assign wrapper_css="pagina-inicio"/>
</#if>