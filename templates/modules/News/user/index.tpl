<div class="news_index">
    <h3 class="news_title">{$preformat.title|safehtml}</h3>
    <div class="news_meta">{gt text='Posted'} {gt text='by %1$s on %2$s' tag1=$info.contributor tag2=$info.from|dateformat:'datetimebrief'}
        {if !empty($info.categories)}
        &nbsp;&bull;&nbsp;
        {gt text='Filed under:'}
        {foreach name='categorylinks' from=$preformat.categories item='categorylink'}
        {$categorylink}{if $smarty.foreach.categorylinks.last neq true},&nbsp;{/if}
        {/foreach}
        {/if}
    </div>

    <div class="news_body">
        {if $modvars.News.picupload_enabled AND $info.pictures gt 0}
        <div class="news_photoindex news_thumbsindex" style="float:{$modvars.News.picupload_index_float}">
            {if $modvars.ZConfig.shorturls}
                <a href="{modurl modname='News' type='user' func='display' sid=$info.sid from=$info.from urltitle=$info.urltitle}">{*<span></span>*}<img src="{$modvars.News.picupload_uploaddir}/pic_sid{$info.sid}-0-thumb.jpg" alt="{gt text='Picture %1$s for %2$s' tag1='0' tag2=$info.title}" /></a>
            {else}
                <a href="{modurl modname='News' type='user' func='display' sid=$info.sid}">{*<span></span>*}<img src="{$modvars.News.picupload_uploaddir}/pic_sid{$info.sid}-0-thumb.jpg" alt="{gt text='Picture %1$s for %2$s' tag1='0' tag2=$info.title}" /></a>
            {/if}
        </div>
        {/if}
        {$preformat.hometext|notifyfilters:'news.hook.articlesfilter.ui.filter'|safehtml}
    </div>

    {if $preformat.notes neq ''}
    <p class="news_meta">{$preformat.notes|notifyfilters:'news.hook.articlesfilter.ui.filter'|safehtml}</p>
    {/if}
    {if !empty($preformat.readmore)}
      <p class="news_meta z-right">{$preformat.readmore}</p>
    {/if}

    <div class="news_footer">
		<span>
			{articleadminlinks sid=$info.sid}
		</span>
		<span>
        <a href="{$links.print}" title="print story">{img class='z-middle' modname="core" set="icons/extrasmall" src="printer.png" alt="print story"}</a>
        {checkpermission component="News::" instance=".*" level="ACCESS_READ" assign="readaccess"}
        {if $modvars.News.pdflink && $readaccess}
        &nbsp;<a title="PDF" href="{modurl modname='News' type='user' func='displaypdf' sid=$info.sid}" target="_blank"><img src="modules/News/images/pdf.gif" class='z-middle' width="16" height="16" alt="PDF" /></a>
        {/if}
        </span>
		<span style='float:left;padding-left:1em;'>
			{$info.counter} {gt text='reads'}
			{if $preformat.commentlink|strip_tags:false ne ""}&nbsp;/&nbsp;{img src="comment.gif" alt="comment" style="vertical-align:top;"}{$preformat.commentlink}{/if}
		</span>
		<span class='z-clearer'></span>
    </div>
</div>
