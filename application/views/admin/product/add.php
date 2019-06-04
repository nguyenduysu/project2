<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/nav.php'); ?>
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Sản phẩm
                    <small>Thêm mới</small>
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
               <form action="<?php echo base_url()?>admin/Product/insert" method="POST" role="form" validate enctype="multipart/form-data">
                <label>Tên sản phẩm</label>
                <div class="form-group">
                    <input type="text" class="form-control"  name="name" placeholder="Tên sản phẩm" required>
                </div>

                <label>Danh mục</label>
                <div class="form-group">
                    <select name="id_category" class="form-control">
                        <?php foreach ($category as $key => $value): ?>
                         <option value="<?php echo $value['id'] ?>"><?php echo $value['name'] ?></option>
                        <?php endforeach ?>
                       
                    </select>
                </div>

                <div class="form-group">
                    <label>Nhãn hiệu</label>
                    <input type="text" class="form-control" name="label" placeholder="Apple, Samsung, LG,..." required>
                </div>

                <div class="form-group">
                    <label>Ảnh đại diện</label>
                    <input type="file" class="form-control" name="image" placeholder="Ảnh sản phẩm" required>
                </div>

                <div class="form-group">
                    <label>Giá</label>
                    <input type="number" class="form-control" name="price_origin" placeholder="Giá gốc" required>
                </div>

                <div class="form-group">
                    <label >Giá khuyến mại</label>
                    <input type="number" class="form-control" name="price_sales" placeholder="Giá khuyến mại">
                </div>

                <div class="form-group">
                    <label>Thông tin chi tiết sản phẩm</label>
                    <textarea name="description" id="description" required></textarea>
                </div>

                <div class="form-group">
                    <label>Số lượng</label>
                    <input type="number" class="form-control" name="quantity" placeholder="Số lượng sản phẩm" required>
                </div>

                <label>Khuyến mãi</label>
                <div class="form-group">
                    <select name="id_promotion" class="form-control">
                        <option value="0">Không có khuyến mãi nào</option>
                        <?php foreach ($promotion as $key => $value): ?>
                         <option value="<?php echo $value['id'] ?>"><?php echo $value['name'] ?></option>
                        <?php endforeach ?>
                    </select>
                </div>

                <div class="form-group">
                    <label >Trạng thái</label>
                    <select name="status" class="form-control" >
                        <option value="1">Hiển thị</option>
                        <option value="2">Không hiển thị</option>
                        <option value="3">New</option>
                    </select>
                </div>

                <button type="submit" class="btn btn-primary btn-block" style="margin-bottom: 20px;">Thêm mới</button>
            </form>  
            </div>
           
        </div>
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->
<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/footer.php'); ?>

<script>
    CKEDITOR.replace( 'description' );
</script>  



