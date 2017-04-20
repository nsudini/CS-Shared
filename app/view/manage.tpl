<div class="container">
	<div class="row">
		<div class="col-12">
			<div class="col-2 col-visit">
				<h2 class="siteHeader">Site Visits</h2>
			</div>
		</div>
	</div>
	<?php for($i = 0; $i < count($sites); $i++) { ?>
		<div class="row site">
			<div class="col-8 colsite">
				<h4 class="siteName"><?= $sites[$i]['site_name'] ?></h4>
				<h6 class="siteDate">(<?= $sites[$i]['date'] ?>, <?= $sites[$i]['time'] ?>)</h6>
				<a href='<?= BASE_URL ?>/editsite'><button class="btn btn-primary btn-sm request">Edit</button></a>
				<a href="<?= BASE_URL ?>/delete/<?= $sites[$i]['id'] ?>"><button class="btn btn-primary btn-sm request">Delete</button></a>
			</div>
		</div>
	<?php } ?>
</div>