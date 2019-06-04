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
        <div class="col-lg-8 col-lg-push-2">
            <h2><?php echo $tintuc['title'] ?></h2>
            <small class="timeDetail"><?php echo date('d/m/Y H:i:s A', $tintuc['time_created']) ?></small>
            <div class="content" style="line-height: 30px;">
             <?php echo $tintuc['content'] ?>
            </div>
        </div>
    </div>
    <!-- end Page Content -->
<?php include 'footer.php'; ?>
</body>
</html>