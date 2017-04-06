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
      case 'login':
        $un = $_POST['un'];
        $pw = $_POST['pw'];
        $this->login($un, $pw);
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

  public function login($un, $pw) {
    if($un == '') {
      $this->logout();
    }
    else {
      $db = new Db();

      $rows = $db->select("SELECT * FROM `users` WHERE username='".$un."' and password='".$pw."'");

      if (count($rows) > 0) {
        $_SESSION['user'] = $un;
      }

      header('Location: '.BASE_URL);
    }
  }

  public function logout() {
    session_unset();
    session_destroy();
    header('Location: '.BASE_URL);
    exit();
  }
}
