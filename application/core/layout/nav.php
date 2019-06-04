<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>S - Shop</title>

<!-- Bootstrap Core CSS -->
<link href="<?php echo base_url() ?>lib/admin/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="<?php echo base_url() ?>lib/admin/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="<?php echo base_url() ?>lib/admin/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="<?php echo base_url() ?>lib/admin/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<!-- DataTables CSS -->
<link href="<?php echo base_url() ?>lib/admin/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link href="<?php echo base_url() ?>lib/admin/bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

<link rel="stylesheet" href="<?php echo base_url() ?>lib/admin/css/admin.css">
</head>
<?php
    if ($this->session->userdata('level') >=1 && $this->session->has_userdata('username') && $this->session->has_userdata('password')) {
    } else {
        header('location:/project2/admin/User/login');
    }
?>
<body>

<div id="wrapper">

<!-- Navigation -->
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">S - Shop</a>
    </div>
    <!-- /.navbar-header -->

    <ul class="nav navbar-top-links navbar-right">
        <!-- /.dropdown -->
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">
                <li>
                    <a href="<?php echo base_url() ?>admin/User/InfoUser">
                        <i class="fa fa-user fa-fw"></i>
                        <?php echo $this->session->userdata('fullname'); ?>
                    </a>
                </li>
                <li class="divider"></li>
                <li><a href="<?php echo base_url() ?>admin/User/logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                </li>
            </ul>
            <!-- /.dropdown-user -->
        </li>
        <!-- /.dropdown -->
    </ul>
    <!-- /.navbar-top-links -->

    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">

                <li>
                    <a href="#"><i class="glyphicon glyphicon-tasks"></i> Danh mục<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<?php echo base_url() ?>admin/Category">Tất cả danh mục</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url() ?>admin/Category/add">Thêm mới danh mục</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>

                <li>
                    <a href="#"><i class="glyphicon glyphicon-briefcase"></i> Sản phẩm<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<?php echo base_url() ?>admin/Product">Danh sách sản phẩm</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url() ?>admin/Product/add">Thêm mới sản phẩm</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>

                <li>
                    <a href="#"><i class="glyphicon glyphicon-gift"></i> Khuyến mãi<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<?php echo base_url() ?>admin/Promotion">Danh sách khuyến mãi</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url() ?>admin/Promotion/add">Thêm mới khuyến mãi</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>

                 <li>
                    <a href="<?php echo base_url() ?>admin/Order"><i class="glyphicon glyphicon-shopping-cart"></i><span class="fa arrow"></span> Đơn hàng</a>
                </li>

                <li>
                    <a href="#"><i class="glyphicon glyphicon-send"></i> Quảng cáo<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<?php echo base_url() ?>admin/Banner">Danh sách quảng cáo</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url() ?>admin/Banner/addBanner">Thêm mới quảng cáo</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>

                <li>
                    <a href="#"><i class="glyphicon glyphicon-list-alt"></i> Tin tức<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<?php echo base_url() ?>admin/PromotionNews">Danh sách tin tức</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url() ?>admin/PromotionNews/addPromotionNews">Thêm mới tin tức</a>
                        </li>
                    </ul>
                </li>
                
                <li>
                    <a href="<?php echo base_url() ?>admin/User"><i class="fa fa-users fa-fw"></i> Tài khoản<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<?php echo base_url() ?>admin/User/userKhachHang">Tài khoản khách hàng</a>
                        </li>

                        <li>
                            <a href="<?php echo base_url() ?>admin/User/userNhanVien">Tài khoản quản trị viên</a>
                        </li>

                        <?php if ($this->session->userdata('level') >1): ?>
                            <li>
                            <a href="<?php echo base_url() ?>admin/User/addUser">Thêm mới tài khoản</a>
                          </li>
                        <?php endif ?>
                        
                    </ul>
                    <!-- /.nav-second-level -->
                </li>

                <li>
                    <a href="#"><i class="glyphicon glyphicon-info-sign"></i> Thông tin shop<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<?php echo base_url() ?>admin/InforCompany">Xem thông tin</a>
                        </li>

                        <li>
                            <a href="<?php echo base_url() ?>admin/InforCompany/edit">Sửa thông tin</a>
                        </li>

                    </ul>
                </li>

            </ul>
        </div>
        <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->
</nav>