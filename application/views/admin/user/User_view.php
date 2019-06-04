<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/nav.php'); ?>

<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"><?php echo $type ?>
                    <small>Danh sách</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">    
                <table class="table table-striped table-bordered table-hover table-responsive">
                    <thead>
                        <tr align="center">
                            <th class="text-center">STT</th>
                            <th class="text-center">Tài khoản</th>
                            <th class="text-center">Họ tên</th>
                            <th class="text-center">Email</th>
                            <th class="text-center">Điện thoại</th>
                            <?php if ($type=='Quản trị viên'): ?>
                            <th class="text-center">Quyền</th>
                            <?php endif ?>
                            <th class="text-center">Trạng thái</th>
                            <th class="text-center">Ngày tạo</th>
                            <th class="text-center">Sửa</th>
                            <th class="text-center">Xóa</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $i=1; ?>
                        <?php foreach ($user as $value): ?>                    
                            <tr class="odd gradeX" align="center">
                                <th class="text-center"><?php echo $i; ?></th>
                                <th class="text-center"><?php echo $value['username']; ?></th>
                                <th class="text-center"><?php echo $value['fullname']; ?></th>
                                <th style="max-width: 150px;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;" class="text-center"><?php echo $value['email']; ?></th>
                                <th style="max-width: 150px;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;" class="text-center"><?php echo $value['phone']; ?></th>
                                <?php if ($type=='Quản trị viên'): ?>
                                <th class="text-center">
                                    <?php if($value['level'] == 1) echo "Nhân viên"; ?>
                                    <?php if($value['level'] == 2) echo "Admin"; ?>
                                </th>
                                <?php endif ?>
                                <th class="text-center">
                                    <?php if($value['status'] == 1) echo "Đang hoạt động"; ?>
                                    <?php if($value['status'] == 0) echo "Tạm ngừng hoạt động"; ?>
                                </th>
                                <th class="text-center"><?php echo date('d/m/Y', $value['time_created']); ?></th>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a 
                                    <?php if($this->session->userdata('level') != 2){?>
                                        style="pointer-events: none;"
                                    <?php } ?>
                                     href="<?php echo base_url() ?>admin/User/editByID/<?php echo $value['id'] ?>/<?php echo $value['level'] ?>">Edit</a>
                                </td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a 
                                    <?php if($this->session->userdata('level') != 2){?>
                                        style="pointer-events: none;"
                                    <?php } ?>
                                     href="<?php echo base_url() ?>admin/User/delete/<?php echo $value['id'] ?>/<?php echo $value['level'] ?>">Delete</a>
                                </td>
                            </tr>
                            <?php $i++; ?>
                        <?php endforeach ?>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->

<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/footer.php'); ?>


