{insert name='getstatusmsg'}

{section name='newsview' loop=$newsitems}
    {$newsitems[newsview]}
{/section}

{if $newsitems}
{pager display='page' rowcount=$pager.numitems limit=$pager.itemsperpage posvar='page' maxpages='10'}
{/if}