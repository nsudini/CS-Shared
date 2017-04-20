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
        $email = $_POST['email'];
        $pw = $_POST['pw'];
        $this->login($email, $pw);
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
      case 'drive_register':
        $site_id = $_GET['siteid'];
        $this->drive_register($site_id);
        break;
      case 'drive_submit':
        $sn = $_GET['name'];
        $date = $_GET['date'];
        $time = $_GET['time'];
        $ptime = $_POST['pickuptime'];
        $model = $_POST['car_name'];
        $color = $_POST['car_color'];
        $ploc = $_POST['pickup_loc'];
        $total = $_POST['seats'];
        $this->drive_submit($sn, $date, $time, $ptime, $model, $color, $total, $ploc);
        break;
      case 'manage_site':
        $this->manage_site();
        break;
      case 'delete_site':
        $site_id = $_GET['site_id'];
        $this->delete_site($site_id);
        break;
    }
  }

  public function home() {
    $db = new Db();

    $sites = $db->select("SELECT * FROM `site_visits`");
    $drivers = $db->select("SELECT * FROM `drivers`");
    $users = $db->select("SELECT * FROM `users`");

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
          $this->login($email, $pw);
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

  public function login($email, $pw) {
    if($email == '') {
      $this->logout();
    }
    else {
      $db = new Db();

      $rows = $db->select("SELECT * FROM `users` WHERE email='".$email."' and password='".$pw."'");

      if (count($rows) > 0) {
        $_SESSION['user'] = $email;
        if ($rows[0]['admin'] == 1) {
          $_SESSION['admin'] = 'admin';
        }
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

  public function drive_register($site_id) {

    if (isset($_SESSION['user']) && $site_id) {
      $db = new Db();

      $site_id = $db->quote($site_id);

      $rows = $db->select("SELECT * FROM `site_visits` WHERE id=".$site_id);

      include_once SYSTEM_PATH.'/view/header.tpl';
      include_once SYSTEM_PATH.'/view/drive_register.tpl';
      include_once SYSTEM_PATH.'/view/footer.tpl';
    }
    
  }

  public function drive_submit($sn, $date, $time, $ptime, $model, $color, $total, $ploc) {
    $db = new Db();

    $sn = $db->quote($sn);
    $date = $db->quote($date);
    $time = $db->quote($time);
    $ptime = $db->quote($ptime);
    $model = $db->quote($model);
    $color = $db->quote($color);
    $ploc = $db->quote($ploc);
    $seats = $db->quote($total);

    $site_row = $db->select("SELECT * FROM `site_visits` WHERE site_name=".$sn);
    $user_row = $db->select("SELECT * FROM `users` WHERE email=".$_SESSION['user']);

    $result = $db->query("INSERT INTO `drivers` (`pickup_time`,`user_id`, `email`,`site_id`, `total_seats`, `available`, `car_name`, `color`, `pickup_loc`) VALUES (" . $ptime . "," . $user_row[0]['id'] . ",'" . $user_row[0]['email'] . "'," . $site_row[0]['id'] . "," . $seats . "," . $seats . "," . $model . "," . $color . "," . $ploc . ")");

    if($result) {
      header('Location: '.BASE_URL);
    }
    else {
      echo 'error';
    }
  }

  public function manage_site() {
    $db = new Db();

    $sites = $db->select("SELECT * FROM `site_visits`");
    include_once SYSTEM_PATH.'/view/header.tpl';
    include_once SYSTEM_PATH.'/view/manage.tpl';
    include_once SYSTEM_PATH.'/view/footer.tpl';
  }

  public function delete_site($id) {
    $db = new Db();

    // $site_id = $db->quote($id);

    $site_row = $db->query("DELETE FROM `site_visits` WHERE id=".$id);

    if ($site_row) {
      echo 'not null';
    }
    else {
      echo $id;
    }
    
    $this->manage_site();
  }
}
