{assign var=link value=$feed.feed->get_image_link()}
<ul class="feeds-list">
{assign var=feeditems value=$feed.feed->get_items(0, $numitems)}
{foreach from=$feeditems item=feeditem}
    {assign var=feeditemlink value=$feeditem->get_link()}
    {assign var=feeditemtitle value=$feeditem->get_title()}
        <li><a href="{$feeditemlink}" target="_blank">{$feeditemtitle}</a>
        </li>
{/foreach}
</ul>
<p style='text-align:center;font-weight:bold;'><a href="{$link}">Full WHS Sports Calendar</a></p>