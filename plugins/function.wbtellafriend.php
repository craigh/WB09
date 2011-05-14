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
 * Smarty function to insert Tell a Friend button
 * 
 * Example
 *   <!--[wbtellafriend url="" title=""]-->
 *   <!--[wbtellafriend url="" title="" assign="varname"]-->
 * 
 * @author		 Craig Heydenburg
 * @since        3/20/2009
 * @param        array       $params      All attributes passed to this function from the template
 * @param        object      &$smarty     Reference to the Smarty object
 */
function smarty_function_wbtellafriend($params, &$smarty)
{

    extract($params);
    
    // expect $url & $title
    if ((!isset($url)) or (!isset($title))) return FALSE;

	$baseurl=pnGetBaseURL();
	$url=$baseurl.$url;

	PageUtil::addVar('javascript', 'http://cdn.socialtwist.com/2009032113153/script.js');
	
	$output .= "<a class=\"st-taf\" href=\"http://tellafriend.socialtwist.com:80\" onclick=\"return false;\" style=\"border:0;padding:0;margin:0;\"><img alt=\"SocialTwist Tell-a-Friend\" style=\"border:0;padding:0;margin:0;\" src=\"http://images.socialtwist.com/2009032113153/button.png\"onmouseout=\"hideHoverMap(this)\" onmouseover=\"showHoverMap(this, '2009032113153', '".$url."', '".$title."')\" onclick=\"cw(this, {id:'2009032113153', link: '".$url."', title: '".$title."' });\"/></a>";		

	
	if (isset($assign)) {
        $params['wbtellafriend'] = $output;
        $smarty->assign($assign, $output);
    } else {
        return $output;        
    }    
}