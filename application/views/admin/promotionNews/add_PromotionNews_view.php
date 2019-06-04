<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/nav.php'); ?>

<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Tin Tức
                    <small>Thêm</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <div class="col-lg-12" style="padding-bottom:100px">

                <?php if (isset($status)): ?>
                    <div class="alert <?php echo $status ? 'alert-success' : 'alert-danger'?>">
                      <?php echo $message ?> 
                    </div>
                    <?php $this->session->unset_userdata($status); ?>
                <?php endif ?>

                <form action="<?php echo base_url() ?>admin/PromotionNews/add" method="POST" enctype="multipart/form-data">  
                    <div class="form-group">
                        <label>Tiêu đề</label>
                        <input class="form-control" value="" name="title" placeholder="Nhập tiêu đề" required/>
                    </div>
                    <div class="form-group">
                        <label>Tóm tắt</label>
                        <textarea id="demo" name="summary" class="form-control ckeditor" rows="3" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Nội dung</label>
                        <textarea id="demo" name="content" class="form-control ckeditor" rows="5" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Ảnh tiêu biểu</label>
                        <input type="file" name="image" class="form-control" required>
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
                    <button type="submit" class="btn btn-info">Thêm</button>
                <form>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->

<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/footer.php'); ?>