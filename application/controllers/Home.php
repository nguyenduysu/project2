<?php if (!defined('BASEPATH')) {
	exit('No direct script access allowed');
}

class Home extends CI_Controller {
	public $footer;
	public $header;

	public function __construct() {
		parent::__construct();
		$this->load->model('Category_model');
		$this->load->model('Product_model');
		$this->load->model('Order_model');
		$this->load->model('User_model');
		$this->load->model('Promotion_model');
		$this->load->model('PromotionNews_model');
		$this->load->model('OrderProduct_model');
		$this->load->model('Comment_model');
		$this->load->model('InforCompany_model');
		$this->load->model('Banner_model');
		$this->footer = $this->InforCompany_model->get();
		$this->header = $this->Category_model->getAllCategory();
		
	}

	public function index() {
		$banner = $this->Banner_model->getBanner();	
		$category = $this->Category_model->getAllCategory();
		$id = array();
		for ($i = 0; $i < count($category); $i++) {
			$id[$i] = $category[$i]['id'];
		}
		$phone   = $this->Product_model->getProductByCategory($id[0]); 
		$tablet  = $this->Product_model->getProductByCategory($id[1]);
		$laptop  = $this->Product_model->getProductByCategory($id[2]);
		$phukien = $this->Product_model->getProductByCategory($id[3]);
		$new     = $this->Product_model->getProductByNew();
		$data    = array('footer' => $this->footer,'header' =>$this->header, 'banner' => $banner, 'phone' => $phone, 'tablet' => $tablet, 'laptop' => $laptop, 'phukien' => $phukien, 'new' => $new);
		$this->load->view('Home_view', $data, FALSE);
	}

	public function TinTuc()
	{
		$listNews   = $this->PromotionNews_model->getListNews();
		$productNew = $this->Product_model->getProductByNew();
		$listNews = (!$listNews) ? array() : $listNews;
		$data = array(
			'header' =>$this->header,
			'footer' => $this->footer,
			'listNews' => $listNews,
			'product'  => $productNew);
		$this->load->view('Tintuc_view',$data, FALSE);
	}

	public function TinTucDetail($id)
	{
		$tintuc = $this->PromotionNews_model->get($id);
		$tintuc = array('tintuc' => $tintuc,'footer' => $this->footer,'header' =>$this->header);
		$this->load->view('TintucDetail_view', $tintuc, FALSE);
	}

	public function loadMoreTintuc()
	{
		$offset = $this->input->post('offset');
		$tintuc3 = $this->PromotionNews_model->getLoadMore($offset);
		$res['status'] = '';
		$res['data']   = '';
		if (count($tintuc3) == 0) {
			$res['status'] = 'NULL';
		} else {
			$res['status'] = 'success';
			$htmlAdd = '';                    
        			
			foreach ($tintuc3 as $tintuc3) {
				$htmlAdd.='<li>';
				$htmlAdd.='<a href="/project2/Home/TinTucDetail/'.$tintuc3['id'] .'">';
				$htmlAdd.='<span class="row">';
				$htmlAdd.= '<div class="span-group">';
				$htmlAdd.= ' <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">';
				$htmlAdd.= '<img width="200px" src="'.base_url().'uploads/ImagePromotionNews/'.$tintuc3['image'].'" alt="" class="anhtintuccu">';
				$htmlAdd.= ' </div>';
				$htmlAdd.= '<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">';
				$htmlAdd.=' <h3 class="title">'.$tintuc3['title'].'</h3>';
				$htmlAdd.='<p class="tomtat">'.$tintuc3['summary'].'</p>';		
				$htmlAdd.='<p class="time_created">'.date('d/m/Y H:i:s A', $tintuc3['time_created']).'</p>';
				$htmlAdd.='</div>';
				$htmlAdd.='</span>';
				$htmlAdd.='</a>';
				$htmlAdd.='<hr>';
				$htmlAdd.='</li>';
			}
			$res['data']   = $htmlAdd;
		}
		echo json_encode($res);
	}

