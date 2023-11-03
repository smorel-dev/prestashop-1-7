{*extends file=$layout*}
{extends file='parent:catalog/product.tpl'}

{block name='page_header'}
  <h1 class="h1" style="background:red;">{block name='page_title'}{$product.name}{/block}</h1>
{/block}