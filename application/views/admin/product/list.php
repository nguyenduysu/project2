<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/nav.php'); ?>
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Sản phẩm
                    <small>Danh sách</small>
                </h1>
                <?php if (isset($status)): ?>

                <div class="alert <?php echo $status ? 'alert-success' : 'alert-danger'?>">
                    <?php echo $message ?> 
                </div>
           
                <?php endif ?>
            </div>
            <!-- /.col-lg-12 -->
            <form action="<?php echo base_url()?>admin/Product" method="POST" role="form" validate enctype="multipart/form-data">
                <div class="row">
                    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                       <label>Tên sản phẩm</label>
                       <div class="form-group">
                         <input type="text" class="form-control"  name="name" placeholder="Tên sản phẩm">
                       </div> 
                    </div>

                    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                        <label>Danh mục</label>
                        <div class="form-group">
                            <select name="id_category" class="form-control">
                            <option value="0">-- Chọn danh mục --</option>
                            <?php foreach ($category as $key => $value): ?>
                             <option value="<?php echo $value['id'] ?>"><?php echo $value['name'] ?></option>
                            <?php endforeach ?>
                            </select>
                         </div>
                    </div>

                    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                        <div class="form-group">
                        <label >Trạng thái</label>
                            <select name="status" class="form-control" >
                            <option value="0">-- Chọn trạng thái --</option>
                            <option value="1">Hiển thị</option>
                            <option value="2">Không hiển thị</option>
                            <option value="3">New</option>
                            </select>
                         </div>
                    </div>

                    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                       <button type="submit" class="btn btn-primary" style="margin-top: 24px;">Tìm kiếm</button> 
                    </div>

                </div>
                
            </form> 
            <hr> 

            <table class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <th class="text-center">STT</th>
                        <th class="text-center" style="max-width: 150px;">Tên sản phẩm</th>
                        <th class="text-center">Hình ảnh</th>
                        <th class="text-center">Danh mục</th>
                        <th class="text-center">Kho</th>
                        <th class="text-center">Đã bán</th>
                        <th class="text-center">Trạng thái</th>
                        <th class="text-center">Sửa</th>
                        <th class="text-center">Xóa</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($listProduct as $key => $value):?>
                    
                    <tr class="odd gradeX" align="center">
                        <td><?php echo $i ?></td>
                        <td style="max-width: 150px;"><?php echo $value['name'] ?></td>
                        <td>
                            <img class="responsive-image" width="80px" src="<?php echo base_url().'uploads/product/'.$value['image'] ?>" alt="Error">
                        </td>
                        <td>
                            <?php foreach ($category as $key => $cate): ?>
                                <?php echo $value['id_category']==$cate['id'] ? $cate['name'] : '' ?>
                            <?php endforeach ?>
                        </td>
                        <td><?php echo $value['quantity'] ?></td>
                        <td><?php echo $value['quantity_exp'] ?></td>
                        <td>
                            <?php if ($value['status'] == 1) {
                            echo "Hiển thị";
                            } else if ($value['status'] == 2) {
                                echo 'Không hiển thị';
                            } else {
                                echo "New";
                            }?>
                            </td>
                        <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="<?php echo base_url()?>admin/Product/add/<?php echo $value['id'] ?>">Edit</a></td>
                        
                        <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="<?php echo base_url()?>admin/Product/delete/<?php echo $value['id'] ?>">Delete</a></td>
                    </tr>
                    <?php $i= $i+1 ?>

                    <?php endforeach ?>
                    
                </tbody>
            </table>
            <?php if ($pagination == true) {
              echo $this->pagination->create_links();
            } ?>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>


</div>

<!-- /#page-wrapper -->
<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/footer.php'); ?>
