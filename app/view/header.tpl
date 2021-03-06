<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="Description" content="Get a Ride to CS Squared Site Visits">
		<title> CS Shared </title>

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
  		<link rel="stylesheet" href="<?= BASE_URL ?>/public/css/style.css">

  	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
	</head>

	<body>
		<header>
			<a class="head" href="<?= BASE_URL ?>">
				<!-- <h1 class="logo">CS<sup>Shared</sup></h1> -->
				<img src="<?= BASE_URL ?>/public/img/CSSharedLogo.png" class="logo">
			</a>
			<form class="form-inline loginForm" action="<?= BASE_URL ?>/login" method="post">
				<?php if (!isset($_SESSION['user'])) { ?>
					<label class="sr-only" for="inlineFormInput">Email</label>
				  <input name="email" type="text" class="form-control mb-2 mr-sm-2 mb-sm-0" id="inlineFormInput" placeholder="Email">

				  <label class="sr-only" for="inlineFormInputGroup">Password</label>
				  <div class="input-group mb-2 mr-sm-2 mb-sm-0">
				    <input name="pw" type="password" class="form-control" id="inlineFormInputGroup" placeholder="Password">
				  </div>
				<?php } ?>

				<?php if (isset($_SESSION['user'])) { ?>
					<button type="submit" class="btn btn-primary loginbutton">Logout</button>
				<?php } else { ?>
			  	<button type="submit" class="btn btn-primary loginbutton">Login</button>
			  	<!-- <a href="<?= BASE_URL ?>/create_account" id='signupLink'><button class="btn btn-primary loginbutton">Sign Up!</button></a> -->
				<?php } ?>
			</form>
			<?php if (!isset($_SESSION['user'])) { ?>
				<a href="<?= BASE_URL ?>/create_account" id='signupLink'><button class="btn btn-primary">Sign Up!</button></a>
			<?php } ?>
			<!-- <a href="<?= BASE_URL ?>/create_account" id='signupLink'>Sign Up!</a> -->

			<ul class='primary-nav'>
				<li><a href="<?= BASE_URL ?>">Home</a></li>
				<?php if (isset($_SESSION['user']) && $_SESSION['admin'] == 'admin') { ?>
					<li><a href="<?= BASE_URL ?>/addsite">Add Visit</a></li>
					<li><a href="<?= BASE_URL ?>/manage">Manage Schedule</a></li>
				<?php } ?>
			</ul>

		</header>
