<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/nav.php'); ?>

<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header text-center">Tài khoản người dùng
                    <small class="text-center">Thông tin</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->       
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-8 col-lg-push-2">

                <?php if (isset($status)): ?>
                    <div class="alert <?php echo $status ? 'alert-success' : 'alert-danger'?>">
                      <?php echo $message ?> 
                    </div>
                    <?php $this->session->unset_userdata($status); ?>
                <?php endif ?>
                <?php if (isset($thongbao)): ?>
                    <div class="alert alert-danger">
                      <?php echo $thongbao ?> 
                    </div>
                    <?php $this->session->unset_userdata($status); ?>
                <?php endif ?>
 
                <div class="form-group">
                    <label>Tên tài khoản</label>
                    <input disabled style="pointer-events: none;" class="form-control" value="<?php echo $user['username'] ?>" name="username" placeholder="Nhập tên tài khoản" />
                </div>
                <div class="form-group">
                    <label>Họ tên</label>
                    <input disabled style="pointer-events: none;" class="form-control" value="<?php echo $user['fullname'] ?>" name="fullname" placeholder="Nhập tên người dùng" />
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <input disabled style="pointer-events: none;" class="form-control" type="email" value="<?php echo $user['email'] ?>" name="email" placeholder="Nhập email" />
                </div>
                <div class="form-group">
                    <label>Số điện thoại</label>
                    <input disabled style="pointer-events: none;" class="form-control" type="text" value="<?php echo $user['phone'] ?>" name="phone" placeholder="Nhập số điện thoại" />
                </div>
                <div class="form-group">
                    <label>Địa chỉ</label>
                    <input disabled style="pointer-events: none;" class="form-control" type="text" value="<?php echo $user['address'] ?>" name="address" placeholder="Nhập địa chỉ" />
                </div>
                          
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-lg-push-2">
                <a href="<?php echo base_url() ?>admin/User/editInfoUser">
                    <button class="btn btn-primary btn-block">Sửa thông tin tài khoản</button>
                </a>
            </div>
            <div class="col-lg-4 col-lg-push-2">
                <a href="<?php echo base_url() ?>admin/User/changePassword">
                    <button class="btn btn-primary btn-block">Đổi mật khẩu</button>
                </a>
            </div>  
        </div>
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->

<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/footer.php'); ?>
