{pnsecauthaction realm="0" comp="::" inst="::" level="ACCESS_ADMIN" assign="admin"} 
<div id="header">
	<div class="center_wrapper">
		
		<div id="toplinks">
			<div id="toplinks_inner">
				<a href="{pnmodurl modname="Calendar"}">Calendar</a>
				| <a href="{pnmodurl modname="ContentExpress" func="display" ceid="3" meid="-1"}">Parents</a>
				| <a href="{pnmodurl modname="Downloads" func="sublevel" cid="526" start="0"}">Policies</a>
				| <a href="{pnmodurl modname="Pages" func="display" pageid="4" meid="-1"}">Contact/About</a>
				| <a href="{pnmodurl modname="Search"}">Search</a>
			</div>
		</div>
		<div class="clearer">&nbsp;</div>

		<div id="site_title">
			<h1><a href="index.php">{sitename}</a></h1>
			<p><i>{slogan}</i></p>
		</div>
		{getWBpm}
	</div>
</div>

<div id="navigation">
	<div class="center_wrapper">
		<ul>
			<li><a href="index.php">Home</a></li>
			{if pnuserloggedin($loggedin) eq 1}
			<!--  class="current_page_item" -->
			{if $admin eq true}
			<li><a class="xWB_sb_first" href="{pnmodurl modname="Admin" func="adminpanel" type="admin"}" style='padding: 7px 8px 6px 8px;'><img src='images/icons/small/configure.gif' alt='Administrate Site'></a></li>
			{/if}
			<li><a href="{pnmodurl modname="Profile"}">My Account</a></li>
			<li><a href="{pnmodurl modname="Users" func="logout"}">Logout</a></li>
			<li><a href="{pnmodurl modname="Web_Links"}">Links</a></li>
		{else}
		{pnpageaddvar name="javascript" value="javascript/ajax/prototype.js"}
		{pnpageaddvar name="javascript" value="javascript/ajax/scriptaculous.js?load=effects"}
		{pnpageaddvar name="javascript" value="`$themepath`/scripts/modalbox.js"}
		{pnpageaddvar name="stylesheet" value="`$themepath`/style/modalbox.css"}
			<li><a href="{pnmodurl modname="Users" func="loginscreen" pop="1"}" onclick="
Modalbox.show(this.href, {title: 'Please Login...', width: 350, height: 200}); return false;
">Login</a></li>
			<li><a href="{pnmodurl modname="Users" func="lostpassword"}">Lost Password?</a></li>
			<li><a class="xWB_sb_last" href="{pnmodurl modname="Users" func="register"}">New User? Sign Up!</a></li>
		{/if}
			<li><a class="xWB_sb_first" href="{pnmodurl modname="mGallery2"}">Photos</a></li>
			<li><a href="{pnmodurl modname="Downloads"}">Downloads</a></li>
			<li><a href="http://www.facebook.com/westernbands" style='padding: 9px 8px 5px 8px;' title='Westernbands on facebook'><img src='{$themepath}/images/facebook.png' alt='facebook'></a></li>
			<li><a href="http://www.youtube.com/westernbands" style='padding: 6px 8px 5px 8px;' title='Youtube westernbands channel'><img src='{$themepath}/images/tube.png' alt='youtube'></a></li>
			<li><a href="podcasts/" style='padding: 6px;' title='Podcasts'><img src='{$themepath}/images/HSPodcast_32.png' alt='Podcasts'></a></li>
			<li><a href="mspodcasts/" style='padding: 6px;' title='Podcasts'><img src='{$themepath}/images/MSPodcast_32.png' alt='Podcasts'></a></li>
			<li><a href="https://www.edline.net/Index.page" style='padding: 7px 8px 6px 8px;' title='Edline'><img src='{$themepath}/images/edline.png' alt='edline'></a></li>
			{if pnuserloggedin($loggedin) eq 1}
			<li><a href="{pnmodurl modname="News" func="new"}" style='padding: 2px 8px; 2px 8px' title='submit news story'><img src='{$themepath}/images/addnews.gif' alt='submit news story'></a></li>
			{/if}
		</ul>
		
		<div class="clearer">&nbsp;</div>

	</div>
</div>