<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Promotion extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Promotion_model');
	}

	// List all your items
	public function index( $offset = 0 )
	{
		$limit     = 10;
		$total     = $this->Promotion_model->countPromotion(); 
		$promotion = $this->Promotion_model->getPromotionByPage($limit,$offset);

		$this->load->library('pagination');
		$config['base_url']        = '/project2/admin/Promotion/index';
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
		$this->load->view('admin/promotion/list', array('promotion' => $promotion));
	}

	// Add a new item
	public function add($id = NULL)
	{
		if (isset($id)) {
			$promotion = $this->Promotion_model->get($id);
			$promotion['time_start'] = date('Y-m-d', $promotion['time_start']);
			$promotion['time_end']   = date('Y-m-d', $promotion['time_end']);
			$this->load->view('admin/promotion/edit', array('promotion' => $promotion));
		} else {
			$this->load->view('admin/promotion/add');			
		}
	}

	public function insert()
	{
		$data    = $this->getDataInput();
		$message = 'Thêm mới khuyến mãi';
		$check   = $this->Promotion_model->insert($data);
		
		if ($check) {
			$this->load->view('admin/promotion/add', array('status' => true, 'message' => $message.' thành công'));
		} else {
			$this->load->view('admin/promotion/add', array('status' => false, 'message' => $message.' thất bại'));
		}
	}

	//Update one item
	public function update( $id = NULL )
	{
		$data     = $this->getDataInput();
		$message  = 'Cập nhật khuyến mãi';

		$this->Promotion_model->update($data, array('id' => $id));

		$promotion = $this->Promotion_model->get($id);
		$promotion['time_start'] = date('Y-m-d', $promotion['time_start']);
		$promotion['time_end']   = date('Y-m-d', $promotion['time_end']);
		
		$this->load->view('admin/promotion/edit', array('status' => true, 'message' => $message.' thành công', 'promotion' => $promotion));
	}

	//Delete one item
	public function delete( $id = NULL )
	{
		$this->Promotion_model->delete($id);
		$link = 'location:'.base_url().'admin/Promotion';
		header($link);
	}

	public function getDataInput()
	{
		$data = array('name'       => $this->input->post('name'),
					  'detail'     => $this->input->post('detail'),
					  'time_start' => strtotime($this->input->post('timeStart')),
					  'time_end'   => strtotime($this->input->post('timeEnd')),
					  'status'     => $this->input->post('status'));
		return $data;
	}
}

/* End of file Promotion.php */
/* Location: ./application/controllers/admin/Promotion.php */
