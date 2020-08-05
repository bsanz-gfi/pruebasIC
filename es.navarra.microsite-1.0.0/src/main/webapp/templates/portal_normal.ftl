<!DOCTYPE html>

<#include init />
 
<html class="${root_css_class}" dir="<@liferay.language key='lang.dir' />" lang="${w3c_language_id}">

<head>
	<meta http-equiv='X-UA-Compatible' content='IE=11'>
	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta property="og:url" content="${portalUtil.getCurrentCompleteURL(request)}" />

	<meta property="og:title" content="${the_title} - ${company_name}" />
	<title>${the_title} - ${company_name}</title>
	<#assign layout_description = layout.getDescription(locale, false) />
	<#if layout_description?has_content>
		<meta property="og:description" content="${layout_description}" />
	</#if>    
	
	<@liferay_util["include"] page=top_head_include />
	<link data-senna-track="temporary" href="${images_folder}/favicon.ico" rel="Shortcut Icon" />
	
		<!-- Estilos FontAwensome -->
		<link rel="stylesheet" type="text/css" href="${css_folder}/font-awesome-4.7.0/css/font-awesome.min.css">
		<!-- Fin Estilos FontAwensome -->
		
		<!-- Estilos Chatbot Navarra -->
		<link rel="stylesheet" type="text/css" href="${css_folder}/wasist-iframe.css">
		<!-- Fin Estilos Chatbot Navarra -->
		
		<!-- tipografia Robot-->
		<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900&display=swap" rel="stylesheet">
		<!-- FIN tipografia Robot-->	
		
		<!-- Slide SLICK 
		<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick-theme.css">
		<link href="https://cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.css" rel="stylesheet">
		 FIN Slide SLICK-->
	<style>
		.navbar-inverse {
			background-color: ${color_cabecera};
		} 
		.color{
			background: ${color_titulos_botones};
		}
		.lfr-ddm-form-pagination-controls button.btn{
			background: ${color_titulos_botones};
		}
		.liferay-ddm-form-field-checkbox input.toggle-switch:checked ~ .toggle-switch-bar:before {
			  background-color:  ${color_titulos_botones};
  			  border: 1px solid  ${color_titulos_botones};
		} 
		.liferay-ddm-form-field-checkbox input.toggle-switch:checked ~ .toggle-switch-bar:after {
		    border: 1px solid  ${color_titulos_botones};
	    }
		<#if color_texto_botones=="Blanco">
			.color{
				color: white;
			}
		</#if>
		<#if color_texto_botones=="Negro">
			.color{
				color: black;
			}
		</#if>
		.container {
		    max-width: ${resolucion};
		}								
		.multi-step-progress-bar>.active, .multi-step-progress-bar>.complete .divider {
		    color: ${color_titulos_botones};
		}
		.multi-step-progress-bar>.active .divider {
		    background-color: ${color_titulos_botones};
		    color: ${color_titulos_botones};
		}
		.microsite h3.title {
			color: ${color_titulos_botones};
		}
		.idioma >a.active, .idioma >a:focus, .idioma >a:hover {
    		color: ${color_idioma_paginas};
    	}
    	
    	.navbar-inverse .navbar-nav > .open > a, .navbar-inverse .navbar-nav > .open > a:hover, .navbar-inverse .navbar-nav > .open > a:focus {
    		background-color:${color_cabecera};
    		color: ${color_idioma_paginas};
    	}
    	
    	.navbar-inverse .navbar-nav .open .dropdown-menu>li>a{
    		color: ${color_menu};
    	}
    	
    	.navbar-nav>li>.dropdown-menu{
    		background-color: ${color_cabecera};
    	}
    	
    	.navbar-inverse .navbar-nav .open .dropdown-menu > li > a:hover, .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:focus {
		    color: ${color_idioma_paginas};
		}
    	
    	.navbar-inverse .navbar-nav>.active>a, .navbar-inverse .navbar-nav>.active>a:focus, .navbar-inverse .navbar-nav>.active>a:hover {
    		color: ${color_idioma_paginas};
    	}
    	.navbar-inverse .navbar-nav>li>a:focus, .navbar-inverse .navbar-nav>li>a:hover, .navbar-inverse .navbar-nav>li.selected>a{
    		color: ${color_idioma_paginas};
    	}
    	
		.redes{
			background: ${color_titulos_botones};
		}
		.idioma{
			color: ${color_menu};
		}
		.idioma a{
			color: ${color_menu};
		}
		.navbar-inverse .navbar-nav>li>a {
		    color: ${color_menu};
		}
		.microsite a{
			color: ${color_enlaces};
		}
		
		.microsite .dropdown-menu>li>a {
			color:${color_menu};
		}
		.microsite .dropdown-menu li a:hover{
			color: ${color_idioma_paginas};
		}
		
		.agenda-search-module .agenda-search-module-title, .agenda-results .agenda-results-grouptitle, .agenda-results .agenda-results-grouptitle, 
		.agenda-detail .agenda-detail-data .agenda-detail-title, .yui3-skin-sam .yui3-calendar-header-label, .yui3-skin-sam .yui3-calendar-weekday,
		#wrapper .breadcrumb>li.active{
		    color: ${color_titulos_botones};
		}
		
		.agenda-results .agenda-results-list .agenda-results-element .agenda-results-element-content .agenda-results-element-viewmore a {
		    background-color: ${color_titulos_botones};
		}
		
		.agenda-results .agenda-results-list .agenda-results-element .agenda-results-element-header, .agenda-detail .agenda-detail-data .agenda-detail-datetime {
		    border-bottom: 1px solid ${color_titulos_botones};
		}
		
		.yui3-skin-sam .yui3-calendar-day-selected, .yui3-skin-sam .yui3-calendar-day:hover {
		    background-color: ${color_titulos_botones}!important; 
		}
		
		.yui3-skin-sam .yui3-calendarnav-prevmonth:hover, [dir="rtl"] .yui3-skin-sam .yui3-calendarnav-nextmonth:hover,
		.yui3-skin-sam [dir="rtl"] .yui3-calendarnav-nextmonth:hover {
			border-right-color: ${color_titulos_botones};
		}
		
		.yui3-skin-sam .yui3-calendarnav-nextmonth:hover, [dir="rtl"] .yui3-skin-sam .yui3-calendarnav-prevmonth:hover,
		.yui3-skin-sam [dir="rtl"] .yui3-calendarnav-prevmonth:hover {
			border-left-color: ${color_titulos_botones};
		}
		
		.yui3-skin-sam .yui3-calendar-day-today {
		     border-color: ${color_titulos_botones}!important;
		}
		
		.agenda-search-module .agenda-search-module-form .agenda-search-module-form-button {
		    background-color: ${color_titulos_botones};
		    border-color: ${color_titulos_botones};
		}		
		
		.agenda-results .agenda-results-list .agenda-results-element .agenda-results-element-content .agenda-results-element-viewmore a {

			<#if color_texto_botones=="Blanco">
					color: white;
			</#if>
			<#if color_texto_botones=="Negro">
					color: black;
			</#if>
		
		}
		
		.agenda-results .agenda-results-list .agenda-results-element .agenda-results-element-content .agenda-results-element-viewmore a:hover {

			<#if color_texto_botones=="Negro">
					color: white;
			</#if>
		}
				
				
				
		<#if themeDisplay.isSignedIn()>
			.blankSpace{
				display: none;
			}
			.alertaPortada{
				display: block;
			}
			.portlet-column {
				min-height: 2em;
			}
			.agenda_layout .portlet-column {
			    padding-right: 1px;
			    border: dotted;
			    margin-bottom: 1em;
			    padding: 1em;
			    border-width: 0.01em;
			    border-color: lightgrey;
			}
		<#else>
			.alertaPortada{
				display: none;
			}
		</#if>
		<#if !mostrar_menu_navegacion||!(nav_items?size>1)>
			.idioma{
				padding-bottom: .8em;
			}
		</#if>
		
		.microsite .theme3 h1{
			font-size: 36px;
			font-weight: 500;
			color: ${color_titulos_h1};
		}
		.microsite .theme3 h2{
			font-size: 30px;
			font-weight: 500;
			color: ${color_titulos_h2};
		}
		.microsite .theme3 h3{
			font-size: 24px;
			font-weight: 500;
			color: ${color_titulos_h3};
		}
		
	</style>
		
	<script>
		define._amd = define.amd;
		define.amd = false;
	</script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.min.js"></script>	
	<script>
		define.amd = define._amd;
	</script>
