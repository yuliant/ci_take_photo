<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Model {

    public function insert($data)
	{
		$this->db->insert('user', $data);
		return $this->db->insert_id();
	}

}

/* End of file User.php */
