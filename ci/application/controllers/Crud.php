<?php
//use Saya\DB;

Class Crud extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->helper('load');
	}
	function index()
	{		
		//DB::koneksi();
		$karyawan = App\Model\Karyawan::all();
		$this->load->view('list',['karyawan'=>$karyawan]);
	}
	
	function form($id=null){
		$karyawan = App\Model\Karyawan::find($id);
		$data =['karyawan'=>[]];
		if(!empty($karyawan['attributes']))$data['karyawan']=$karyawan['attributes'];
		$this->load->view('form',$data);
	}
	function hapus($id=null){
		$karyawan = App\Model\Karyawan::destroy($id);
		redirect(base_url('crud'));
	}
	
	function proses(){
		try{
			$mode = $this->input->post('mode');
			$nomor_induk = $this->input->post('nomor_induk');
			if($mode == 'tambah'){
				$karyawan = new App\Model\Karyawan;
				$karyawan->Nomor_induk = $this->input->post('nomor_induk');
			}else{
				$karyawan = App\Model\Karyawan::find($nomor_induk);
				if(empty($karyawan))
					throw new Exception('Data Tidak Ditemukan');
			}
			$karyawan->Nama = $this->input->post('nama');
			$karyawan->Alamat = $this->input->post('alamat');
			$karyawan->Tanggal_lahir = $this->input->post('tanggal_lahir');
			$karyawan->Tanggal_masuk = $this->input->post('tanggal_masuk');
			
			$karyawan->save();
		}catch(PDOException $e){
			die($e->getMessage());
		}catch(Exception $e){
			
		}
		redirect(base_url('crud'));
	}
	
	
}