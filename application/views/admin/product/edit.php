<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/nav.php'); ?>
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Sản phẩm
                    <small>Sửa</small>
                </h1>
                <?php if (isset($status)): ?>

                <div class="alert <?php echo $status ? 'alert-success' : 'alert-danger'?>">
                  <?php echo $message ?> 
                </div>
           
                <?php endif ?>
            </div>
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
               <form action="<?php echo base_url()?>admin/Product/update/<?php echo $product['id'] ?>" method="POST" role="form" validate enctype="multipart/form-data">
                <label>Tên sản phẩm</label>
                <div class="form-group">
                    <input type="text" class="form-control"  name="name" placeholder="Tên sản phẩm" required value="<?php echo $product['name'] ?>">
                </div>

                <label>Danh mục</label>
                <div class="form-group">
                    <select name="id_category" class="form-control">
                        <?php foreach ($category as $key => $value): ?>
                         <option value="<?php echo $value['id'] ?>" <?php echo $value['id'] == $product['id_category'] ? 'selected' : ''; ?>><?php echo $value['name'] ?></option>
                        <?php endforeach ?>
                       
                    </select>
                </div>

                <div class="form-group">
                    <label>Nhãn hiệu</label>
                    <input type="text" class="form-control" name="label" placeholder="Apple, Samsung, LG,..." required value="<?php echo $product['label'] ?>">
                </div>

                <div class="form-group">
                    <label>Ảnh đại diện</label><br>
                    <input type="hidden" class="form-control" name="image_old" value="<?php echo $product['image'] ?>" >
                    <img width="200px" src="<?php echo base_url();?>uploads/product/<?php echo $product['image'] ?>" alt="Lỗi">
                    <input type="file" class="form-control" name="image" placeholder="Ảnh sản phẩm">
                </div>

                <div class="form-group">
                    <label>Giá</label>
                    <input type="number" class="form-control" name="price_origin" placeholder="Giá gốc" required value="<?php echo $product['price_origin'] ?>">
                </div>

                <div class="form-group">
                    <label >Giá khuyến mại</label>
                    <input type="number" class="form-control" name="price_sales" placeholder="Giá khuyến mại" required value="<?php echo $product['price_sales'] ?>">
                </div>

                <div class="form-group">
                    <label>Thông tin chi tiết sản phẩm</label>
                    <textarea name="description" id="description" required ><?php echo $product['description'] ?></textarea>
                </div>

                <div class="form-group">
                    <label>Số lượng</label>
                    <input type="number" class="form-control" name="quantity" placeholder="Số lượng sản phẩm" required value="<?php echo $product['quantity'] ?>">
                </div>

                <label>Khuyến mãi</label>
                <div class="form-group">
                    <select name="id_promotion" class="form-control">
                        <option value="0">Không có khuyến mãi nào</option>
                        <?php foreach ($promotion as $key => $value): ?>
                         <option value="<?php echo $value['id'] ?>"  <?php echo $value['id'] == $product['id_promotion'] ? 'selected' : ''; ?>><?php echo $value['name'] ?></option>
                        <?php endforeach ?>
                    </select>
                </div>

                <div class="form-group">
                    <label >Trạng thái</label>
                    <select name="status" class="form-control" >
                        <option value="1" <?php echo $product['status'] == 1 ? 'selected' : ''; ?>>Hiển thị</option>
                        <option value="2" <?php echo $product['status'] == 2 ? 'selected' : ''; ?>>Không hiển thị</option>
                        <option value="3" <?php echo $product['status'] == 3 ? 'selected' : ''; ?>>New</option>
                    </select>
                </div>

                <button type="submit" class="btn btn-primary btn-block" style="margin-bottom: 20px;">Cập nhật</button>
            </form>  
            </div>
           
        </div>
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                 <h3 class="page-header">Bình luận
                    <small>Danh sách</small>
                </h3>
            
            </div>
            <!-- /.col-lg-12 -->
        
            <table class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <th class="text-center">STT</th>
                        <th class="text-center">Người dùng</th>
                        <th class="text-center">Nội dung bình luận</th>
                        <th class="text-center">Thời gian</th>
                        <th class="text-center">Trạng thái</th>
                        <th class="text-center">Sửa</th>
                        <th class="text-center">Xóa</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($listCmt as $key => $value):?>
                    
                    <tr class="odd gradeX" align="center">
                        <td><?php echo $i ?></td>
                        <td><?php echo $value['fullname'] ?></td>
                        <td><?php echo $value['content'] ?></td>
                        <td><?php echo date("d/m/Y", $value['time_created']); ?></td>
                        <td>
                            <?php $status = $value['status']==1 ?'Đã kiểm duyệt': 'Chưa kiểm duyệt' ?>
                             <div class="status"><?php echo $status ?></div>
                             <div class="change_status kHThi">
                                <select class="form-control contentStatus">
                                    <option value="1">Đã kiểm duyệt</option>
                                    <option value="2">Chưa kiểm duyệt</option>
                                </select>
                                <i class="btn btn-success btn-sm glyphicon glyphicon-ok done pull-left"></i>
                                <input type="hidden" value="<?php echo $value['id'] ?>" class="idOrder">
                             </div>
                        </td>
                        <td class="center change"> 
                            <button class="btn btn-info btn-sm"><i class="fa fa-pencil fa-fw"></i></button>
                        </td>

                        <td class="center" id="removeCmt"> 
                             <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o  fa-fw"></i></button>
                        </td>
                        <input type="hidden" value="<?php echo $value['id'] ?>">
                        
                    </tr>
                    <?php $i= $i+1 ?>

                    <?php endforeach ?>
                    
                </tbody>
            </table>
            
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/footer.php'); ?>

<script>
    CKEDITOR.replace( 'description' );
</script>  

<script>
        document.addEventListener("DOMContentLoaded",function(){
      //change status cmt 
        $('body').on('click','.change',function () {
            $(this).prev().find('.change_status').removeClass('kHThi');
            $(this).prev().find('.status').addClass('kHThi');

        });
        $('body').on('click','.done',function () {   
            $(this).parent().addClass('kHThi');
            $(this).parent().prev().removeClass('kHThi');
            status = $(this).prev().val();
            id=$(this).next().val();
            nd=(status==1)?'Đã kiểm duyệt':'Chưa kiểm duyệt';
            $(this).parent().prev('.status').html(nd);
            $.ajax({
                url: '/project2/admin/Comment/update',
                type: 'POST',
                data: {status: status,id:id}
            })
            .done(function() {
            })
            .fail(function() {
            })
            .always(function() {
            });
        });
        // remove cmt
        $('body').on('click','#removeCmt',function () {
        var ndXoa = $(this).parent();
            id    = $(this).next().val(); 
         $.ajax({
                url: '/project2/admin/Comment/delete',
                type: 'POST',
                data: {id:id}
            })
            .done(function() {
            })
            .fail(function() {
            })
            .always(function(data) {
                ndXoa.remove();
            });
        });

        },false);
        
    </script>


