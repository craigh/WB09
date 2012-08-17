<ul>
{foreach from=$news item='news' key='date'}
<li class='pc_blockdate' style='border: 0;'>{$date|dateformat:'%b %e, %Y'}</li>
<li style='border: 0;'><ul>
    {foreach from=$news item='article'}
    <li class='pc_blockevent' style='border: 0;'>
        {$article.preformat.title|safehtml}
        {if isset($article.info.commentcount)}&nbsp;({$article.info.commentcount}){/if}
    </li>
    {/foreach}
</ul></li>
{/foreach}
</ul>