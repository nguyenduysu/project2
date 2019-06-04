<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Banner extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Banner_model');

	}

	// List all your items
	public function index( $offset = 0 )
	{
		$quangcao = $this->Banner_model->get();
		$quangcao = (!$quangcao) ? array() : $quangcao;
		$quangcao = array('quangcao' => $quangcao);
		$this->load->view('admin/banner/Banner_view', $quangcao);
	}

	public function addBanner()
	{
		$this->load->view('admin/banner/add_Banner_view');
	}

	// Add a new item
	public function add()
	{
		$dataInsert = $this->getDataInput();
		$message    = 'Thêm mới quảng cáo ';

		$config['upload_path']   = './uploads/ImageBanner/';
		$config['allowed_types'] = 'gif|jpg|png|jpeg';
		$config['max_size']      = '100000';
		$this->load->library('upload', $config);

		if ( ! $this->upload->do_upload('image')){
			$error = array('error' => $this->upload->display_errors());
			$this->load->view('admin/banner/add_Banner_view', array('status' => false , 'message' => $message.'không thành công'));
		} else {
			$data  =  $this->upload->data();
			$image = $data['file_name'];
			$dataInsert['image'] = $image;
			$this->Banner_model->insert($dataInsert);
			$this->load->view('admin/banner/add_Banner_view', array('status' => true, 'message' => $message.'thành công'));
		}
	}

	public function editByID($id)
	{
		$quangcao = $this->Banner_model->get($id);
		$quangcao = array('quangcao' => $quangcao);
		$this->load->view('admin/banner/edit_Banner_view', $quangcao, FALSE);
	}

	//Update one item
	public function update( $id = NULL )
	{
		$message    = 'Cập nhật quảng cáo ';
		$dataUpdate = $this->getDataInput();
		$image      = $_FILES['image']['name'];

		if ($image != NULL) {
			$config['upload_path']   = './uploads/ImageBanner/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
			$config['max_size']      = '100000';
			$this->load->library('upload', $config);

			$banner = $this->Banner_model->get($id);

			if ( ! $this->upload->do_upload('image')){
			$error = array('error' => $this->upload->display_errors());

			$this->load->view('admin/banner/edit_Banner_view', array('status' => false, 'message' => $message.'không thành công',
			 'quangcao' => $banner));
			} else {
			$data  =  $this->upload->data();
			$dataUpdate['image'] = $data['file_name'];
			$this->Banner_model->update($dataUpdate, $id);

			$banner = $this->Banner_model->get($id);
			$this->load->view('admin/banner/edit_Banner_view', array('status' => true, 'message' => $message.'thành công',
			 'quangcao' => $banner));
			}
		} else {
			$this->Banner_model->update($dataUpdate, $id);
			$banner = $this->Banner_model->get($id);
			$this->load->view('admin/banner/edit_Banner_view', array('status' => true, 'message' => $message.'thành công',
			 'quangcao' => $banner));
		}
	}

	//Delete one item
	public function delete( $id = NULL )
	{
		if($this->Banner_model->delete($id))
		{
			$quangcao = $this->Banner_model->get();
			$quangcao = (!$quangcao) ? array() : $quangcao;
			$this->load->view('admin/banner/Banner_view', array('quangcao' => $quangcao), FALSE);
		}
	}

	public function getDataInput()
	{
		$data = array('name'    => $this->input->post('name'),
					  'content' => $this->input->post('content'),
					  'link'    => $this->input->post('link'),
					  'type'    => $this->input->post('type'),
					  'status'  => $this->input->post('status'));
		return $data;
	}
}

/* End of file Banner.php */
/* Location: ./application/controllers/admin/Banner.php */
