<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/nav.php'); ?>
<!-- Page Content -->
 <div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Khuyến mãi
                    <small>Sửa</small>
                </h1>
                <?php if (isset($status)): ?>

                <div class="alert <?php echo $status ? 'alert-success' : 'alert-danger'?>">
                  <?php echo $message ?> 
                </div>
           
                <?php endif ?>
            </div>
            <!-- /.col-lg-12 -->
            <div class="col-lg-12" style="padding-bottom:120px">
                <form action="<?php echo base_url()?>admin/Promotion/update/<?php echo $promotion['id'] ?>" method="POST">
                    <div class="form-group">
                        <label>Tên khuyến mãi</label>
                        <input class="form-control" name="name" placeholder="Tên chương trình khuyến mãi" value="<?php echo $promotion['name'] ?>" required/>
                    </div>
                    <div class="form-group">
                        <label>Chi tiết</label>
                        <input class="form-control" name="detail" placeholder="Miêu tả" value="<?php echo $promotion['detail'] ?>" required/>
                    </div>
                    <div class="form-group">
                        <label>Thời gian bắt đầu</label>
                        <input type="date" class="form-control" name="timeStart" placeholder="Ngày bắt đầu"value="<?php echo $promotion['time_start'] ?>" required/>
                    </div>
                    <div class="form-group">
                        <label>Thời gian kết thúc</label>
                        <input type="date" class="form-control" name="timeEnd" placeholder="Ngày kết thúc" value="<?php echo $promotion['time_end'] ?>" required/>
                    </div>
                    <div class="form-group">
                        <label>Trạng thái</label>
                        <label class="radio-inline">
                            <input name="status" value="1" type="radio" <?php echo $promotion['status'] == 1 ? 'checked' : ''; ?>>Hoạt động
                        </label>
                        <label class="radio-inline">
                            <input name="status" value="0" type="radio" <?php echo $promotion['status'] == 0 ? 'checked' : ''; ?>>Tạm dừng
                        </label>
                    </div>
                    <button type="submit" class="btn btn-default">Cập nhật</button>
                <form>
            </div>
        </div>
        <!-- /.row -->
    </div>
            <!-- /.container-fluid -->
 </div>
<!-- /#page-wrapper -->
<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/footer.php'); ?>



