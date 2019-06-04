<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Category_model');
		$this->load->model('Promotion_model');
		$this->load->model('Product_model');
		$this->load->model('Comment_model');
	}

	// List all your items
	public function index( $offset = 0 )
	{
		$params      = $this->getParams();
		$limit       = 10;
		$total       = $this->Product_model->countProduct($params);
		$listProduct = $this->Product_model->getProductByPage($limit, $offset, $params);
		$category    = $this->Category_model->get();

		if($params['status'] == 0 && $params['name'] == "" && $params['id_category'] == 0) {
			$this->load->library('pagination');
			$config['base_url']        = '/project2/admin/Product/index';
			$config['total_rows']      = $total;
			$config['per_page']        = $limit;
			$config['uri_segment']     = 0;
			$config['num_links']       = 1;
			$config['full_tag_open']   = '<div class="phantrang"><p>';
			$config['full_tag_close']  = '</p></div>';
			$config['first_link']      = 'First';
			$config['first_tag_open']  = '<div>';
			$config['first_tag_close'] = '</div>';
			$config['last_link']       = 'Last';
			$config['last_tag_open']   = '<div>';
			$config['last_tag_close']  = '</div>';
			$config['next_link']       = '&raquo;';
			$config['next_tag_open']   = '<div>';
			$config['next_tag_close']  = '</div>';
			$config['prev_link']       = '&laquo;';
			$config['prev_tag_open']   = '<div>';
			$config['prev_tag_close']  = '</div>';
			$config['cur_tag_open']    = '<b>';
			$config['cur_tag_close']   = '</b>';	
			$this->pagination->initialize($config);
			$this->load->view('admin/product/list', array('listProduct' => $listProduct, 'category' => $category, 'pagination' => true));	
		} else {
		$this->load->view('admin/product/list', array('listProduct' => $listProduct, 'category' => $category,  'pagination' => false));
		}
	}

	// Add a new item
	public function add( $id = NULL )
	{
		$category       = $this->Category_model->get();
		$promotion      = $this->Promotion_model->getPromotionActive();
		
		if (isset($id)) {
			$product = $this->Product_model->get($id);
			$listCmt = $this->Comment_model->getAllCmt($id);
	
			$this->load->view('admin/product/edit', array('category' => $category, 'promotion' => $promotion, 'product' => $product, 'listCmt' => $listCmt));
		} else {
			$this->load->view('admin/product/add', array('category' => $category, 'promotion' => $promotion));			
		}

	}

	public function insert()
	{
		$category   = $this->Category_model->get();
		$promotion  = $this->Promotion_model->getPromotionActive();

		$dataInsert = $this->getDataInput();
		$message    = 'Thêm mới sản phẩm';

		$config['upload_path']   = './uploads/product/';
		$config['allowed_types'] = 'gif|jpg|png|jpeg';
		$config['max_size']      = '100000';
		$this->load->library('upload', $config);

		if ( ! $this->upload->do_upload('image')){
			$error = array('error' => $this->upload->display_errors());
			$this->load->view('admin/product/add', array('status' => false, 'message' => $message.' thất bại', 'category' => $category, 'promotion' => $promotion));
		} else {
			$data  =  $this->upload->data();
			$image = $data['file_name'];
			$dataInsert['image'] = $image;
			$check = $this->Product_model->insert($dataInsert);
			if ($check) {
			$this->load->view('admin/product/add', array('status' => true, 'message' => $message.' thành công', 'category' => $category, 'promotion' => $promotion));
			} else {
				$this->load->view('admin/product/add', array('status' => false, 'message' => $message.' thất bại', 'category' => $category, 'promotion' => $promotion));
			}
			
		}
	}

	//Update one item
	public function update( $id = NULL )
	{
		$message    = 'Cập nhật sản phẩm';
		$category   = $this->Category_model->get();
		$promotion  = $this->Promotion_model->getPromotionActive();
		$dataUpdate = $this->getDataInput();
		$image      = $_FILES['image']['name'];

		if ($image != NULL) {
			$config['upload_path']   = './uploads/product/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
			$config['max_size']      = '100000';
			$this->load->library('upload', $config);

			$product = $this->Product_model->get($id);
			$listCmt = $this->Comment_model->getAllCmt($id);

			if ( ! $this->upload->do_upload('image')){
			$error = array('error' => $this->upload->display_errors());
			$this->load->view('admin/product/edit', array('status' => false, 'message' => $message.' thất bại', 'category' => $category, 'promotion' => $promotion, 'product' => $product, 'listCmt' => $listCmt));
			} else {
			$data  =  $this->upload->data();
			$dataUpdate['image'] = $data['file_name'];
			$this->Product_model->update($dataUpdate, array('id' => $id));
			$product = $this->Product_model->get($id);
			$this->load->view('admin/product/edit', array('status' => true, 'message' => $message.' thành công', 'category' => $category, 'promotion' => $promotion, 'product' => $product, 'listCmt' => $listCmt));
			}
		} else {
			$this->Product_model->update($dataUpdate, array('id' => $id));
			$product = $this->Product_model->get($id);
			$listCmt = $this->Comment_model->getAllCmt($id);

			$this->load->view('admin/product/edit', array('status' => true, 'message' => $message.' thành công', 'category' => $category, 'promotion' => $promotion, 'product' => $product, 'listCmt' => $listCmt));
		}
		
	}

	//Delete one item
	public function delete( $id = NULL )
	{
		$this->Product_model->delete($id);
		$link = 'location:'.base_url().'admin/Product';
		header($link);
	}

	public function getDataInput()
	{
		$data = array('name'         => $this->input->post('name'),
					  'id_category'  => $this->input->post('id_category'),
					  'label'        => $this->input->post('label'),
					  'price_origin' => $this->input->post('price_origin'),
					  'price_sales'  => $this->input->post('price_sales'),
					  'description'  => $this->input->post('description'),
					  'quantity'     => $this->input->post('quantity'),
					  'id_promotion' => $this->input->post('id_promotion'),
					  'status'       => $this->input->post('status'));
		return $data;
	}

	public function getParams()
	{
		$params = array('name'       => $this->input->post('name'),
					  'id_category'  => $this->input->post('id_category'),
					  'status'       => $this->input->post('status'));
		return $params;
	}
}

/* End of file Product.php */
/* Location: ./application/controllers/admin/Product.php */
