<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/nav.php'); ?>

<?php if ((int)$this->session->userdata('level') < 2) {
        header('location:/project2/admin/User/userKhachHang');
    } ?>
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h1 class="page-header">Người dùng hệ thống
                    <small>Thêm</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <div class="col-lg-8 col-lg-push-2" style="padding-bottom:120px">

                <?php if (isset($status)): ?>
                    <div class="alert <?php echo $status ? 'alert-success' : 'alert-danger'?>">
                      <?php echo $message ?> 
                    </div>
                    <?php $this->session->unset_userdata('message'); ?>
                <?php endif ?>
                <?php if (isset($thongbao)): ?>
                    <div class="alert alert-danger">
                      <?php echo $thongbao ?> 
                    </div>
                    <?php $this->session->unset_userdata('message'); ?>
                <?php endif ?>

                <form action="<?php echo base_url() ?>admin/User/add" method="POST" enctype="multipart/form-data">  
                    <div class="form-group">
                        <label>Tên tài khoản</label>
                        <input class="form-control" value="" name="username" placeholder="Nhập tên tài khoản" required />
                    </div>
                    <div class="form-group">
                        <label>Mật khẩu</label>
                        <input class="form-control" type="password" value="" name="password" placeholder="Nhập mật khẩu" required />
                    </div>
                    <div class="form-group">
                        <label>Xác nhận mật khẩu</label>
                        <input class="form-control" type="password" value="" name="password_again" placeholder="Nhập lại mật khẩu" required />
                    </div>
                    <div class="form-group">
                        <label>Họ tên</label>
                        <input class="form-control" value="" name="fullname" placeholder="Nhập tên người dùng" required />
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input class="form-control" type="email" value="" name="email" placeholder="Nhập email" required />
                    </div>
                    <div class="form-group">
                        <label>Số điện thoại</label>
                        <input class="form-control" type="text" value="" name="phone" placeholder="Nhập số điện thoại" required />
                    </div>
                    <div class="form-group">
                        <label>Địa chỉ</label>
                        <input class="form-control" type="text" value="" name="address" placeholder="Nhập địa chỉ" />
                    </div>
                    <div class="form-group">
                        <label>Quyền</label>
                        <label class="radio-inline">
                            <input name="level" value="0" checked="" type="radio">Khách hàng
                        </label>
                        <label class="radio-inline">
                            <input name="level" value="1" type="radio">Nhân viên
                        </label>
                        <label class="radio-inline">
                            <input name="level" value="2" type="radio">Quản trị
                        </label>
                    </div>
                    <div class="form-group">
                        <label>Trạng thái</label>
                        <label class="radio-inline">
                            <input name="status" value="1" checked type="radio">Đang hoạt động
                        </label>
                        <label class="radio-inline">
                            <input name="status" value="0" type="radio">Tạm ngừng hoạt động
                        </label>
                    </div>
                    
                    <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                            <button type="submit" class="btn btn-primary btn-block">Lưu</button>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                            <button type="reset" class="btn btn-primary btn-block">Làm mới</button>
                        </div>
                    </div>
                <form>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->

<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/footer.php'); ?>
