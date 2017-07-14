<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pegawai extends CI_Controller {
 
 	public function __construct(){

 		parent::__construct();
 		$this->load->model('m_pegawai');

 	}
	public function index()
	{
		$data['listing'] = $this->m_pegawai->get_data();

		$this->load->view('pegawai/pegawai_view',$data);
	}

	public function add(){
		$this->load->view('pegawai/pegawai_add');
	}

	public function edit(){
		$id = $this->uri->segment(3);
		$data['listing'] = $this->m_pegawai->get_data($id)->row();
		$this->load->view('pegawai/pegawai_edit',$data);
	}

	public function delete(){
		$id = $this->uri->segment(3);

		$delete = $this->m_pegawai->delete($id);
		if($delete){
			  echo "<script language=javascript>
				alert('Penghapusan Data Berhasil');
				window.location='" . base_url('pegawai') . "';
		        </script>";
		}else{
			  echo "<script language=javascript>
				alert('Penghapusan Data Berhasil');
				window.location='" . base_url('pegawai/add') . "';
		        </script>";
		}

	}

	public function pro_add(){
		$datapos = array('nama_pegawai'=>$this->input->post('nama_pegawai'),
						 'tempat_lahir'=>$this->input->post('tempat_lahir'),
						 'tanggal_lahir'=>$this->input->post('tanggal_lahir'),
						 'telpon'=>$this->input->post('telpon'),
						 'email'=>$this->input->post('email'),
						 'alamat'=>$this->input->post('alamat'));

		$save = $this->m_pegawai->pro_add($datapos);
		if($save){
			  echo "<script language=javascript>
				alert('Penambahan Data Berhasil');
				window.location='" . base_url('pegawai') . "';
		        </script>";
		}else{
			  echo "<script language=javascript>
				alert('Penambahan Data Berhasil');
				window.location='" . base_url('pegawai/add') . "';
		        </script>";
		}
	}

	public function pro_edit(){
		$datapos = array('id'=>$this->input->post('id'),
						 'nama_pegawai'=>$this->input->post('nama_pegawai'),
						 'tempat_lahir'=>$this->input->post('tempat_lahir'),
						 'tanggal_lahir'=>$this->input->post('tanggal_lahir'),
						 'telpon'=>$this->input->post('telpon'),
						 'email'=>$this->input->post('email'),
						 'alamat'=>$this->input->post('alamat'));

		$save = $this->m_pegawai->pro_edit($datapos);
		if($save){
			  echo "<script language=javascript>
				alert('Perubahan Data Berhasil');
				window.location='" . base_url('pegawai') . "';
		        </script>";
		}else{
			  echo "<script language=javascript>
				alert('Perubahan Data Berhasil');
				window.location='" . base_url('pegawai/add') . "';
		        </script>";
		}
	}
}
