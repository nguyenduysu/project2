<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/nav.php'); ?>

<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Quảng cáo
                    <small>Thêm</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <div class="col-lg-12" style="padding-bottom:120px">

                <?php if (isset($status)): ?>
                    <div class="alert <?php echo $status ? 'alert-success' : 'alert-danger'?>">
                      <?php echo $message ?> 
                    </div>
                    <?php $this->session->unset_userdata($status); ?>
                <?php endif ?>

                <form action="<?php echo base_url() ?>admin/Banner/add" method="POST" enctype="multipart/form-data">  
                    <div class="form-group">
                        <label>Tên</label>
                        <input class="form-control" name="name" placeholder="Tên quảng cáo" required />
                    </div>
                    <div class="form-group">
                        <label>Hình ảnh</label>
                        <input type="file" name="image" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Nội dung</label>
                        <input id="demo" name="content" class="form-control" placeholder="Nội dung" />
                    </div>
                    <div class="form-group">
                        <label>Đường dẫn tới sản phẩm</label>
                        <input class="form-control" value="" name="link" placeholder="Nhập đường dẫn" required />
                    </div>
                    <div class="form-group">
                        <label>Kiểu quảng cáo</label>
                        <label class="radio-inline">
                            <input name="type" value="0" checked="" type="radio">Slide
                        </label>
                        <label class="radio-inline">
                            <input name="type" value="1" type="radio">Banner
                        </label>
                    </div>
                    <div class="form-group">
                        <label>Trạng thái</label>
                        <label class="radio-inline">
                            <input name="status" value="0" checked="" type="radio">Không hiển thị
                        </label>
                        <label class="radio-inline">
                            <input name="status" value="1" type="radio">Hiển thị
                        </label>
                    </div>
                    
                    <button type="submit" class="btn btn-success">Thêm</button>
                    <button type="reset" class="btn btn-danger">Làm mới</button>
                <form>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->

<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/footer.php'); ?>