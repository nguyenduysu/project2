<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Comment extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Comment_model');
		//Load Dependencies

	}

	// List all your items
	public function index( $offset = 0 )
	{
		
	}

	// Add a new item
	public function add()
	{

	}

	//Update one item
	public function update( $id = NULL )
	{
		$status = $this->input->post('status');
		$id     = $this->input->post('id');
		$this->Comment_model->update(array('status' => $status), array('id' => $id));
	}

	//Delete one item
	public function delete( $idCmt = NULL)
	{
		$id = $this->input->post('id');
		$this->Comment_model->delete($id);
	}
}

/* End of file Comment.php */
/* Location: ./application/controllers/admin/Comment.php */
