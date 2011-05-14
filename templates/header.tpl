{secauthaction realm="0" comp="::" inst="::" level="ACCESS_ADMIN" assign="admin"} 
<div id="header">
	<div class="center_wrapper">
		
		<div id="toplinks">
			<div id="toplinks_inner">
				<a href="{modurl modname="Calendar"}">Calendar</a>
				| <a href="{modurl modname="ContentExpress" func="display" ceid="3" meid="-1"}">Parents</a>
				| <a href="{modurl modname="Downloads" func="sublevel" cid="526" start="0"}">Policies</a>
				| <a href="{modurl modname="Pages" func="display" pageid="4" meid="-1"}">Contact/About</a>
				| <a href="{modurl modname="Search"}">Search</a>
			</div>
		</div>
		<div class="clearer">&nbsp;</div>

		<div id="site_title">
			<h1><a href="index.php">{sitename}</a></h1>
			<p><i>{slogan}</i></p>
		</div>
	</div>
</div>

<div id="navigation">
	<div class="center_wrapper">
		<ul>
			<li><a href="index.php">Home</a></li>
			{if userloggedin($loggedin) eq 1}
			<!--  class="current_page_item" -->
			{if $admin eq true}
			<li><a class="xWB_sb_first" href="{modurl modname="Admin" func="adminpanel" type="admin"}" style='padding: 7px 8px 6px 8px;'><img src='images/icons/small/configure.gif' alt='Administrate Site'></a></li>
			{/if}
			<li><a href="{modurl modname="Profile"}">My Account</a></li>
			<li><a href="{modurl modname="Users" func="logout"}">Logout</a></li>
			<li><a href="{modurl modname="Web_Links"}">Links</a></li>
		{else}
		{pageaddvar name="javascript" value="javascript/ajax/prototype.js"}
		{pageaddvar name="javascript" value="javascript/ajax/scriptaculous.js?load=effects"}
		{pageaddvar name="javascript" value="`$themepath`/scripts/modalbox.js"}
		{pageaddvar name="stylesheet" value="`$themepath`/style/modalbox.css"}
			<li><a href="{modurl modname="Users" func="lostpassword"}">Lost Password?</a></li>
			<li><a class="xWB_sb_last" href="{modurl modname="Users" func="register"}">New User? Sign Up!</a></li>
		{/if}
			<li><a class="xWB_sb_first" href="{modurl modname="mGallery2"}">Photos</a></li>
			<li><a href="{modurl modname="Downloads"}">Downloads</a></li>
			<li><a href="http://www.facebook.com/westernbands" style='padding: 9px 8px 5px 8px;' title='Westernbands on facebook'><img src='{$themepath}/images/facebook.png' alt='facebook'></a></li>
			<li><a href="http://www.youtube.com/westernbands" style='padding: 6px 8px 5px 8px;' title='Youtube westernbands channel'><img src='{$themepath}/images/tube.png' alt='youtube'></a></li>
			<li><a href="podcasts/" style='padding: 6px;' title='Podcasts'><img src='{$themepath}/images/HSPodcast_32.png' alt='Podcasts'></a></li>
			<li><a href="mspodcasts/" style='padding: 6px;' title='Podcasts'><img src='{$themepath}/images/MSPodcast_32.png' alt='Podcasts'></a></li>
			<li><a href="https://www.edline.net/Index.page" style='padding: 7px 8px 6px 8px;' title='Edline'><img src='{$themepath}/images/edline.png' alt='edline'></a></li>
			{if userloggedin($loggedin) eq 1}
			<li><a href="{modurl modname="News" func="new"}" style='padding: 2px 8px; 2px 8px' title='submit news story'><img src='{$themepath}/images/addnews.gif' alt='submit news story'></a></li>
			{/if}
		</ul>
		
		<div class="clearer">&nbsp;</div>

	</div>
</div>