<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/nav.php'); ?>
<!-- Page Content -->
 <div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Khuyến mãi
                    <small>Thêm mới</small>
                </h1>
                <?php if (isset($status)): ?>

                <div class="alert <?php echo $status ? 'alert-success' : 'alert-danger'?>">
                  <?php echo $message ?> 
                </div>
           
                <?php endif ?>
            </div>
            <!-- /.col-lg-12 -->
            <div class="col-lg-12" style="padding-bottom:120px">
                <form action="<?php echo base_url()?>admin/Promotion/insert" method="POST">
                    <div class="form-group">
                        <label>Tên khuyến mãi</label>
                        <input class="form-control" name="name" placeholder="Tên chương trình khuyến mãi" required/>
                    </div>
                    <div class="form-group">
                        <label>Chi tiết</label>
                        <input class="form-control" name="detail" placeholder="Miêu tả" required/>
                    </div>
                    <div class="form-group">
                        <label>Thời gian bắt đầu</label>
                        <input type="date" class="form-control" name="timeStart" placeholder="Ngày bắt đầu" required/>
                    </div>
                    <div class="form-group">
                        <label>Thời gian kết thúc</label>
                        <input type="date" date-format="dd/mm/YY"  class="form-control" name="timeEnd"  placeholder="Ngày kết thúc" required/>
                    </div>
                    <div class="form-group">
                        <label>Trạng thái</label>
                        <label class="radio-inline">
                            <input name="status" value="1" checked="" type="radio">Hoạt động
                        </label>
                        <label class="radio-inline">
                            <input name="status" value="0" type="radio">Tạm dừng
                        </label>
                    </div>
                    <button type="submit" class="btn btn-default">Thêm mới</button>
                    <button type="reset" class="btn btn-default">Reset</button>
                <form>
            </div>
        </div>
        <!-- /.row -->
    </div>
            <!-- /.container-fluid -->
 </div>
<!-- /#page-wrapper -->
<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/footer.php'); ?>



