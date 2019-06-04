<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="">

    <title>Đăng nhập vào trang quản trị</title>

    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url() ?>lib/admin/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<?php echo base_url() ?>lib/admin/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<?php echo base_url() ?>lib/admin/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<?php echo base_url() ?>lib/admin/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>

<body>

    <?php if ($this->session->has_userdata('username') && $this->session->has_userdata('password') && $this->session->userdata('level') >=1) {
        header('location:/project2/admin/Product');
    } ?>

    <div class="row" style="margin-left: 20px;margin-right: 20px;">
        <?php if (isset($status)): ?>

            <div class="alert <?php echo $status ? 'alert-success' : 'alert-danger'?>">
                <?php echo $message ?> 
            </div>
       
        <?php endif ?>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">S-Shop Đăng nhập</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="<?php echo base_url() ?>admin/User/authenUser" method="POST">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Tên tài khoản" name="username" required>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Mật khẩu" name="password" type="password">
                                </div>
                                <button type="submit" class="btn btn-lg btn-success btn-block">Đăng nhập</button>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="<?php echo base_url() ?>lib/admin/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url() ?>lib/admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<?php echo base_url() ?>lib/admin/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<?php echo base_url() ?>lib/admin/dist/js/sb-admin-2.js"></script>

</body>

</html>
