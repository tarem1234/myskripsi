<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pegawai extends CI_Controller {
 
	public function index()
	{
		$this->load->view('pegawai/pegawai_view');
	}
}
