<?php

include_once '../global.php';

// get the identifier for the page we want to load
$action = $_GET['action'];

// instantiate a SiteController and route it
$pc = new SiteController();
$pc->route($action);

class SiteController {

  public function route($action) {
    switch ($action) {
      case 'home':
        $this->home();
        break;
      case 'addsite':
        $this->addsite();
        break;
    }
  }

  public function home() {
    include_once SYSTEM_PATH.'/view/header.tpl';
    include_once SYSTEM_PATH.'/view/home.tpl';
    include_once SYSTEM_PATH.'/view/footer.tpl';
  }

  public function addsite() {
    include_once SYSTEM_PATH.'/view/header.tpl';
    include_once SYSTEM_PATH.'/view/addsite.tpl';
    include_once SYSTEM_PATH.'/view/footer.tpl';
  }

}
