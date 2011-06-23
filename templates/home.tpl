<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset={charset}" />
<meta name="description" content="{$metatags.description}" />
<meta name="keywords" content="{$metatags.keywords}" />
<meta name="ROBOTS" content="INDEX,FOLLOW"/>
<meta name="resource-type" content="document"/>
<meta http-equiv="expires" content="0"/>
<meta name="author" content="{$modvars.ZConfig.sitename}"/>
<meta name="copyright" content="Copyright (c) 2009 by {$modvars.ZConfig.sitename}"/>
<meta name="revisit-after" content="1 days"/>
<meta name="distribution" content="Global"/>
<meta name="generator" content="zikula - http://zikula.com"/>
<meta name="rating" content="General"/>
<title>{pagegetvar name='title'}</title>
<link rel="icon" href="{$imagepath}/icon.png" type="image/png"/>
<link rel="shortcut icon" href="{$imagepath}/favicon.ico"/>
<link rel="stylesheet" href="{$themepath}/style/style.css" type="text/css"/>
{pageaddvar name="javascript" value="javascript/ajax/prototype.js"}
{pageaddvar name="javascript" value="javascript/ajax/scriptaculous.js?load=effects"}

</head>

<body>

{include file="header.tpl"}

<div id="layout_body">
	
	<div id="main_wrapper_outer">
		<div id="main_wrapper_inner">
			<div class="center_wrapper">

				<div class="left" id="main">
					<div id="main_content">
                        {blockposition name='left'}
                        <div class="col3 left" style='width:50%;'>
                            <div class="col3_content">
                                {blockposition name='mainleft'}
                            </div>
                        </div>
                        <div class="col3 right" style='width:50%;'>
                            <div class="col3_content">
                                {blockposition name='mainright'} 
                            </div>
                        </div>
                        <div class="clearer">&nbsp;</div>
                        {blockposition name='center'}
                        {$maincontent}
                    </div>
			</div>
				<div class="right" id="sidebar">

					<div id="sidebar_content">
					
						
{blockposition name='right'} 
</div>

				</div>

			</div>
			
			<div class="clearer">&nbsp;</div>

		</div>
	</div>
</div>

<div id="dashboard">
	<div id="dashboard_content">
		<div class="center_wrapper">

			<div class="col3 left">
				<div class="col3_content">
{blockposition name='footleft'} 
					

				</div>
			</div>

			<div class="col3mid left">
				<div class="col3_content">

					{blockposition name=footcenter} 

				</div>
			</div>

			<div class="col3 right">
				<div class="col3_content">
{blockposition name='footright'} 
					

				</div>
			</div>

			<div class="clearer">&nbsp;</div>

		</div>
	</div>
</div>

<div id="footer">
	<div class="center_wrapper">

		<div class="left">
			Copyright &copy; 2001-{'Y'|date} {$modvars.ZConfig.sitename} - {$modvars.ZConfig.slogan}		</div>
		<div class="right">
			<a href="http://templates.arcsin.se/">Website template</a> by <a href="http://arcsin.se/">Arcsin</a>&nbsp;Zikula Theme by<a href="http://www.postnuke-themes.de"> Charlie</a>
		</div>
		
		<div class="clearer">&nbsp;</div>

	</div>
</div>

</body>
</html>