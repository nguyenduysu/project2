<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Giỏ hàng</title>
    <?php include 'link.php'; ?>
	<link rel="stylesheet" href="/project2/lib/home/cart.css">
	<script src="/project2/lib/home/editQuantityCart.js"></script>
</head>
<body>	 
<?php include 'header_view.php';  ?>
 <div class="add"></div>
   <div class="listCart">
     <div class="container">
     <?php if ($data==NULL) { ?>
     <div class="container text-center empty ">
	 <div class="row">
	 <p>Không có sản phẩm nào trong giỏ hàng</p>
	 <a class="btn btn-danger" href="/project2/Home">Tiếp tục mua sắm</a>
	 </div>
     </div>
     </div>
     </div>
     <?php  }else{ 
     	$allPrice=0;
		$cart=$this->session->userdata('cart');			
		foreach ($data as $key => $value) {
		if ($value['price_sales']) {
		$allPrice+=$value['price_sales']*$cart[$value['id']][0];	
		}else{
		$allPrice+=$value['price_origin']*$cart[$value['id']][0];	
		}
		}
      ?>	
     	<div class="row">
			 <ol class="breadcrumb">
				<li>
					<a href="/project2/Home">Home</a>
				</li>
				<li class="active">Giỏ hàng</li>
			</ol>	
	    </div>
	    <div class="row">
	    	<input type="hidden" id="allPrice" value="<?php echo $allPrice; ?>">  
	    </div>
		<div class="row">
			<div class="listProductBuy">
				<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 contentProduct">
					<div class="row title">
						<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 checkAll">
					 		<div class="checkbox">
							<?php 
							$sl_status=0;
							foreach ($cart as $key => $value) {
										$sl_status+=$value[1];
									}				
							if ($sl_status==count($data)) { 
							?>
							<input type="checkbox" checked id="all_check">	
							<?php }else{ ?>	
							<input type="checkbox" id="all_check"> 
							<?php } ?>	
							<label><b>Tất cả sản phẩm</b></label>
							</div>
					 	</div>
					 	<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 gia">
					 		<label>Giá</label>
					 	</div>
					 	<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 quantity">
					 		<label>Số lượng</label>
					 	</div>
				    </div>
				    <?php foreach ($data as $key => $value): ?>
				    <div class="row content">
				    	<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
				    		<div class="row">
				    			<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
				    				<div class="checkbox">
									<?php if ($cart[$value['id']][1]) { ?>		<!-- status == 1 -->	
										<input type="checkbox" checked class="check" value="<?php echo $value['id'] ?>">
									<?php }else{ ?>
										<input type="checkbox" class="check" value="<?php echo $value['id'] ?>">
								    <?php } ?>
								     </div>
				    			</div>
				    			<div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
				    			 <div class="anh">
					                  <a href="/project2/Home/singleProduct/<?php echo $value['id_category'] ?>/<?php echo $value['id'] ?>"><img width="100px" src="/project2/uploads/product/<?php echo $value['image'] ?>" alt="Lỗi"></a>
			                     </div>	
				    			</div>
				    		</div>
				    		<div class="row nameAndRemove">
				    			<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 tensp">
										<a href="/project2/Home/singleProduct/<?php echo $value['id_category'] ?>/<?php echo $value['id'] ?>"><?php echo $value['name'] ?></a>
				    			</div>
				    			<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 xoa">
				    				<button class="nutxoa" value="<?php echo $value['id'] ?>">
										<i class="fas fa-trash-alt"></i>
									</button>
				    			</div>
				    		</div>
				    	</div>
				    	<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 giaProduct">	
				    	 <?php if ($value['price_sales']) { ?>  <!-- have price sales -->
							    <small style="color:gray; text-decoration: line-through;">
						        <?php echo number_format($value['price_origin'],0,".", "."); ?>₫
							    </small> 
							    <?php echo number_format($value['price_sales'],0,".", "."); ?>₫
							    <input type="hidden" class="pGoc" value="<?php echo $value['price_origin'] ?>">
							    <input type="hidden" class="pKM" value="<?php echo $value['price_sales'] ?>">  
						   <?php }else{ ?>
							    <?php echo number_format($value['price_origin'],0,".", "."); ?>₫
							    <input type="hidden" class="pGoc" value="<?php echo $value['price_origin'] ?>"> 
							    <input type="hidden" class="pKM" value="<?php echo $value['price_sales'] ?>">
							    <?php } ?>
						</div>
				    	<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					    	 <div class="quantitySale">
								<div class="btn-group">
									<button type="button" id="minus" class="btn btn-default">-</button>
									<input type="text" id="sl_add" class="btn btn-default" value="<?php echo $cart[$value['id']][0] ?>">
									<input type="hidden" value="<?php echo $value['id'] ?>">
									<button type="button" id="plus" class="btn btn-default">+</button>
									<input type="hidden" class="statusInCart" value="<?php echo $cart[$value['id']][1] ?>">
								</div>
							 </div>
				    	</div>
				    </div>
				   
                   <?php endforeach ?> 
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 inforChecked">
				   <?php 
					$gia=0;
					$num=0;
					foreach ($data as $key => $value) { // price of status ==1
							if ($cart[$value['id']][1]==1) {
								if ($value['price_sales']) {
							    $gia+=$value['price_sales']*$cart[$value['id']][0];
						   }else{
						       $gia+=$value['price_origin']*$cart[$value['id']][0];
						   }
						   $num+=$cart[$value['id']][0];
						}
						}
					$ship=($gia>=500000||$num==0)?0:50000;	
					$priceEnd=$gia+$ship;
					?>		
				   <h4>Thông tin đơn hàng</h4><hr>
				   <h5>Tạm tính(<span id="slspCheck"><?php echo $num ?></span> sản phẩm)
			       <span id="giagoc">
			       	<?php echo number_format($gia,0,".", "."); ?> ₫
			       </span>
			       	<input id="prices" type="hidden" value="<?php echo $gia ?>">
			       </h5><hr>
				   <h5>Phí giao hàng <span id='phiship'><?php echo number_format($ship,0,".", "."); ?> ₫
				   </span></h5><hr>
				   <h5>Tổng cộng <span id="priceEnd" style="color:#F57224;font-weight:bold;"><?php echo number_format($priceEnd,0,".", "."); ?> ₫</span>
				   </h5><hr>
				   <button class="btn btn-danger xacnhan">Xác nhận giỏ hàng</button>
				</div>
			</div>
		</div>
     </div>
   </div>
 <div class="xam KHthiXam">
 	<div class="container">
 		<div class="thanhtoan up">
 			<div class="row dong"><i class="fas fa-times"></i></div>
 			<div class="row vien"></div>
 			<div class="row tieude">Thông tin người mua</div>
 			<div class="row" style="margin-left: -7px;">
 		
 				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
 					<input type="text" disabled class="form-control" placeholder="Họ tên (bắt buộc)" id="hoten">
 					<input type="hidden" class="form-control" id="userId" value="<?php echo $this->session->userdata('id')  ?>">
 				</div>
 			</div>
 			<div class="row">
 				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 sdt">
 					<input type="text" class="form-control"  placeholder="Số điện thoại (bắt buộc)" id="sdt">
 				</div>
 				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 email">
 					<input type="text" class="form-control" placeholder="Email (bắt buộc)" id="emailreceive">
 				</div>
 			</div>
 			<div class="row diachi" >
			<textarea placeholder="Địa chỉ nhận hàng" id="address"></textarea>
			</div>
			<div class="row ghichu">
			<textarea name="" placeholder="Ghi chú đơn hàng" id="note"></textarea>
			</div>
			<div class="row ">
			<button class="btn btn-info dathang">Đặt hàng ngay</button>
			</div>	
 		</div>
 	</div>
 </div>
<?php } ?>
<?php include 'footer.php';  ?>
</body>
</html>
<!-- sử dụng 5 input hidden để xl -->