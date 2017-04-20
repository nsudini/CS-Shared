<div class="container">
	<div class="row">
		<div class="col-12">
			<div class="col-4 col-visit">
				<h2 class="siteHeader">Sign Up to Drive</h2>
			</div>
		</div>
	</div>


	<div class="row">
		<form class="form-horizontal" action="<?= BASE_URL ?>/drive_submit/<?= $rows[0]['date'] ?>/<?= $rows[0]['time'] ?>/<?= $rows[0]['site_name'] ?>" method="post">
			<div class="form-group">
			<label class="control-label col-sm-6" for="sitename">Site Name:</label>
				<div class="col-sm-10">
					<input name="sn" type="text" class="control-label col-sm-10" id="sitename" value="<?= $rows[0]['site_name'] ?>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="sitedate">Date:</label>
				<div class="col-sm-10">
					<input name="date" type="date" class="control-label col-sm-10" id="sitedate" value="<?= $rows[0]['date'] ?>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="sitetime">Time:</label>
				<div class="col-sm-10">
					<input name="time" type="time" class="control-label col-sm-10" id="sitetime" value="<?= $rows[0]['time'] ?>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="pickuptime">Pickup Time:</label>
				<div class="col-sm-10">
					<input name="pickuptime" required type="time" class="form-control" id="time" placeholder="Enter Time">
				</div>
			</div>
			<div class="form-group">
			<label class="control-label col-sm-6" for="car">Car Make/Model:</label>
				<div class="col-sm-10">
					<input name="car_name" required type="text" class="form-control" id="car" placeholder="Honda Civic">
				</div>
			</div>
			<div class="form-group">
			<label class="control-label col-sm-6" for="color">Car Color:</label>
				<div class="col-sm-10">
					<input name="car_color" required type="text" class="form-control" id="car_color" placeholder="Red">
				</div>
			</div>
			<div class="form-group">
			<label class="control-label col-sm-6" for="seats">Seats:</label>
				<div class="col-sm-10">
					<input name="seats" required type="number" class="form-control" id="seats">
				</div>
			</div>
			<div class="form-group">
			<label class="control-label col-sm-6" for="pickup_loc">Pickup Location:</label>
				<div class="col-sm-10">
					<input name="pickup_loc" required type="text" class="form-control" id="pickup_loc" placeholder="McComas">
				</div>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</div>
