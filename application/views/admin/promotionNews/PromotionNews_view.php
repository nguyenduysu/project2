<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/nav.php'); ?>
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Tin tức
                    <small>Danh sách</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">    
                <table class="table table-striped table-bordered table-hover table-responsive">
                    <thead>
                        <tr align="center">
                            <th class="text-center">STT</th>
                            <th class="text-center">Tiêu đề</th>
                            <th class="text-center">Ảnh tiêu biểu</th>
                            <th class="text-center">Ngày tạo</th>
                            <th class="text-center">Trạng thái</th>
                            <th class="text-center">Sửa</th>
                            <th class="text-center">Xóa</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $i=1; ?>
                        <?php foreach ($tintuc as $value): ?>                    
                            <tr class="odd gradeX" align="center">
                                <th class="text-center"><?php echo $i; ?></th>
                                <th class="text-center" style="max-width: 150px;"><?php echo $value['title']; ?></th>
                                <th class="text-center"><img src="<?php echo base_url().'uploads/ImagePromotionNews/'.$value['image'] ?>" width="130px" alt="Error"></th>
                                <th class="text-center"><?php echo date('d/m/Y', $value['time_created']); ?></th>
                                <th class="text-center">
                                    <?php if($value['status'] == 0) echo "Không hiển thị"; ?>
                                    <?php if($value['status'] == 1) echo "Hiển thị"; ?>
                                </th>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="<?php echo base_url() ?>admin/PromotionNews/editByID/<?php echo $value['id'] ?>">Edit</a></td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="<?php echo base_url() ?>admin/PromotionNews/delete/<?php echo $value['id'] ?>">Delete</a></td>
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

