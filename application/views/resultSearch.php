<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Trang tìm kiếm</title>
	<?php include 'link.php';?>
</head>
<body>
<?php include 'header_view.php';?>
<div class="result_Search">
	<div class="container">
		<div class="row">
			<ol class="breadcrumb">
				<li>
					<a href="/project2/Home">Trang chủ</a>
				</li>
				<li class="active">Tìm kiếm</li>
			</ol>
		</div>
		<?php if (count($data) == 0) {?>
			<div class="resultEmpty">
			<div class="title">Kết quả tìm kiếm từ khóa "<?php echo $keySearch ?>"</div>
			<div class="titleEmpty">Không thấy điện thoại cho "<?php echo $keySearch ?>"</div>
			<div class="titleEmpty">Không thấy máy tính bảng cho "<?php echo $keySearch ?>"</div>
			<div class="titleEmpty">Không thấy laptop cho "<?php echo $keySearch ?>"</div>
			<div class="titleEmpty">Không thấy phụ kiện cho "<?php echo $keySearch ?>"</div>
			</div>
		<?php } else {?>
		<div class="row">
			<div class="title">Kết quả tìm kiếm từ khóa "<?php echo $keySearch ?>"</div>
		</div>
		<div class="row">
		<div class="products">
		<?php foreach ($data as $key => $value): ?>
			<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
			 <div class="product">
			 	<a href="/project2/Home/singleProduct/<?php echo $value['id_category'] ?>/<?php echo $value['id'] ?>"><img width="100%" src="/project2/uploads/product/<?php echo $value['image'] ?>" alt="Lỗi"></a>
			 	<a href="/project2/Home/singleProduct/<?php echo $value['id_category'] ?>/<?php echo $value['id'] ?>"><div class="name"><?php echo $value['name'] ?></div></a>
			 	<?php if ($value['price_sales']) {?>
			 	<div class="prices">
			 	<div class="span-group">
			 		<span class="price"><?php echo number_format($value['price_origin'], 0, ".", "."); ?> ₫</span>
			 		<span class="priceSale"><?php echo number_format($value['price_sales'], 0, ".", "."); ?> ₫</span>
			 	</div>
			 	</div>
			 	<?php } else {?>
			 		<div class="price"><?php echo number_format($value['price_origin'], 0, ".", "."); ?> ₫</div>
			 	<?php }?>
			 	<div class="note"><?php echo $value['promotion'] ?></div>
			 	<div class="addToCart">
			 		<button class="btn btn-danger" value="<?php echo $value['id'] ?>">Thêm vào giỏ hàng</button>
			 	</div>
			 </div>
			</div> <!-- end 1sp -->
		<?php endforeach?>
		</div>
      </div>
  <?php }?>
	</div>
</div>
<?php include 'footer.php';?>
</body>
</html>