	public function singleProduct($id_category, $id) {
		// detail product
		$data    = $this->Product_model->getSingleProduct($id, $id_category);
		$sp_same = $this->Product_model->getProductSame($id, $id_category);
		$listCmt = $this->Comment_model->getCmtByProduct($id, 0);
		$data    = array('footer' => $this->footer,'header' =>$this->header, 'data' => $data, 'spSame' => $sp_same, 'listCmt' => $listCmt);
		$this->load->view('singleProduct_view', $data, FALSE);
	}

	public function addToCart() {
		$id = $this->input->post('id');
		$slAdd = $this->input->post('sl');
		if (isset($this->session->userdata['cart'][$id])) {
			$quantityInCart = $this->session->userdata['cart'][$id][0];
			$all = $quantityInCart + $slAdd;
			if ($all > 5) {
				echo json_encode('limit');
			} else {
				if ($this->Product_model->checkQuantity($id, $all)) {
					$this->session->userdata['cart'][$id][0] = $all;
					echo json_encode('done');
				} else {
					echo json_encode('expired');
				}
			}
		} else {
			if ($this->Product_model->checkQuantity($id, $slAdd)) {
				$temp = array($slAdd + 0, 0);
				$this->session->userdata['cart'][$id] = $temp;
				echo json_encode('done');
			} else {
				echo json_encode('expired');
			}
		}
	}

	public function Cart() {
		if (isset($this->session->userdata['cart'])) {
			$cart = $this->session->userdata['cart'];
			$where = array();
			foreach ($cart as $key => $value) {
				array_push($where, $key);
			}
			$data = $this->Product_model->getProductByCart($where);
			$data = array('footer' => $this->footer,'header' =>$this->header,'data' => $data);
			$this->load->view('cart_view', $data);
		} else {
			$data = NULL;
			$data = array('footer' => $this->footer,'header' =>$this->header,'data' => $data);
			$this->load->view('cart_view', $data, FALSE);
		}
	}

	public function editQuantity() {
		$id = $this->input->post('id');
		$sl = $this->session->userdata['cart'][$id][0];
		$sl--;
		$this->session->userdata['cart'][$id][0] = $sl;
	}

	public function removeProductInCart() {
		$id = $this->input->post('id');
		unset($this->session->userdata['cart'][$id]);
		$cart = $this->session->userdata['cart'];
		if (count($cart) == 0) {
			$this->session->unset_userdata('cart');
		}

	}

	public function changeStatusAll() {
		$status = $this->input->post('status');
		$status = (int) $status;
		foreach ($this->session->userdata['cart'] as $key => &$value) {
			$value[1] = $status;
		}
	}
	public function changeStatusSingle() {
		$id = $this->input->post('id');
		$status = $this->input->post('status');
		$status = (int) $status;
		foreach ($this->session->userdata['cart'] as $key => &$value) {
			if ($key == $id) {
				$value[1] = $status;
			}
		}
	}

	public function verify() {
		$cart = $this->session->userdata['cart'];
		$val = 0;
		foreach ($cart as $key => $value) {
			if ($value[1]) {
				$val++;
				break;
			}
		}
		$status = ($val > 0) ? 'done' : 'fail';
		echo json_encode($status);
	}

	public function TimkiemAjax() {
		$key = $this->input->post('key');
		$data = $this->Product_model->TimkiemAjax($key);
		$data = array('footer' => $this->footer,'header' =>$this->header, 'data' => $data);
		$this->load->view('seachAjax_view', $data, FALSE);
	}

	public function Timkiem() {
		$keySearch = $this->input->post('keySearch');
		$data = $this->Product_model->Timkiem($keySearch);
		$data = array('footer' => $this->footer,'header' =>$this->header, 'data' => $data, 'keySearch' => $keySearch);
		$this->load->view('resultSearch', $data);
	}

