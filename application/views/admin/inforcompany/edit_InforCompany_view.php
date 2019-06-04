<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/nav.php'); ?>

<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Thông tin công ty
                    <small>Sửa</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <div class="col-lg-7" style="padding-bottom:120px">
                <?php if(isset($success)){ ?>
                <div class="alert alert-success">Sửa thông tin công ty thành công</div>
                <?php } else {} ?>
                
                <?php if(isset($fail)){ ?>
                <div class="alert alert-danger">Sửa thông tin công ty thất bại hoặc không có thông tin mới để update</div>
                <?php } else {} ?>
                
                <?php foreach ($dulieu as $value): ?>              
                    <form action="<?php echo base_url();?>admin/InforCompany/update" method="POST" enctype="multipart/form-data">
                        <div class="form-group">
                            <label>Tên</label>
                            <input class="form-control" name="name" value="<?php echo $value['name'] ?>" placeholder="Nhập tên công ty" />
                        </div>
                        <div class="form-group">
                            <label>Địa chỉ</label>
                            <input class="form-control" name="address" value="<?php echo $value['address'] ?>" placeholder="Nhập địa chỉ công ty" />
                        </div>
                        <div class="form-group">
                            <label>Số điện thoại</label>
                            <input class="form-control" name="phone" value="<?php echo $value['phone'] ?>" placeholder="Nhập địa chỉ công ty" />
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input class="form-control" name="email" value="<?php echo $value['email'] ?>" placeholder="Nhập Email công ty" />
                        </div>
                        <div class="form-group">
                            <label>Link Facebook</label>
                            <input class="form-control" name="link_fb" value="<?php echo $value['link_fb'] ?>" placeholder="Nhập link facebook công ty" />
                        </div>
                        <div class="form-group">
                            <label>Link Youtube</label>
                            <input class="form-control" name="link_youtube" value="<?php echo $value['link_youtube'] ?>" placeholder="Nhập link Youtube công ty" />
                        </div>
                        <div class="form-group">
                            <label>Link Instagram</label>
                            <input class="form-control" name="link_instagram" value="<?php echo $value['link_instagram'] ?>" placeholder="Nhập link instagram công ty" />
                        </div>
                        <div class="form-group">
                            <label>Logo</label>
                            <input type="hidden" name="logo2" value="<?php echo $value['logo'] ?>">
                            <p><img src="<?php echo base_url() ?><?php echo $value['logo'] ?>" width="150px" alt="Error"></p>
                            <input type="file" name="logo" value="" class="form-control">
                        </div>
                        <button type="submit" class="btn btn-default">Sửa</button>
                        <button type="reset" class="btn btn-default">Làm mới</button>
                    <?php endforeach ?>
                <form>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->

<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/footer.php'); ?>