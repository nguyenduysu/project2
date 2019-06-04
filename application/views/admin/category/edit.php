<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/nav.php'); ?>

<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Danh mục
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

               <form action="<?php echo base_url()?>admin/Category/update/<?php echo $category['id'] ?>" method="POST" role="form" validate>
                <label>Tên danh mục</label>
                <div class="form-group">
                    <input type="text" class="form-control"  name="name" placeholder="Tên danh mục" required value="<?php echo $category['name'] ?>">
                </div>

                <label>Trạng thái</label>
                <div class="form-group">
                    <select name="status" class="form-control">
                        <option value="1" <?php echo $category['status'] == 1 ? 'selected' : ''; ?>>Hoạt động</option>
                        <option value="0" <?php echo $category['status'] == 0 ? 'selected' : ''; ?>>Ngừng hoạt động</option>
                    </select>
                </div>

                <label>Vị trí</label>
                <div class="form-group">
                    <input type="number" class="form-control"  name="sort" placeholder="Vị trí" min="1" max="10" required  value="<?php echo $category['sort'] ?>">
                </div>

                <button type="submit" class="btn btn-primary btn-block">Cập nhật</button>
            </form>  
            </div>
           
        </div>
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->
<?php include($_SERVER['DOCUMENT_ROOT'].'/project2/application/core/layout/footer.php'); ?>


