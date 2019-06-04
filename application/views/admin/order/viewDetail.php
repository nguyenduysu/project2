<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/nav.php'); ?>

<div id="page-wrapper">
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Đơn hàng
                <small>Xem chi tiết</small>
            </h1>
        </div>
    </div>
        <!-- /.col-lg-12 -->
   <div class="row">
   	 <div class="alert alert-info">
	 	<div class="title">Đơn hàng #BKS<?php echo $listOrder[0]['order_id'] ?></div>
	</div>
   </div>
        <table class="table table-hover table-bordered">
			    <thead>
					<tr>
						<th>Sản phẩm</th>
						<th>Hình ảnh</th>
						<th>Số lượng</th>
						<th>Đơn giá</th>
						<th>Khuyến mãi</th>
					</tr>
				</thead>
				<tr>
					
				</tr>
				<tbody>
					<?php foreach ($listOrder as $key => $value): ?>		
							<tr>
								<td><?php echo $value['name'] ?></td>
								<td><img width="70px"src="/project2/uploads/product/<?php echo $value['image'] ?>" alt="Lỗi hiển thị hình ảnh"></td>
								<td><?php echo $value['quantity'] ?></td>
								<?php if ($value['price_sales']) { ?>
								<td><?php echo number_format($value['price_sales'],0,".", "."); ?> ₫</td>
								<?php }else{ ?>
								<td><?php echo number_format($value['price_origin'],0,".", "."); ?> ₫</td>
							    <?php } ?>
							    <td><?php echo $value['promotion'] ?></td>
							</tr>
							<?php endforeach ?>
				</tbody>
		</table> 

		<table class="table table-bordered table-hover">
			<?php $priceAll=0;
			     foreach ($listOrder as $key => $value) {
     			if ($value['price_sales']) {
     				$priceAll+=$value['price_sales']*$value['quantity'];
     			}else{
     				$priceAll+=$value['price_origin']*$value['quantity'];
     			}
     			}

     			$ship = ($priceAll>500000) ? 0 : 50000;
			 ?>
			<thead>
				<tr>
					<th>Phí vận chuyển</th>
					<th>Tổng tiền</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><?php echo number_format($ship,0,".", "."); ?> ₫</td>
					<td><?php echo number_format($ship+$priceAll,0,".", "."); ?> ₫</td>
				</tr>
			</tbody>
		</table>

    <!-- /.row -->
</div>
<!-- /.container-fluid -->
</div>

<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/footer.php'); ?>


 