<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="Description" content="Get a Ride to CS Squared Site Visits">
		<title> CS Shared </title>

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
  	<link rel="stylesheet" href="<?= BASE_URL ?>/public/css/style.css">

  	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    <script src="<?= BASE_URL ?>/public/js/js.js"></script>
	</head>

	<body>
		<header>
			<h1 class="logo">CS<sup>Shared</sup></h1>
			<form class="form-inline loginForm">
				<label class="sr-only" for="inlineFormInput">Username</label>
				  <input type="text" class="form-control mb-2 mr-sm-2 mb-sm-0" id="inlineFormInput" placeholder="Username">

				  <label class="sr-only" for="inlineFormInputGroup">Password</label>
				  <div class="input-group mb-2 mr-sm-2 mb-sm-0">
				    <input type="password" class="form-control" id="inlineFormInputGroup" placeholder="Password">
				  </div>
				  <button type="submit" class="btn btn-primary loginbutton">Login</button>
			</form>

		</header>
		<div class="bar">

		</div>

		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="col-2 col-visit">
						<h2 class="siteHeader">Site Visits</h2>
					</div>
					<div class="dropdown col-2 dropcol">
  						<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Feb 27 - Mar 3</button>
						<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenuButton">
							<li class="dropdown-item">Feb 27 - Mar 3</li>
							<li class="dropdown-item">Mar 6 - Mar 10</li>
							<li class="dropdown-item">Mar 13 - Mar 17</li>
							<li class="dropdown-item">Mar 20 - Mar 24</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row site">
				<div class="col-8 colsite">
					<h4 class="siteName">Margaret Beeks Elementary School</h4>
					<h6 class="siteDate">(Feb 13, 3 PM)</h6>
				</div>
			</div>
			<div class="row driver">
				<div class="col-8 coldriver">
					<h5 class="driver">Driver 1: 3 Seats</h5>
					<button type="submit" class="btn btn-primary btn-sm request">Request</button>
				</div>
			</div>
			<div class="row addDriver">
				<div class="col-6 coldriver">
					<button type="submit" class="btn btn-primary btn-sm driver">Sign Up to Drive</button>
				</div>
			</div>
		</div>

	</body>
</html>