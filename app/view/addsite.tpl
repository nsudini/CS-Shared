<div class="container">
	<div class="row">
		<div class="col-12">
			<div class="col-4 col-visit">
				<h2 class="siteHeader">Create Site Visit</h2>
			</div>
		</div>
	</div>


	<div class="row">
		<form class="form-horizontal" action="<?= BASE_URL ?>/submit_site" method="post">
			<div class="form-group">
			<label class="control-label col-sm-6" for="sitename">Site Name:</label>
				<div class="col-sm-10">
					<input name="sn" required type="text" class="form-control" id="sitename" placeholder="Enter Site Name">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="date">Date:</label>
				<div class="col-sm-10">
					<input name="date" required type="date" class="form-control" id="date" placeholder="Enter Date">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="time">Time:</label>
				<div class="col-sm-10">
					<input name="time" required type="time" class="form-control" id="time" placeholder="Enter Time">
				</div>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</div>