	public function showProduct($id) {
		$data = $this->Product_model->getLoadMore($id, 0);
		$data = array('footer' => $this->footer,'header' =>$this->header,'products' => $data);
		$this->load->view('showProduct_view', $data);
	}

	public function loadMore() {
		$id_category = $this->input->post('idCartegory');
		$offset = $this->input->post('offset');
		$data = $this->Product_model->getLoadMore($id_category, $offset);
		$res['status'] = '';
		$res['data']   = '';
		if (count($data) == 0) {
			$res['status'] = 'NULL';
		} else {
			$res['status'] = 'success';
			$htmlAdd = '';
			
			foreach ($data as $key => $value) {
				$htmlAdd .= '<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3"><div class="product"><a href="/project2/Home/singleProduct/'.$value['id_category'].'/'.$value['id'].'">';
				 $htmlAdd.='<img width="100%" src="/project2/uploads/product/'.$value['image'].'" alt="Lỗi"></a>';
				 $htmlAdd.=	'<a href="/project2/Home/singleProduct/'.$value['id_category'].'/'.$value['id'].'">';
				 $htmlAdd.='<div class="name">'.$value['name'].'</div></a>';
				 if ($value['price_sales']) {
				 $htmlAdd.='<div class="prices">';
				 $htmlAdd.= '<div class="span-group">';
				 $htmlAdd.= '<span class="price">'.number_format($value['price_origin'],0,".", ".").'₫</span>';
				 $htmlAdd.= '<span class="priceSale">'.number_format($value['price_sales'],0,".", ".").'₫</span>';
				 $htmlAdd.= '</div>';
				 $htmlAdd.= '</div>';
				 } else {
					$htmlAdd.='<div class="price">'.number_format($value['price_origin'],0,".", ".").'₫</div>';	
				 }
				 $htmlAdd.='<div class="note">'.$value['promotion'].'</div>';
				 $htmlAdd.='<div class="addToCart"><button class="btn btn-danger" value="'.$value['id'].'">Thêm vào giỏ hàng</button></div>';		
				 $htmlAdd.='</div>';
				 $htmlAdd.='</div>';
				 }
				 $res['data']   = $htmlAdd;
		}
		echo json_encode($res);
	}

	public function signUp() {
		$email    = $this->input->post('email');
		$password = md5($this->input->post('password'));
		$fullname = $this->input->post('fullname');
		$username = $this->input->post('username');
		$phone    = $this->input->post('phone');
		$data['status'] = '';
		$data['idAcc']  = 0;
		if ($this->User_model->checkAccountExits($username)) {
			$accountNew = array('username'  => $username, 'password' => $password, 'fullname' => $fullname, 'phone'    =>$phone, 'email' => $email);
			$idAcc = $this->User_model->insert($accountNew);
			$data['status'] = 'success';
			$data['idAcc']  =  $idAcc;
		} else {
			$data['status'] = 'isset';
		}
		 echo json_encode($data);
	}

	public function createSession() {
		$email    = $this->input->post('email');
		$password = md5($this->input->post('password'));
		$fullname = $this->input->post('fullname');
		$username = $this->input->post('username');
		$phone    = $this->input->post('phone');
		$idUser   = $this->input->post('idUser');
		$account  = array('fullname' => $fullname, 'password' => $password, 'email' => $email, 'username' => $username, 'phone' => $phone, 'level' =>0, 'id' => $idUser);
		$this->session->set_userdata($account);
	}

	public function logout() {
		$account = array('fullname', 'password', 'email', 'phone', 'username', 'level');
		$this->session->unset_userdata($account);
		header('location:/project2/Home');
	}

