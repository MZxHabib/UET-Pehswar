<?php
$dir = 'images/';
$images = glob($dir . '*.{jpg,jpeg,png,gif}', GLOB_BRACE);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Image Gallery</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<style>
		img {
			margin: 5px;
			border: 1px solid #ccc;
			height: 30px;
			width: 300px;
			object-fit: cover;
			cursor: pointer;
		}
		img:hover {
			border-color: #666;
		}
		.modal-content img {
			max-width: 100%;
			height: auto;
		}
	</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<?php foreach ($images as $image): ?>
				<div class="col-md-3">
					<img src="<?php echo $image; ?>" class="img-responsive" data-toggle="modal" data-target="#myModal">
				</div>
			<?php endforeach; ?>
		</div>
	</div>

	<!-- Modal -->
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-body">
					<img src="" class="modal-image">
				</div>
			</div>
		</div>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function(){
			$('.img-responsive').click(function(){
				var src = $(this).attr('src');
				$('.modal-image').attr('src', src);
			});
		});
	</script>
</body>
</html>
