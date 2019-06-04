<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Order extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Order_model');
		$this->load->model('User_model');
		$this->load->model('OrderProduct_model');
		$this->load->model('Product_model');

	}

	// List all your items
	public function index( $offset = 0 )
	{
		$params    = $this->getParams();
		$limit     = 10;
		$total     = $this->Order_model->countOrder($params); 
		$order     = $this->Order_model->getOrderByPage($limit, $offset, $params);
		$nameUser  = $this->User_model->get();

		if($params['status'] == 0 && ($params['timeStart'] == 0 && $params['timeEnd'] == 0)) {
		$this->load->library('pagination');
		$config['base_url']        = '/project2/admin/Order/index';
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
		$this->load->view('admin/order/list', array('order' => $order,'listUser' => $nameUser, 'pagination' => true));	
		} else {
		$this->load->view('admin/order/list',array('order' => $order, 'listUser' => $nameUser, 'pagination' => false));
		}

	}

	//Update one item
	public function update( $id = NULL )
	{
		$status = $this->input->post('status');
		$id     = $this->input->post('id');
		$sales  = $this->session->userdata('id');

		// check level update status
		$order = $this->Order_model->get($id);
		$curentStatus =  $order->status;

		if (($status == 3 && $curentStatus == 4) || ($status == 4 && $curentStatus == 3 ) || ($status <= $curentStatus)) {
			echo "errorUpdateStatus";
		} else {
		$this->Order_model->update(array('status' => $status, 'sales_id' => $sales), array('id' => $id));
		if ($status == 3) { // đã giao hàng -> cộng vào sp đã bán
			$listOrder = $this->OrderProduct_model->getProductByOder($id);
			foreach ($listOrder as $key => $value) {
			$product  = $this->Product_model->get($value['product_id']);
			$totalExp = $value['quantity'] + $product['quantity_exp'];
			$this->Product_model->update(array('quantity_exp' => $totalExp), $value['product_id']);
		}
		} else if ($status == 4) { // hủy đơn hàng -> cộng vào kho
			$listOrder = $this->OrderProduct_model->getProductByOder($id);
			foreach ($listOrder as $key => $value) {
			$product  = $this->Product_model->get($value['product_id']);
			$totalExp = $value['quantity'] + $product['quantity'];
			$this->Product_model->update(array('quantity' => $totalExp), $value['product_id']);
		}
		}
	}

}

	//Delete one item
	public function delete( $id = NULL )
	{
		$id = $this->input->post('id');
		$this->Order_model->delete($id);
		$this->OrderProduct_model->delete(array('order_id' => $id));
	}

	public function getParams()
	{
		$params = array('timeStart' => strtotime($this->input->post('timeStart')),
					    'timeEnd'   => strtotime($this->input->post('timeEnd')),
					    'status'    => $this->input->post('status'));
		return $params;
	}

	public function viewDetail($id = NULL)
	{
		$listOrder    = $this->OrderProduct_model->getDetailOrder($id);
		$this->load->view('admin/order/viewDetail', array('listOrder' => $listOrder));
	}

	public function checkStatusOrder()
	{
		$id    = $this->input->post('id');
		$order = $this->Order_model->get($id);
		echo $order->status;
	}
}

/* End of file Order.php */
/* Location: ./application/controllers/admin/Order.php */
