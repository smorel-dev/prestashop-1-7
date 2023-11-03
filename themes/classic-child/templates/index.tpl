{extends file='page.tpl'}

    {block name='page_content_container'}
      <section id="content" class="page-home">
        {block name='page_content_top'}{/block}

        {block name='page_content' prepend}
          <p style="padding:10px; border: 1px solid red;">{l s='exceptional closure on November 11, 2023' d='Shop.ThemeEnfant'}</p>
        {/block}

        {block name='page_content'}
          {block name='hook_home'}
            {$HOOK_HOME nofilter}
          {/block}
        {/block}
      </section>
    {/block}

