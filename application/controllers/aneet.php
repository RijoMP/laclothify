<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Aneet extends CI_Controller {

	


    public function index()
	{
		if(isset($_SESSION['logged_in'])){
			
			header('location: '.base_url().'aneet/dashboard');
		}
		else{
			header('location:'.base_url().'aneet/login');
		}
	}
	public function contact()
	{
		
		$this->load->view('header');
		$this->load->view('corouselGeneral');
		$this->load->view('footer');
	}
	public function login()
	{	
		if(isset($_SESSION['logged_in'])){
			
			header('location: '.base_url().'aneet/dashboard');
		}
		else{
			$this->load->view('admin/login');
		}

		
	}
	public function logout()
	{

		session_destroy();
		header('location:'.base_url().'aneet/login');

	}


	public function validate()
	{
		$this->load->helper('url');
		//echo $_POST['username'];
		$sql = "SELECT * FROM lc_auth WHERE auth_mail = ? AND auth_pass = ? AND auth_role=? AND auth_status = ?";
		$query=$this->db->query($sql, array($_POST['username'],$_POST['password'], 'staff', 'active'));
		if ($query->num_rows() == 1)  
        {  	

			$row = $query->row();
			echo "alert('".$row->auth_mail."');";
		
			
			$newdata = array(
				'username'  => $_POST['username'],
				'role'     => 'staff',
				'logged_in' => TRUE

			);
			$this->session->set_userdata($newdata);
			header('location:index');
          
        } else {  

		 	header('location:login');
        } 

	}
	public function dashboard()
	{
		if(isset($_SESSION['logged_in'])){
			$this->load->view('admin/adm_header');
		
			//	$this->load->view('home');
			$this->load->view('admin/adm_footer');

		}
		else{
			header('location:aneet/login');
		}
	}

	public function stock(){
		if(isset($_SESSION['logged_in'])){
			$this->load->model('AdminModel');
			$qry="SELECT lc_product.p_name,lc_category.cat_name,lc_stock.st_count,lc_stock.st_discount FROM `lc_stock`,`lc_product` ,`lc_category` WHERE lc_stock.st_product=lc_product.p_id AND lc_product.p_category=lc_category.cat_id";
			$tblhead=array('Sl No','Product','Category','Stock','Discount');
			$table=$this->AdminModel->QuerytoHtmlTable($qry,$tblhead);
		
			//print_r($table);
		
			$data['table']=$table;
			$this->load->view('admin/adm_header');
			$this->load->view('admin/adm_stock',$data);
			$this->load->view('admin/adm_footer');
			

		}
		else{
			header('location:aneet/login');
		}

	}
	public function categories(){
		if(isset($_SESSION['logged_in'])){
			$this->load->view('admin/adm_header');
			$this->load->view('admin/categories');
			$this->load->view('admin/adm_footer');

		}
		else{
			header('location:'.base_url().'aneet/login');
		}
	}
	public function products(){
		if(isset($_SESSION['logged_in'])){
			$this->load->view('admin/adm_header');
			$this->load->view('admin/products');
			$this->load->view('admin/adm_footer');

		}
		else{
			header('location:'.base_url().'aneet/login');
		}
	}
	public function sitesettings(){
		if(isset($_SESSION['logged_in'])){
			echo "logged";
			echo "site";
			$this->load->view('admin/adm_header');
			$this->load->view('admin/sitesettings');
			$this->load->view('admin/adm_footer');

		}
		else{
			header('location:'.base_url().'aneet/login');
		}
	}


	}



	
	


