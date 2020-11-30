<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Take extends CI_Controller {

    public function index()
    {
        // $this->load->view('take/index');
        // $this->load->view('take/index2');
        // $this->load->view('take/index3');
        $this->load->view('take/index4');
    }

    public function save()
    {
        $username = $this->input->post('username', true);
		$email = $this->input->post('email', true);
		$password = $this->input->post('password', true);
		$image = $this->input->post('image');
		$image = str_replace('data:image/jpeg;base64,','', $image);
		$image = base64_decode($image);
		$filename = 'image_'.time().'.png';
		file_put_contents(FCPATH.'/uploads/'.$filename,$image);
		$data = array(
			'username' => $username,
			'email' => $email,
			'password' => password_hash($password, PASSWORD_DEFAULT),
			'image' => $filename,
		);

		$this->load->model('User');
        $res = $this->User->insert($data);
        echo '<pre>' . var_export($res, true) . '</pre>';die;
		echo json_encode($res);
    }

    public function upload()
    {
        $folder = "/take_photo/assets/images/";
        $destinationFolder = $_SERVER['DOCUMENT_ROOT'] . $folder; // you may need to adjust to your server configuration
        $maxFileSize = 2 * 1024 * 1024;

        // Get the posted data
        $postdata = file_get_contents("php://input");

        if (!isset($postdata) || empty($postdata))
            exit(json_encode(["success" => false, "reason" => "Not a post data"]));

        // Extract the data
        $request = json_decode($postdata);

        // Validate
        if (trim($request->data) === "")
            exit(json_encode(["success" => false, "reason" => "Not a post data"]));


        $file = $request->data;

        // getimagesize is used to get the file extension
        // Only png / jpg mime types are allowed
        $size = getimagesize($file);
        $ext = $size['mime'];
        if ($ext == 'image/jpeg')
            $ext = '.jpg';
        elseif ($ext == 'image/png')
            $ext = '.png';
        else
            exit(json_encode(['success' => false, 'reason' => 'only png and jpg mime types are allowed']));

        // Prevent the upload of large files
        if (strlen(base64_decode($file)) > $maxFileSize)
            exit(json_encode(['success' => false, 'reason' => "file size exceeds {$maxFileSize} Mb"]));

        // Remove inline tags and spaces
        $img = str_replace('data:image/png;base64,', '', $file);
        $img = str_replace('data:image/jpeg;base64,', '', $img);
        $img = str_replace(' ', '+', $img);

        // Read base64 encoded string as an image
        $img = base64_decode($img);

        // Give the image a unique name. Don't forget the extension
        $filename = date("d_m_Y_H_i_s") . "-" . time() . $ext;
        echo '<pre>' . var_export($filename, true) . '</pre>';die;

        // The path to the newly created file inside the upload folder
        $destinationPath = "$destinationFolder$filename";

        // Create the file or return false
        $success = file_put_contents($destinationPath, $img);

        if (!$success)
            exit(json_encode(['success' => false, 'reason' => 'the server failed in creating the image']));

        // Inform the browser about the path to the newly created image
        exit(json_encode(['success' => true, 'path' => "$folder$filename"]));
    }

}

/* End of file Take.php */
