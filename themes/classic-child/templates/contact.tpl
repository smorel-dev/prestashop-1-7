{extends file='page.tpl'}

{block name='page_content' prepend}
  <p style="padding:10px; border: 1px solid red;">page_content : prepend</p>
{/block}

{block name='page_content'}
  <p style="background:red;">Test steph</p>

  {widget name="contactform"}
{/block}

{block name='page_content' append}
  <p style="padding:10px; border: 1px solid red;">page_content : append</p>
{/block}



{block name='page_header_container' prepend}
  <p style="padding:10px; border: 1px solid red;">page_header_container : prepend</p>
{/block}


{block name='page_header_container' append}
  <p style="padding:10px; border: 1px solid red;">page_header_container : append</p>
{/block}

