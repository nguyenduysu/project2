<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Tin tức công nghệ</title>
	<?php include 'link.php'; ?>
</head>
<body>
<?php include 'header_view.php'; ?>	
    <!-- Page Content -->
    <div style="padding-top: 100px;" class="container">
        <?php if (!count($listNews)): ?>
            <div class="alert alert-info text-center" style="margin-top: 100px;margin-bottom: 100px;">
              <div class="title">Không có bài viết nào.</div>
            </div>
        <?php else: ?>
       
        <div class="row firstRow">
            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                <div class="row">
                    <?php $i=0; ?>
                    <?php foreach ($listNews as $news): ?> 
            	    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 tintuc_newest">
                		<a href="/project2/Home/TinTucDetail/<?php echo $news['id'] ?>">
                			<img width="457px" class="anhtintucmoi" src="<?php echo base_url().'uploads/ImagePromotionNews/'.$news['image'] ?>" alt="">
                			<h3 class="title"><?php echo $news['title'] ?></h3>
                			<p class="tomtat"><?php echo $news['summary'] ?></p>
                		</a>
                	</div>
                    <?php $i++; ?>
                    <?php if($i>0) break; ?>  
                    <?php endforeach ?>

                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 tintuc_phu">
                    <ul>
                    <?php $j=0; ?>
                    <?php foreach ($listNews as $news): ?> 
                        <?php if($j == 1) { ?>               
                            <li>
                                <a href="/project2/Home/TinTucDetail/<?php echo $news['id'] ?>">
                                    <img width="220px" class="anhtintucphu" src="<?php echo base_url().'uploads/ImagePromotionNews/'.$news['image'] ?>" alt="">
                                    <h4 class="title"><?php echo $news['title'] ?></h4>
                                </a>            
                            </li>
                        <?php } ?>             
                        <?php if(($j > 1) && ($j < 4)){ ?>
                            <hr>
                            <li>
                                <a href="/project2/Home/TinTucDetail/<?php echo $news['id'] ?>">
                                    <h4 class="title"><?php echo $news['title'] ?></h4>
                                </a>
                            </li>
                        <?php } ?>
                        <?php $j++; ?>
                    <?php endforeach ?>
                    </ul>
                    </div>
                </div>

                <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 tintuc_older">
                <hr>
                <ul class="listTintuc">
                    <?php $x=0; ?>
                    <?php foreach ($listNews as $news): ?> 
                        <?php if($x > 3 && $x < 9){ ?>           
                            <li>
                                <a href="/project2/Home/TinTucDetail/<?php echo $news['id'] ?>">
                                    <span class="row">
                                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                            <img width="200px" src="<?php echo base_url().'uploads/ImagePromotionNews/'.$news['image'] ?>" alt="" class="anhtintuccu">
                                        </div>
                                        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                                            <h3 class="title"><?php echo $news['title'] ?></h3>
                                            <p class="tomtat"><?php echo $news['summary'] ?></p>
                                            <p class="time_created"><?php echo date('d/m/Y H:i:s A', $news['time_created']) ?></p>
                                        </div>
                                    </span>
                                </a>  
                                <hr>                    
                            </li>
                        <?php } ?>
                        <?php $x++; ?>
                    <?php endforeach ?>
                </ul>
                
                <input type="hidden" id="sltt" value="9" >
                <div class="row">
                    <div class="viewMore">
                        <b class="btn btn-danger">Xem thêm tin tức </b>
                    </div>
                </div>
                </div>
                </div>
            </div>

            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 tintuc_khuyenmai">
                <div class="titleNewProduct">Sản phẩm mới</div>
                <?php foreach ($product as $key => $value): ?>
                <?php if($i==8) break; ?>   
                <div class="product">
                <a href="/project2/Home/singleProduct/<?php echo $value['id_category'] ?>/<?php echo $value['id'] ?>">
                    <img width="100%" src="/project2/uploads/product/<?php echo $value['image'] ?>" alt="Lỗi">
                </a>
                <a href="/project2/Home/singleProduct/<?php echo $value['id_category'] ?>/<?php echo $value['id'] ?>">
                    <div class="name"><?php echo $value['name'] ?></div>
                </a>
                <?php if($value['price_sales']){ ?>
                <div class="prices">
                    <div class="span-group">
                        <span class="price"><?php echo number_format($value['price_origin'],0,".", "."); ?> ₫</span>
                        <span class="priceSale"><?php echo number_format($value['price_sales'],0,".", "."); ?> ₫</span>
                    </div>
                </div>
                <?php }else{ ?>
                    <div class="price"><?php echo number_format($value['price_origin'],0,".", "."); ?> ₫</div>  
                <?php } ?>  
                <div class="note"><?php echo $value['promotion'] ?></div>
                <div class="addToCart">
                    <button class="btn btn-danger" value="<?php echo $value['id'] ?>">Thêm vào giỏ hàng</button>
                </div>      
             </div>     
            <?php $i++; ?>   
            <?php endforeach ?>
            </div>

            </div>

         <?php endif ?>

    </div>
    <!-- end Page Content -->
<?php include 'footer.php'; ?>
<script>
	$(document).ready(function(){
		$('.viewMore').click(function() {
				//lấy số lượng tin tức hiện tại
				var sl = $('#sltt').val();
				sl=parseInt(sl);
				$('#sltt').val(sl+5);
				$.ajax({
					url: '/project2/Home/loadMoreTintuc',
					type: 'POST',
					data: {offset:sl}
				})
				.done(function() {
				})
				.fail(function() {
				})
				.always(function(data) {
                    x = data.indexOf(">");
                    data = data.slice(x+1, data.length);
                    data = JSON.parse(data)
					if (data.status !='NULL') {
						$('.listTintuc').append(data.data);
					}else{
						$('.viewMore').html('<b></b>');
					}
				});
			});
	     });
</script>
</body>
</html>