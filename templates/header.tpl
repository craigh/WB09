{checkpermission realm="0" component="::" instance="::" level="ACCESS_ADMIN" assign="admin"}
{userloggedin assign='userloggedin'}
<div id="header">
	<div class="center_wrapper">
		<div id="toplinks">
			<div id="toplinks_inner">
                {if $userloggedin}
				<a href="{modurl modname="Profile" type='user' func='main'}">My Account</a>
				| <a href="{modurl modname="Users" type='user' func="logout"}">Logout</a>
                {else}
                <a href="{modurl modname="Users" type='user' func='login'}">Login</a>
                {/if}
				| <a href="{modurl modname="Pages" type='user' func="display" pageid="4" meid="-1"}">Contact/About</a>
				| <a href="{modurl modname="Search" type='user' func='form'}">Search</a>
			</div>
		</div>
		<div class="clearer">&nbsp;</div>

		<div id="site_title">
			<h1><a href="index.php">{$modvars.ZConfig.sitename}</a></h1>
			<h5><em>{$modvars.ZConfig.slogan}</em></h5>
		</div>
	</div>
</div>

<div id="navigation">
	<div class="center_wrapper">
		<ul>
			<li><a href="index.php"><img src='{$themepath}/images/icon_home.gif' alt='home'>&nbsp;Home</a></li>
			{if $admin eq true}
			<li><a class="xWB_sb_first" href="{modurl modname="Admin" type="admin" func="adminpanel"}" style='padding: 7px 8px 6px 8px;'><img src='images/icons/small/configure.png' alt='Administrate Site'></a></li>
			{/if}
			<li><a href="{modurl modname="Calendar" type='user' func='main'}" style='padding: 10px 8px 7px 8px;'><img src='{$themepath}/images/icon_calendar.png' alt='calendar' style='vertical-align:middle; margin-top:-6px;'>&nbsp;&nbsp;Calendar</a></li>
			<li><a href="{modurl modname="Content" type='user' func="view" pid="2"}">Parents</a></li>
			<li><a href="{modurl modname="Downloads" type='user' func="view" category="526"}">Policies</a></li>
			<li><a href="{modurl modname="Downloads" type='user' func='main'}">Downloads</a></li>
			<li><a href="http://www.facebook.com/westernbands" style='padding: 6px 8px 5px 8px;' title='Westernbands on facebook'><img src='{$themepath}/images/icon_facebook.png' alt='facebook'></a></li>
			<li><a href="http://www.youtube.com/westernbands" style='padding: 6px 8px 5px 8px;' title='Youtube westernbands channel'><img src='{$themepath}/images/tube.png' alt='youtube'></a></li>
			<li><a href="podcasts/" style='padding: 6px;' title='HS Podcasts'><img src='{$themepath}/images/HSPodcast_32.png' alt='Podcasts'></a></li>
			<li><a href="mspodcasts/" style='padding: 6px;' title='MS Podcasts'><img src='{$themepath}/images/MSPodcast_32.png' alt='Podcasts'></a></li>
			<li><a href="{modurl modname="Weblinks" type='user' func='main'}">Links</a></li>
			<!-- li><a href="{modurl modname="mGallery2" type='user' func='main'}">Photos</a></li -->
		</ul>
		
		<div class="clearer">&nbsp;</div>
        
        {blockposition name=topnav}

	</div>
</div>
<div id="theme_navigation_bar" class="z-clearfix">
</div>