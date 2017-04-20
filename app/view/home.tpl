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
	<?php for($i = 0; $i < count($sites); $i++) { ?>
		<div class="row site">
			<div class="col-8 colsite">
				<h4 class="siteName"><?= $sites[$i]['site_name'] ?></h4>
				<h6 class="siteDate">(<?= $sites[$i]['date'] ?>, <?= $sites[$i]['time'] ?>)</h6>
			</div>
		</div>
		<div class="row driver">
			<div class="col-8 coldriver">
				<?php for($j = 0; $j < count($drivers); $j++) { 
					if ($drivers[$j]['site_id'] == $i+1) {?>
						<h5 class="driver"><?= $drivers[$j]['email'] ?>: <?= $drivers[$j]['available'] ?> Seats</h5>
						<button type="submit" class="btn btn-primary btn-sm request">Request</button>
				<?php }}?>
			</div>
		</div>
		<div class="row addDriver">
			<div class="col-6 coldriver">
				<a href="<?= BASE_URL ?>/drive_register/<?= $sites[$i]['id'] ?>"><button type="submit" class="btn btn-primary btn-sm driver">Sign Up to Drive</button></a>
			</div>
		</div>
	<?php } ?>
</div>
