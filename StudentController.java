package com.demo.controller;

import java.util.List;

import com.demo.dao.StudentDAO;
import com.demo.dto.StudentDTO;

public class StudentController {

	public void insertStudent(StudentDTO dto){
		StudentDAO dao = new StudentDAO();
		dao.insertStudent(dto);
		System.out.println("student Inserted");
	}
	public void updateStudent(StudentDTO dto){
		StudentDAO dao = new StudentDAO();
		dao.updatetStudent(dto);
		System.out.println("student updated");
	}
	public void deleteStudent1(StudentDTO dto){
		StudentDAO dao = new StudentDAO();
		dao.deletetStudent(dto);
		System.out.println("student deleted");
	}
	public List<StudentDTO> getStudents (StudentDTO dto){
		StudentDAO dao = new StudentDAO();
		return dao.getStudents();
	
	}
	public StudentDTO getStudent (StudentDTO dto){
		StudentDAO dao = new StudentDAO();
		return dao.getStudent( dto);
	
	}
	

}
