<?php
/**
 * Xanthia plugin
 * 
 * This file is a plugin for Xanthia, the PostNuke implementation of Smarty
 *
 * @version      $Id$
 * @author       Craig Heydenburg
 * @link         http://www.soundwebdev.com  Sound Web Development
 * @copyright    Copyright (C) 2009 by Sound Web Development
 * @license      http://www.gnu.org/copyleft/gpl.html GNU General Public License
 */ 

/**
 * Smarty function to return PM status and information
 * 
 * Example
 *   {getWBpm}
 *   {getWBpm assign="varname"}
 * 
 * @author		 Craig Heydenburg
 * @since        3/10/2009
 * @param        array       $params      All attributes passed to this function from the template
 * @param        object      &$smarty     Reference to the Smarty object
 */
function smarty_function_getWBpm($params, &$smarty)
{

    extract($params);
    
    if (!pnModAvailable("InterCom")) return;
    
	if ($smarty->isloggedin) {
		$class = " class='msgl'";
		$msgdata = pnModAPIFunc('InterCom', 'user', 'getmessagecount');
		if ($msgdata['unread'] > 0) {
			$class = " class='msgr'";
		}

    
    
		$unread = $msgdata['unread'];
		$total = $msgdata['totalin'];
			
		if($unread>0)
		{
			$title = $unread." New Private Messages";
			$spanclass = "WBPMunread";
			$content = $unread;
		} else if (($unread==0) && ($total>0)) {
			$title = $total." Old Private Messages";
			$spanclass="WBPMallread";
			$content = $total;
		} else {
			$title = "No Private Messages";
			$spanclass="WBPMnone";
			$content = "&nbsp;";
		}

		unset($msgdata);

		$output = "<div id='mail_notify'><a".$class." href='index.php?module=InterCom' title='".$title."'><span class='".$spanclass."'>".$content."</span></a></div>";		
    }

	
	if (isset($assign)) {
        $params['getWBpm'] = $output;
        $smarty->assign($assign, $output);
    } else {
        return $output;        
    }    
}
?>