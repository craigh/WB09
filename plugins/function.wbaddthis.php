<?php
/**
 * Xanthia plugin
 * 
 * This file is a plugin for Xanthia, the Zikula implementation of Smarty
 *
 * @version      $Id$
 * @author       Craig Heydenburg
 * @link         http://www.soundwebdev.com  Sound Web Development
 * @copyright    Copyright (C) 2009 by Sound Web Development
 * @license      http://www.gnu.org/copyleft/gpl.html GNU General Public License
 */ 

/**
 * Smarty function to insert AddThis button
 * 
 * Example
 *   {wbaddthis url="" title=""}
 *   {wbaddthis url="" title="" assign="varname"}
 * 
 * @author		 Craig Heydenburg
 * @since        3/20/2009
 * @param        array       $params      All attributes passed to this function from the template
 * @param        object      &$smarty     Reference to the Smarty object
 */
function smarty_function_wbaddthis($params, &$smarty)
{

    extract($params);
    // expecting params: url & title
    
	PageUtil::addVar('rawtext', '<script type="text/javascript">var addthis_pub="westernbands"</script>');
	PageUtil::addVar('rawtext', '<script type="text/javascript">var addthis_options = "email, facebook, twitter, myspace, more";</script>');
	PageUtil::addVar('javascript', 'http://s7.addthis.com/js/200/addthis_widget.js');
	
	$output .= "<a href=\"http://www.addthis.com/bookmark.php\" onmouseOver=\"return addthis_open(this, '', '$url', '$title')\" onmouseOut=\"addthis_close()\" onclick=\"return addthis_sendto()\"><img src=\"http://s7.addthis.com/static/btn/sm-share-en.gif\" width=\"83\" height=\"16\" alt=\"Bookmark and Share\" style=\"border:0\"/></a>";		

	
	if (isset($assign)) {
        $params['wbaddthis'] = $output;
        $smarty->assign($assign, $output);
    } else {
        return $output;        
    }    
}