</head>

<body class="${css_class}">
<#if themeDisplay.isSignedIn()>
	<div id="blankSpace"></div>
</#if>


<header>
    <div class="navbar-wrapper">
      <div class="container">
		<nav class="navbar-inverse <#if !themeDisplay.isSignedIn()>navbar-fixed-top navbar</#if>" id="nav">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
				<#if cabeceraID!=''>
              		<#if (mostrar_logo_portada || (!(themeDisplay.getScopeGroup().getDefaultPublicPlid() == layout.getPlid())))>
		              <#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone") />
						<#assign theme_groupID = htmlUtil.escape(theme_display.getCompanyGroupId()?string) />
						<#assign VOID = freeMarkerPortletPreferences.setValue("groupId", '${group_id}') />
						<#assign VOID = freeMarkerPortletPreferences.setValue("articleId", cabeceraID) />
						<@liferay_portlet["runtime"]
						defaultPreferences="${freeMarkerPortletPreferences}"
						portletProviderAction=portletProviderAction.VIEW
						instanceId="cabecera"
						portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" />
						${freeMarkerPortletPreferences.reset()}
					</#if>
				</#if>
            </div>
            
				            <div id="navbar" class="navbar-collapse collapse text-right" aria-expanded="false" style="height: 1px;">
        		    <#if (theme_display.getURLCurrent()?length > 3)>
						<div class="idioma">
	    		   			<#if (languages?size>1)>
								<#list languages as language>
									<#if themeDisplay.getLocale()[0..1] == language.getLanguage()>
						           		<#assign language_class = "active" />
									<#else>
										<#assign language_class = "" />
									</#if>
								    <a class="${language_class}" href="/${language.getLanguage()}${theme_display.getURLCurrent()[3..]}">
								        ${language.getLanguage()?upper_case}</a><#sep> | 
								 </#list>
		         		  	</#if>
						</div>
		            </#if>
		            <#if mostrar_menu_navegacion>
		            	<#if (nav_items?size>1)>
		            		<div class="microsite">	
								<#include "${full_templates_path}/navigation.ftl" />
							</div>
						</#if>
					</#if>
	            </div>
          </div>
        </nav> 
      </div> 
    </div>
	</header>
	<#if portadaID!=''>
		<#if (themeDisplay.getScopeGroup().getDefaultPublicPlid() == layout.getPlid())>
			  <#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone") />
				<#assign theme_groupID = htmlUtil.escape(theme_display.getCompanyGroupId()?string) />
				<#assign VOID = freeMarkerPortletPreferences.setValue("groupId", '${group_id}') />
				<#assign VOID = freeMarkerPortletPreferences.setValue("articleId", portadaID) />
				<@liferay_portlet["runtime"]
				defaultPreferences="${freeMarkerPortletPreferences}"
				portletProviderAction=portletProviderAction.VIEW
				instanceId="imagenPortada"
				portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" />
				${freeMarkerPortletPreferences.reset()}
		</#if>
	</#if>

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />
<div class="pt-0 ${wrapper_css} microsite" id="wrapper">
	<#if show_header>
		<header id="banner">
			<div class="navbar navbar-classic navbar-top py-3">
				<div class="container user-personal-bar">
					<div class="align-items-center autofit-row">
						<a class="${logo_css_class} align-items-center d-md-inline-flex d-sm-none d-none logo-md" href="${site_default_url}" title="<@liferay.language_format arguments="" key="go-to-x" />">
							<img alt="${logo_description}" class="mr-2" height="56" src="${site_logo}" />

							<#if show_site_name>
								<h1 class="font-weight-bold h2 mb-0 text-dark">${site_name}</h1>
							</#if>
						</a>

						<#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone", "destination": "/search"}) />

						<div class="autofit-col autofit-col-expand">
							<#if show_header_search>
								<div class="justify-content-md-end mr-4 navbar-form" role="search">
									<@liferay.search_bar default_preferences="${preferences}" />
								</div>
							</#if>
						</div>

						<div class="autofit-col">
							<@liferay.user_personal_bar />
						</div>
					</div>
				</div>
			</div>
			<div class="mb-4 navbar navbar-classic navbar-expand-md navbar-light pb-3">
				<div class="container footer-wrapper">
					<a class="${logo_css_class} align-items-center d-inline-flex d-md-none logo-xs" href="${site_default_url}" rel="nofollow">
						<img alt="${logo_description}" class="mr-2" height="56" src="${site_logo}" />

						<#if show_site_name>
							<h1 class="font-weight-bold h2 mb-0 text-dark">${site_name}</h1>
						</#if>
					</a>
					<#if mostrar_menu_navegacion>
						<#if (nav_items?size>1)>
							<#include "${full_templates_path}/navigation.ftl" />
						</#if>
					</#if>
				</div>
			</div>
		</header>
	</#if>
	
	<#if mostrar_migas>
		<#assign parentPlid = page.getParentPlid() />
		<#if parentPlid != 0>
			<div class="container">
			<nav id="breadcrumbs">
		            <@liferay.breadcrumbs />
		        </nav> 
			</div>
		</#if>
	</#if>
	
	<section class="${portal_content_css_class}" id="content">
		<h1 class="sr-only">${the_title}</h1>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
		
	</section>
	<#include "${full_templates_path}/footer.ftl" />
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<script type="text/javascript">
	
	<#if ( !themeDisplay.isSignedIn() && !(themeDisplay.getScopeGroup().getDefaultPublicPlid() == layout.getPlid()))>
		$("#wrapper")[0].style.paddingTop=$("nav").height()+10+"px";
		window.onorientationchange = function() {
		  setTimeout(function(){
		  	$("#wrapper")[0].style.paddingTop=$("nav").height()+10+"px";
		  },20);
		};
		</#if>
		<#if themeDisplay.getScopeGroup().getDefaultPublicPlid() == layout.getPlid()>
	   	 var  nav = document.getElementById('nav');
	   	 nav.style.background = hexToRgbA('${color_cabecera}',0.6);
	   	  nav.style.transition = "all 0.5s";
	      function hexToRgbA(hex,opacity){
		    var c;
		    if(/^#([A-Fa-f0-9]{3}){1,2}$/.test(hex)){
		        c= hex.substring(1).split('');
		        if(c.length== 3){
		            c= [c[0], c[0], c[1], c[1], c[2], c[2]];
		        }
		        c= '0x'+c.join('');
		        return 'rgba('+[(c>>16)&255, (c>>8)&255, c&255].join(',')+',' + opacity + ')';
		    }
		    throw new Error('Bad Hex');
		}
	      window.onscroll = function(){
	
	      	if (window.pageYOffset >100) {
				nav.style.background = hexToRgbA('${color_cabecera}',1);
	      		nav.style.boxShadow = "2px 2px 8px ${color_cabecera}";
	      	}
	      	else{
	      		if(!$("#navbar").hasClass("in")){
		      		nav.style.background = hexToRgbA('${color_cabecera}',0.6);
		      		nav.style.boxShadow = "none";
	      		}
	      	}
	      }
	      $('#nav').on('hide.bs.collapse', function () {
	      	if (window.pageYOffset <=100) {
			  	nav.style.background = hexToRgbA('${color_cabecera}',0.6);
	      		nav.style.boxShadow = "none";
			  }
			});
			$('#nav').on('show.bs.collapse', function () {
			  	nav.style.background = hexToRgbA('${color_cabecera}',1);
	      		nav.style.boxShadow = "2px 2px 8px ${color_cabecera}";
			});
		</#if>
		$('.gallery-responsive').slick({
		  dots: false,
		  infinite: true,
		  speed: 300,
		  slidesToShow: 3,
		  slidesToScroll: 3,
		  responsive: [
		    {
		      breakpoint: 1024,
		      settings: {
		        slidesToShow: 2,
		        slidesToScroll: 2,
		        infinite: true,
		        dots: false
		      }
		    }, 
		    { 
		      breakpoint: 600,
		      settings: {
		        slidesToShow: 3,
		        slidesToScroll: 1
		      }
		    },
		    {
		      breakpoint: 480,
		      settings: {
		        slidesToShow: 1, 
		        slidesToScroll: 1
		      }
		    }
		  ]
		  
		});
		$('#portlet_es_navarra_comun_agenda_buscador_web_portlet_ComunAgendaBuscadorPortlet').addClass("container");
   </script>
   
</body>

</html>