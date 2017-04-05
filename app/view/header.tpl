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

		<script>
			$(document).ready(function () {
				$('.dropdown-toggle').dropdown();

				$(".dropdown-item").click(function(){
					$('#dropdownMenuButton').html($(this).text());
				});
			});

			
		</script>
	</head>

	<body>
		<header>
			<a class="head" href="<?= BASE_URL ?>">
				<h1 class="logo">CS<sup>Shared</sup></h1>
			</a>
			<form class="form-inline loginForm">
				<label class="sr-only" for="inlineFormInput">Username</label>
				  <input type="text" class="form-control mb-2 mr-sm-2 mb-sm-0" id="inlineFormInput" placeholder="Username">

				  <label class="sr-only" for="inlineFormInputGroup">Password</label>
				  <div class="input-group mb-2 mr-sm-2 mb-sm-0">
				    <input type="password" class="form-control" id="inlineFormInputGroup" placeholder="Password">
				  </div>
				  <button type="submit" class="btn btn-primary loginbutton">Login</button>
			</form>

			<ul class='primary-nav'>
				<li><a href="<?= BASE_URL ?>">Home</a></li>
				<li><a href="<?= BASE_URL ?>/addsite">Add Visit</a></li>
				<li><a href="<?= BASE_URL ?>">Manage Schedule</a></li>
			</ul>
			
		</header>