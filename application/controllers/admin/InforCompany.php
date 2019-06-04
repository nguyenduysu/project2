<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class InforCompany extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		//Load Dependencies
		$this->load->model('InforCompany_model');
	}

	// List all your items
	public function index( $offset = 0 )
	{
		$dl = $this->InforCompany_model->get();
		$dl = (!$dl) ? array() : $dl;
		$dl = array('dulieu' => $dl);
		$this->load->view('admin/inforcompany/InforCompany_view', $dl, FALSE);
	}

	// Add a new item
	public function add()
	{

	}

	public function edit()
	{
		$thongtincongty = $this->InforCompany_model->get();
		$thongtincongty = (!$thongtincongty) ? array() : $thongtincongty;
		
		$thongtincongty = array('dulieu' => $thongtincongty);
		$this->load->view('admin/inforcompany/edit_InforCompany_view', $thongtincongty, FALSE);
	}

	//Update one item
	public function update( $id = NULL )
	{
		$target_dir = "uploads/LogoCompany/";
		$target_file = $target_dir . basename($_FILES["logo"]["name"]);
		$uploadOk = 1;
		$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
		// Check if image file is a actual image or fake image
		if(isset($_POST["submit"])) {
		    $check = getimagesize($_FILES["logo"]["tmp_name"]);
		    if($check !== false) {
		        //echo "File is an image - " . $check["mime"] . ".";
		        $uploadOk = 1;
		    } else {
		        //echo "File is not an image.";
		        $uploadOk = 0;
		    }
		}
		// Check if file already exists
		if (file_exists($target_file)) {
		    //echo "Sorry, file already exists.";
		    $uploadOk = 0;
		}
		// Check file size
		if ($_FILES["logo"]["size"] > 500000) {
		    //echo "Sorry, your file is too large.";
		    $uploadOk = 0;
		}
		// Allow certain file formats
		if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
		&& $imageFileType != "gif" ) {
		    //echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
		    $uploadOk = 0;
		}
		// Check if $uploadOk is set to 0 by an error
		if ($uploadOk == 0) {
		    //echo "Sorry, your file was not uploaded.";
		// if everything is ok, try to upload file
		} else {
		    if (move_uploaded_file($_FILES["logo"]["tmp_name"], $target_file)) {
		        //echo "The file ". basename( $_FILES["logo"]["name"]). " has been uploaded.";
		    } else {
		        //echo "Sorry, there was an error uploading your file.";
		    }
		}

		if(basename( $_FILES["logo"]["name"]) != "")
		{
			$logo = 'uploads/LogoCompany/' . basename( $_FILES["logo"]["name"]);
		}
		else
		{
			$logo = $this->input->post('logo2');
		}

		$thongtincongty = array(
			'name' => $this->input->post('name'),
			'address' => $this->input->post('address'),
			'phone' => $this->input->post('phone'),
			'email' => $this->input->post('email'),
			'link_fb' => $this->input->post('link_fb'),
			'link_youtube' => $this->input->post('link_youtube'),
			'link_instagram' => $this->input->post('link_instagram'),
			'logo' => $logo
		);

		$check = $this->InforCompany_model->update($thongtincongty);
		if($check) 
		{
			$this->load->view('admin/inforcompany/edit_InforCompany_view', array('success' => true, 'dulieu' => $this->InforCompany_model->get() )); 
		} 
		else
		{
			$this->load->view('admin/inforcompany/edit_InforCompany_view', array('fail' => false , 'dulieu' => $this->InforCompany_model->get()));
		}
	}

	//Delete one item
	public function delete( $id = NULL )
	{

	}
}

/* End of file InforCompany.php */
/* Location: ./application/controllers/admin/InforCompany.php */
