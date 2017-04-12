<div class="container">
	<div class="row">
		<div class="col-12">
			<div class="col-4 col-visit">
				<h2 class="siteHeader">Create Account</h2>
			</div>
		</div>
	</div>


	<div class="row">
		<form class="form-horizontal" action="<?= BASE_URL ?>/submit_account" method="post">
			<div class="form-group">
			<label class="control-label col-sm-6" for="first_name">First Name:</label>
				<div class="col-sm-10">
					<input name="first_name" required type="text" class="form-control" id="first_name" placeholder="First Name">
				</div>
			</div>
			<div class="form-group">
			<label class="control-label col-sm-6" for="last_name">Last Name:</label>
				<div class="col-sm-10">
					<input name="last_name" required type="text" class="form-control" id="last_name" placeholder="Last Name">
				</div>
			</div>
			<div class="form-group">
			<label class="control-label col-sm-6" for="email">Email Address:</label>
				<div class="col-sm-10">
					<input name="email" required type="email" class="form-control" id="sitename" placeholder="something@email.com">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="password">Password:</label>
				<div class="col-sm-10">
					<input name="password" required type="password" class="form-control" id="password" placeholder="Password">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="password">Re-Enter Password:</label>
				<div class="col-sm-10">
					<input name="password2" required type="password" class="form-control" id="password" placeholder="Password">
				</div>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</div>
