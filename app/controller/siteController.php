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
      case 'submit_site':
        $sn = $_POST['sn'];
        $date = $_POST['date'];
        $time = $_POST['time'];
        $this->submit_site($sn, $date, $time);
        break;
      case 'create_account':
        $this->createaccount();
        break;
      case 'submit_account':
        $fn = $_POST['first_name'];
        $ln = $_POST['last_name'];
        $email = $_POST['email'];
        $pw = $_POST['password'];
        $pw2 = $_POST['password2'];
        $this->submit_account($fn, $ln, $email, $pw, $pw2);
        break;
    }
  }

  public function home() {
    $db = new Db();

    $rows = $db->select("SELECT * FROM `site_visits`");

    include_once SYSTEM_PATH.'/view/header.tpl';
    include_once SYSTEM_PATH.'/view/home.tpl';
    include_once SYSTEM_PATH.'/view/footer.tpl';
  }

  public function addsite() {
    include_once SYSTEM_PATH.'/view/header.tpl';
    include_once SYSTEM_PATH.'/view/addsite.tpl';
    include_once SYSTEM_PATH.'/view/footer.tpl';
  }

  public function createaccount() {
    include_once SYSTEM_PATH.'/view/header.tpl';
    include_once SYSTEM_PATH.'/view/createaccount.tpl';
    include_once SYSTEM_PATH.'/view/footer.tpl';
  }

  public function submit_account($fn, $ln, $email, $pw, $pw2) {
    $db = new Db();
    $rows = $db->select("SELECT * FROM `users` WHERE email='".$email."'");

    $fn = $db->quote($fn);
    $ln = $db->quote($ln);
    $email = $db->quote($email);
    $pw = $db->quote($pw);
    $pw2 = $db->quote($pw2);

    if (count($rows) > 0) {
      echo 'account exists already';
    }

    else {
      if ($pw2 == $pw && $fn && $ln) {
        $result = $db->query("INSERT INTO `users` (`first_name`,`last_name`, `email`, `password`, `admin`) VALUES (" . $fn . "," . $ln . "," . $email . "," . $pw . ", 0)");

        if($result) {
          // header('Location: '.BASE_URL);
          $this->login($email, $pw);
          // echo 'result not null';
          echo 'account created';
        }
        else {
          $this->createaccount();
          echo "User already exists";
        }

      }
      else {
        echo "passwords don't match or empty first/last name";
      }
    }

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

  public function submit_site($sn, $date, $time) {
    $db = new Db();

    $sn = $db->quote($sn);
    $date = $db->quote($date);
    $time = $db->quote($time);

    $result = $db->query("INSERT INTO `site_visits` (`site_name`,`date`, `time`) VALUES (" . $sn . "," . $date . "," . $time .")");

    if($result) {
      header('Location: '.BASE_URL);
    }
    else {
      echo "failed to add site visit";
    }
  }
}
