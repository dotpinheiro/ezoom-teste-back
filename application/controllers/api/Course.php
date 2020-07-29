<?php

require APPPATH.'/libraries/REST_Controller.php';

class Course extends REST_Controller {

    public function __construct($config = 'rest')
    {
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
        parent::__construct($config);
        $this->load->database();
        $this->load->model('CourseModel', 'course');
        $this->load->library('form_validation');
    }

    public function index_get($id = False){

        if($id)
            $data = $this->course->getCourseById($id);
        else
            $data = $this->course->getCourses();

        return $this->response($data, REST_Controller::HTTP_OK);
    }

    public function index_post(){
        $inputData = $this->post();

        $validators = Array(
            Array(
                'field' => 'title',
                'label' => 'Title',
                'rules' => 'required',
                'errors' => Array( 'required' => 'A title is required.' ),
            ),
            Array(
                'field' => 'course_desc',
                'label' => 'Course Description',
                'rules' => 'required',
                'errors' => Array( 'required' => 'A description is required.' ),
            ),
            Array(
                'field' => 'course_img',
                'label' => 'Course Image',
                'rules' => 'required',
                'errors' => Array( 'required' => 'An image is required.' ),
            ),
        );

        $this->form_validation->set_data($inputData);
        $this->form_validation->set_rules($validators);

        if(!$this->form_validation->run()){
            $response = Array('success' => False, 'errors' => $this->form_validation->error_array());
            return $this->response($response, REST_Controller::HTTP_FORBIDDEN);
        }


        $success = $this->course->addCourse($inputData);
        $response = Array('success' => $success);
        if($success)
            return $this->response($response, REST_Controller::HTTP_OK);
        else
            return $this->response($response, REST_Controller::HTTP_FORBIDDEN);
    }

    public function index_put($id){
        $inputData = $this->put();
        $data = $this->course->updateCourse($inputData,$id);
        $response = Array('success' => $data);
        $this->response($response, REST_Controller::HTTP_OK);
    }

    public function index_delete($id){
        $data = $this->course->deleteCourse($id);
        $response = Array('success' => $data);
        $this->response($response, REST_Controller::HTTP_OK);
    }

}