	public function login() {
		$username = $this->input->post('username');
		$password = md5($this->input->post('password'));
		if ($this->User_model->confirmMember($username, $password) == 0) {
			echo json_encode('notfound');
		} else {
			$data     = $this->User_model->confirmMember($username, $password);
			$email    = $data[0]['email'];
			$password = md5($data[0]['password']);
			$fullname = $data[0]['fullname'];
			$phone    = $data[0]['phone'];
			$username = $data[0]['username'];
			$level    = $data[0]['level'];
			$id       = $data[0]['id'];
			$account  = array('fullname' => $fullname, 'password' => $password, 'email' => $email, 'username' => $username, 'phone' => $phone, 'level' => $level, 'id' => $id);
			$this->session->set_userdata($account);
			echo json_encode('success');
		}
	}

	public function verifyOrder() {
		$data = [];
		$data['status'] = 'faillogin';
		$data['data']   =  NULL;
		if ($this->session->has_userdata('username') && $this->session->has_userdata('password')) {
			$cart = $this->session->userdata['cart'];
		   $val = 0;
			foreach ($cart as $key => $value) {
				if ($value[1]) {
					$val++;
					break;
				}
			}
			if ($val > 0) {
				$data['status'] = 'done';
				$data['data']   =  $this->session->userdata;
				echo json_encode($data);
			} else {
				$data['status'] = 'fail';
				echo json_encode($data);
				
			}
		}else{
			echo json_encode($data);
		}
		
	}

	public function addOrder() {
		$userId  = $this->input->post('userId');
		$phone   = $this->input->post('phone');
		$email   = $this->input->post('email');
		$address = $this->input->post('address');
		$note    = $this->input->post('note');
		$idOrder = $this->Order_model->insertOrder($userId, $phone, $email, $address, $note);

		$cart = $this->session->userdata['cart'];
		foreach ($cart as $key => $value) {
			if ($value[1]) {
				$this->OrderProduct_model->insertOrderProduct($idOrder, $key, $value[0]);
				$sl = $this->Product_model->getQuantityById($key);
				$sl = $sl - $value[0];
				$this->Product_model->updateQuantity($key, $sl);
				unset($this->session->userdata['cart'][$key]);
			}
		}
		$cart = $this->session->userdata['cart'];
		if (count($cart) == 0) {
			$this->session->unset_userdata('cart');
		}
		echo json_encode('success');
	}

	public function checkLogin()
	{
		if($this->session->has_userdata('username') && $this->session->has_userdata('password')){
			echo json_encode('logintrue');
		} else {
			echo  json_encode('loginfailse');
		}
	}

	public function addCmtProduct()
	{
		$productId = $this->input->post('idProduct');
		$contentCmt = $this->input->post('contentCmt');
		$userId     = $this->session->userdata('id');;
	    $this->Comment_model->insert(array('user_id' => $userId, 'product_id' => $productId, 'content' => $contentCmt));
	    echo json_encode('cmttsuccess');
	}

	public function loadMoreCmt()
	{
		$productId = $this->input->post('productId');
		$offset    = $this->input->post('offset');
		$data      = $this->Comment_model->getCmtByProduct($productId, $offset);
		$res['status'] = '';
		$res['data']   = '';
		if (count($data) == 0) {
			$res['status'] = 'NULL';
		} else {
			$res['status'] = 'success';
			$htmlAdd = '';
			
			foreach ($data as $key => $value) {
				$htmlAdd.='<div class="itemCmt">';
				$htmlAdd.='<div class="nameCmt">';
				$htmlAdd.='Bởi: <strong>'.$value['fullname'].'</strong>';
				if ($value['level'] == 1 || $value['level'] ==  2) {
					$htmlAdd.='<span class="qtvCmt">';
					$htmlAdd.='QTV';
					$htmlAdd.='</span>';
				}
				$htmlAdd.='<span class="timecmt" style="font-size: 13px;color: #9b9b9b;margin-left: 8px;">';
				$htmlAdd.= date('d/m/Y',$value['time_created']);
				$htmlAdd.='</span></div><div class="contentCmt">'.$value['content'].'</div></div>';
				 }
				 $res['data']   = $htmlAdd;
		}
		echo json_encode($res);
	}


}

/* End of file Home.php */
/* Location: ./application/controllers/Home.php */