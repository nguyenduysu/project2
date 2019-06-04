<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('User_model');

	}

	public function userKhachHang()
	{
		$khachhang = $this->User_model->getUserKhachHang();
		$khachhang = array('user' => $khachhang,'type' => 'Khách hàng');
		$this->load->view('admin/user/User_view', $khachhang, FALSE);
		
	}

	public function userNhanVien()
	{
		$nhanvien = $this->User_model->getUserNhanVien();
		$nhanvien = array('user' => $nhanvien,'type' => 'Quản trị viên');
		$this->load->view('admin/user/User_view', $nhanvien, FALSE);
		
	}

	public function editByID($id, $type)
    {
    	$title = $type == 0 ? 'khách hàng' : 'quản trị';
     	$user = $this->User_model->get($id);
     	$user = array('user' => $user, 'title' => $title);
     	$this->load->view('admin/user/edit_StatusAcc', $user, FALSE);
    }

    public function updateStatusCustomer($id, $type)
    {
    	$message  = 'Cập nhật trạng thái ';
    	$message .=  $type == 0 ? 'khách hàng' : 'quản trị';
    	$title    = $type == 0 ? 'khách hàng' : 'quản trị';
    	$status   = array('status' => $this->input->post('status'));
    	$this->User_model->update($status, $id);
    	$user =  $this->User_model->get($id);
    	$this->load->view('admin/user/edit_StatusAcc', array('status' => true, 'message' => $message.' thành công', 'user' => $user, 'title' => $title)); 
    }

    public function delete( $id, $type )
	{
		$this->User_model->delete($id);
		if ($type == 0 ) {
			$this->userKhachHang();
		} else {
			$this->userNhanVien();
		}
 	}

	public function addUser()
	{
		$this->load->view('admin/user/create_User_view');
	}

	public function add()
	{
		$accountNew = $this->getInput();
		$numofUser  = $this->User_model->checkExistAccount($accountNew['username']);
		if($numofUser != 0 ) {
			$this->load->view('admin/user/create_User_view', array('status' => false , 'message' => 'Tên tài khoản đã tồn tại'));
		} else if(md5($this->input->post('password_again')) != $accountNew['password']) {
			$this->load->view('admin/user/create_User_view', array('thongbao' => 'Mật khẩu không trùng khớp'));
		} else {
			$this->User_model->insert($accountNew);
			$this->load->view('admin/user/create_User_view', array('status' => true, 'message' => 'Tạo tài khoản thành công')); 
		}
    }

    public function InfoUser()
    {
    	$user = $this->getInfoBySession();
		$user = array('user' => $user);
    	$this->load->view('admin/user/InfoUser_view', $user, FALSE);
    }

    public function editInfoUser()
    {
    	$user = $this->getInfoBySession();
		$user = array('user' => $user);
    	$this->load->view('admin/user/edit_InfoUser_view', $user, FALSE);
    }

    

    public function updateInfoUser($id)
    {
    	  $account = array('fullname' => $this->input->post('fullname'),
							'email'   => $this->input->post('email'),
							'phone'   => $this->input->post('phone'),
							'address' => $this->input->post('address'));

		$this->User_model->update($account, $id);
		$user = $this->User_model->get($id);
		$this->load->view('admin/user/edit_InfoUser_view', array('status' => true , 'message' => 'Cập nhật thông tin tài khoản thành công', 'user' => $user));
    }

    public function changePassword()
    {
    	$user = array('id'       => $this->session->userdata('id'),
			          'username' => $this->session->userdata('username'));
    		
		$user = array('user' => $user);
    	$this->load->view('admin/user/changePassword_User_view', $user, FALSE);
    }

    public function updateNewPassword($id)
    {
    	$password   = $this->input->post('password');
    	$rePassword = $this->input->post('password_again');

    	$user = $this->User_model->get($id);
    	if ($password != $rePassword) {
    		$this->load->view('admin/user/changePassword_User_view', array('status' => false , 'message' => 'Mật khẩu không trùng khớp', 'user' => $user));
    	} else {
    		$update = array('password' => md5($this->input->post('password')));
    		$this->User_model->update($update, $id);
    		$this->load->view('admin/user/changePassword_User_view', array('status' => true , 'message' => 'Thay đổi mật khẩu thành công', 'user' => $user)); 
    	}
    }	

 	public function login()
 	{
 		$this->load->view('admin/auth/login');
 	}

 	public function logout() {
		$this->session->unset_userdata('username');
		$this->session->unset_userdata('password');
		$this->session->unset_userdata('level');
		$this->session->unset_userdata('fullname');
		$this->session->unset_userdata('email');
		$this->session->unset_userdata('phone');
		$this->session->unset_userdata('address');
		$this->session->unset_userdata('id');
		$this->session->sess_destroy();
		header('location:/project2/admin/User/login');
	}

 	public function authenUser()
 	{
 		$username = $this->input->post('username');
		$password = md5($this->input->post('password'));

		$data = $this->User_model->confirm_account($username, $password);
		if ($data == 0) {
			$this->load->view('admin/auth/login', array('status' => false, 'message' => 'Tài khoản hoặc mật khẩu không đúng'));
		} else {
			
			$level    = $data[0]['level'];
			$fullname = $data[0]['fullname'];
			$email    = $data[0]['email'];
			$phone    = $data[0]['phone'];
			$address  = $data[0]['address'];
			$username = $data[0]['username'];
			$id       = $data[0]['id'];
			$password = $data[0]['password'];
			$status   = $data[0]['status'];
			$account  = array('username' => $username,
							  'password' => $password,
							  'level'    => $level,
							  'fullname' => $fullname,
							  'email'    => $email,
							  'phone'    => $phone,
							  'address'  => $address,
							  'id'       => $id,
							  'status'   => $status);
			$this->session->set_userdata($account);
			header('location:/project2/admin/Product');
		}
 	}

 	public function getInput()
 	{
 		$acc = array('username' => $this->input->post('username'),
					 'password' => md5($this->input->post('password')),
					 'fullname' => $this->input->post('fullname'),
					 'email'    => $this->input->post('email'),
					 'phone'    => $this->input->post('phone'),
					 'address'  => $this->input->post('address'),
					 'level'    => $this->input->post('level'),
					 'status'   => $this->input->post('status'));
 		return $acc;
	}

	public function getInfoBySession()
	{
	    $user = array('id'       => $this->session->userdata('id'),
					  'username' => $this->session->userdata('username'),
					  'password' => $this->session->userdata('password'),
					  'fullname' => $this->session->userdata('fullname'),
					  'email'    => $this->session->userdata('email'),
					  'phone'    => $this->session->userdata('phone'),
					  'address'  => $this->session->userdata('address'),
					  'level'    => $this->session->userdata('level'),
					  'status'   => $this->session->userdata('status'));
	    return $user;
	}


}

/* End of file User.php */
/* Location: ./application/controllers/User.php */
