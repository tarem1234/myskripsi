<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pegawai extends CI_Model {
 
 public function get_data($id=NULL){
 	if($id == '' || $id == NULL || empty($id)){
	return $this->db->get('t_pegawai');
 	}else{
 	$this->db->where('id',$id);
 	return $this->db->get('t_pegawai');
 	}
 
 }

 public function pro_add($datapos){
 	$this->db->set($datapos);
 	return $this->db->insert('t_pegawai');
 }

  public function pro_edit($datapos){
 	$this->db->set($datapos);
 	$this->db->where('id',$datapos['id']);
 	return $this->db->update('t_pegawai');
 }

 public function delete($id){
 	$this->db->where('id',$id);
 	return $this->db->delete('t_pegawai');
 }


}
