<div class="slideBanner">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
				<div class="slide">
					<div id="carousel-id" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<?php $i =0; ?>
							<?php foreach ($banner as $key => $value): ?>
								<?php if ($value['type']==0): ?>
									<?php if ($i==0): ?>
									<li data-target="#carousel-id" data-slide-to="<?php echo $i; ?>" class="active"></li>
									<?php else: ?>
									<li data-target="#carousel-id" data-slide-to="<?php echo $i; ?>"></li>
									<?php endif ?>
								
									<?php $i++; ?>
								<?php endif ?>
								
							<?php endforeach ?>
						</ol>
						<div class="carousel-inner">
							<?php $j =0; ?>
							<?php foreach ($banner as $key => $value): ?>
								<?php if ($value['type']==0): ?>
									<?php if ($j==0): ?>
									<div class="item active">
								 		<a href="<?php echo $value['link'] ?>"><img src="<?php echo base_url().'uploads/ImageBanner/'.$value['image'] ?>" alt="Lỗi">
								 		</a>
							   		</div>
									<?php else: ?>
										<div class="item">
								 		<a href="<?php echo $value['link'] ?>"><img src="<?php echo base_url().'uploads/ImageBanner/'.$value['image'] ?>" alt="Lỗi">
								 		</a>
							   		</div>
									<?php endif ?>
								
									<?php $j++; ?>
								<?php endif ?>
								
							<?php endforeach ?>
							
						</div>
						<a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
						<a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
				<div class="row">
					<?php $i=0; ?>
					<?php foreach ($banner as $key => $value): ?>
								<?php if ($value['type']==1 && $i < 3): ?>
								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
									<div class="banner">
						 				<a href="<?php echo $value['link'] ?>"><img src="<?php echo base_url().'uploads/ImageBanner/'.$value['image'] ?>" alt="Lỗi"></a>
									</div>
								</div>
								<?php $i++; ?>
								<?php endif ?>
								
					<?php endforeach ?>

				</div>
			</div>
		</div>
	</div>
</div>