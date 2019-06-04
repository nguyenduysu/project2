<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/nav.php'); ?>
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Khuyến mãi
                    <small>Danh sách</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <table class="table table-striped table-bordered table-hover">
                <thead>
                    <tr align="center">
                        <th class="text-center">STT</th>
                        <th class="text-center">Tên</th>
                        <th class="text-center">Chi tiết</th>
                        <th class="text-center">Thời gian bắt đầu</th>
                        <th class="text-center">Thời gian kết thúc</th>
                        <th class="text-center">Trạng thái</th>
                        <th class="text-center">Sửa</th>
                        <th class="text-center">Xóa</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($promotion as $key => $value): ?>
                        
                   
                    <tr class="odd gradeX" align="center">
                        <td><?php echo $i; ?></td>
                        <td style="max-width: 200px"><?php echo $value['name'] ?></td>
                        <td style="max-width: 200px"><?php echo $value['detail'] ?></td>
                        <td><?php echo date("d/m/Y", $value['time_start']); ?></td>
                        <td><?php echo date("d/m/Y", $value['time_end']);?></td>
                        <td><?php echo $value['status'] == 1 ? 'Hoạt động' : 'Tạm dừng'; ?></td>
                        <td class="center"><i class="fa fa-pencil fa-fw"></i> 
                            <a href="<?php echo base_url()?>admin/Promotion/add/<?php echo $value['id'] ?>">Edit</a>
                        </td>
                        <td class="center"><i class="fa fa-trash-o  fa-fw"></i>
                            <a href="<?php echo base_url()?>admin/Promotion/delete/<?php echo $value['id'] ?>">Delete</a>
                        </td>
                    </tr>
                    <?php $i++; ?>

                    <?php endforeach ?>
                    
                </tbody>
            </table>
            <?php echo $this->pagination->create_links(); ?>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->
<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/footer.php'); ?>
