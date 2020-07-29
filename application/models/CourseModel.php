<?php


class CourseModel extends CI_Model
{
    public function __construct(){
        parent:: __construct();
    }

    public function getCourses(){
        return $this->db->order_by('created_at desc')->get('tb_courses')->result();
    }

    public function getCourseById($id){
        return $this->db->get_where('tb_courses', Array('id' => $id ))->row();
    }

    public function addCourse($data){
        return $this->db->insert('tb_courses', $data);

    }

    public function updateCourse($data, $id){
        $this->db->where('id', $id);
        $this->db->update('tb_courses',$data);
        return $this->db->affected_rows() > 0;
    }

    public function deleteCourse($id){
        $this->db->where('id', $id);
        $this->db->delete('tb_courses');
        return $this->db->affected_rows() > 0;

    }

}