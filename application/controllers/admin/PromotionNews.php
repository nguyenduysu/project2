<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PromotionNews extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('PromotionNews_model');

	}

	// List all your items
	public function index( $offset = 0 )
	{
		$tintuc = $this->PromotionNews_model->get();
		$tintuc = (!$tintuc) ? array() : $tintuc;
		$tintuc = array('tintuc' => $tintuc);
		$this->load->view('admin/promotionNews/PromotionNews_view', $tintuc);
	}

	public function addPromotionNews()
	{
		$this->load->view('admin/promotionNews/add_PromotionNews_view');
	}

	// Add a new item
	public function add()
	{
		
		$dataInsert = $this->getDataInput();
		$message    = 'Thêm mới tin tức ';

		$config['upload_path']   = './uploads/ImagePromotionNews/';
		$config['allowed_types'] = 'gif|jpg|png|jpeg';
		$config['max_size']      = '100000';
		$this->load->library('upload', $config);

		if ( ! $this->upload->do_upload('image')){
			$error = array('error' => $this->upload->display_errors());
			$this->load->view('admin/promotionNews/add_PromotionNews_view', array('status' => false , 'message' => $message.'không thành công'));
		} else {
			$data  =  $this->upload->data();
			$image = $data['file_name'];
			$dataInsert['image'] = $image;
			$this->PromotionNews_model->insert($dataInsert);
			$this->load->view('admin/promotionNews/add_PromotionNews_view', array('status' => true, 'message' => $message.'thành công')); 
		}
	}

	public function editById($id)
	{
		$tintucById = $this->PromotionNews_model->get($id);
		$tintuc = array('tintuc' => $tintucById);
		$this->load->view('admin/promotionNews/edit_PromotionNews_view', $tintuc, FALSE);
	}

	//Update one item
	public function update( $id = NULL )
	{
		$message    = 'Cập nhật tin tức ';
		$dataUpdate = $this->getDataInput();
		$image      = $_FILES['image']['name'];

		if ($image != NULL) {
			$config['upload_path']   = './uploads/ImagePromotionNews/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
			$config['max_size']      = '100000';
			$this->load->library('upload', $config);

			$tintuc = $this->PromotionNews_model->get($id);

			if ( ! $this->upload->do_upload('image')){
			$error = array('error' => $this->upload->display_errors());

			$this->load->view('admin/promotionNews/edit_PromotionNews_view', array('status' => false , 'message' => $message.'không thành công', 'tintuc' => $tintuc));
			} else {
			$data  =  $this->upload->data();
			$dataUpdate['image'] = $data['file_name'];

			$this->PromotionNews_model->update($dataUpdate, array('id' => $id));
			$tintuc = $this->PromotionNews_model->get($id);
			$this->load->view('admin/promotionNews/edit_PromotionNews_view', array('status' => true , 'message' => $message.'thành công', 'tintuc' => $tintuc));
			}
		} else {
			$this->PromotionNews_model->update($dataUpdate, array('id' => $id));
			$tintuc = $this->PromotionNews_model->get($id);
			$this->load->view('admin/promotionNews/edit_PromotionNews_view', array('status' => true, 'message' => $message.'thành công', 'tintuc' => $tintuc)); 
		}
	}

	//Delete one item
	public function delete( $id = NULL )
	{
		$this->PromotionNews_model->delete($id);
		$tintuc = $this->PromotionNews_model->get();
		$tintuc = (!$tintuc) ? array() : $tintuc;
		$tintuc = array('tintuc' => $tintuc);
		$this->load->view('admin/promotionNews/PromotionNews_view', $tintuc, FALSE);
	}

	public function getDataInput()
	{
		$dataInput = array(
			'title'   => $this->input->post('title'),
			'summary' => $this->input->post('summary'),
			'content' => $this->input->post('content'),
			'status'  => $this->input->post('status'));
		return $dataInput;
	}

}

/* End of file PromotionNews.php */
/* Location: ./application/controllers/admin/PromotionNews.php */
