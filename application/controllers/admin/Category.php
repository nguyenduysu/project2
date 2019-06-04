<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Category extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Category_model');
		$this->load->model('Product_model');
	}

	// List all your items
	public function index( $offset = 0 )
	{
		$listCate = $this->Category_model->get();

		$this->load->view('admin/category/list', array('listCate' => $listCate));	
	}

	// Add a new item
	public function add($id = NULL)
	{
		if (isset($id)) {
			$category = $this->Category_model->get($id);
			$this->load->view('admin/category/edit', array('category' => $category));
		} else {
			$this->load->view('admin/category/add');			
		}
	}

	public function insert()
	{
		$data    = $this->getDataInput();
		$message = 'Thêm mới danh mục';
		$check   = $this->Category_model->insert($data);

		if ($check) {
			$this->load->view('admin/category/add', array('status' => true, 'message' => $message.' thành công'));
		} else {
			$this->load->view('admin/category/add', array('status' => false, 'message' => $message.' thất bại'));
		}
	}

	//Update one item
	public function update( $id = NULL )
	{
		$data     = $this->getDataInput();
		$message  = 'Cập nhật danh mục';

		$this->Category_model->update($data, array('id' => $id));

		$category = $this->Category_model->get($id);
		
		$this->load->view('admin/category/edit', array('status' => true, 'message' => $message.' thành công', 'category' => $category));
	}

	//Delete one item
	public function delete( $id = NULL )
	{
		$checkExits = $this->Product_model->get(array('id_category' => $id));
		$message    = 'Xóa danh mục';

		if (!$checkExits) {
			$this->Category_model->delete($id);
			$listCate   = $this->Category_model->get();
			$this->load->view('admin/category/list', array('status' => true, 'message' => $message.' thành công', 'listCate' => $listCate));
		} else {
			$listCate   = $this->Category_model->get();
			$this->load->view('admin/category/list', array('status' => false, 'message' => $message.' không thành công. Đang tồn tại sản phẩm trong danh mục !', 'listCate' => $listCate));
		}
	}

	public function getDataInput()
	{
		$data = array('name'   => $this->input->post('name'),
					  'status' => $this->input->post('status'),
					  'sort'   => $this->input->post('sort'));
		return $data;
	}
}

/* End of file Category.php */
/* Location: ./application/controllers/admin/Category.php */
