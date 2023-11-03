<?php

if (!defined('_PS_VERSION_')) {
  exit;
}

class Ps_SearchbarOverride extends Ps_Searchbar
{
  public function __construct()
  {
    parent::__construct();

    // Because $templateFile is private...
    $this->templateFile = 'module:ps_searchbar/ps_searchbar.tpl';
  }

  public function renderWidget($hookName, array $configuration = [])
  {
    $this->smarty->assign($this->getWidgetVariables($hookName, $configuration));
    //return $this->fetch($this->templateFile);

    ob_start();
    echo $this->fetch($this->templateFile);
    $html = ob_get_clean();

    $html = str_replace('class="search-widgets"', 'class="search-widgets module-override-steph"', $html);

    $html .= '<p style="text-align: right">Override PHP class : Ps_Searchbar</p>';

    return $html;
  }
}
