package com.demo.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.demo.dto.StudentDTO;
import com.demo.util.DBUtil;

public class StudentDAO {

	public void insertStudent(StudentDTO dto) {
		
		Connection con = null;
		DBUtil dbUtil=new DBUtil();
		try {
			con = dbUtil.getConnection();
			String sql="insert into student values(?,?,?)";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1, dto.getId());
			pre.setString(2, dto.getName());
			pre.setString(3, dto.getEmail());
			pre.execute();
			pre.close();
		}catch(Exception e) {
			e.printStackTrace();
			
		}finally {
			dbUtil.closeConnection(con);
		}
	}
	
public void updatetStudent(StudentDTO dto) {
		
		Connection con = null;
		DBUtil dbUtil=new DBUtil();
		try {
			con = dbUtil.getConnection();
			String sql="update student set name=?,email=? where id = ?";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setString(1, dto.getName());
			pre.setString(2, dto.getEmail());
			pre.setInt(3, dto.getId());
			pre.execute();
			pre.close();
		}catch(Exception e) {
			e.printStackTrace();
			
		}finally {
			dbUtil.closeConnection(con);
		}
	}
public void deletetStudent(StudentDTO dto) {
	
	Connection con = null;
	DBUtil dbUtil=new DBUtil();
	try {
		con = dbUtil.getConnection();
		String sql="delete from student where id = ?";
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setInt(1, dto.getId());
		pre.execute();
		pre.close();
	}catch(Exception e) {
		e.printStackTrace();
		
	}finally {
		dbUtil.closeConnection(con);
	}
}

public List<StudentDTO> getStudents (){
	
	Connection con = null;
	DBUtil dbUtil=new DBUtil();
	List<StudentDTO>students=new ArrayList<StudentDTO>();
	try {
		con = dbUtil.getConnection();
		String sql="select * from student";
		PreparedStatement pre=con.prepareStatement(sql);
		ResultSet rs = pre.executeQuery();
		while(rs.next()) {
			StudentDTO dto = new StudentDTO();
			dto.setId(rs.getInt("id"));
			dto.setName(rs.getString("name"));
			dto.setEmail(rs.getString("email"));
			students.add(dto);
		}
		rs.close();
		pre.close();
	}catch(Exception e) {
		e.printStackTrace();
		
	}finally {
		dbUtil.closeConnection(con);
	}
	return students;
}
public StudentDTO getStudent (StudentDTO dto){
	
	Connection con = null;
	DBUtil dbUtil=new DBUtil();
	List<StudentDTO>students=new ArrayList<StudentDTO>();
	try {
		con = dbUtil.getConnection();
		String sql="select * from student where id =?";
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setInt(1, dto.getId());
		ResultSet rs = pre.executeQuery();
		while(rs.next()) {
			//StudentDTO dto = new StudentDTO();
			dto.setId(rs.getInt("id"));
			dto.setName(rs.getString("name"));
			dto.setEmail(rs.getString("email"));
			students.add(dto);
		}
		rs.close();
		pre.close();
	}catch(Exception e) {
		e.printStackTrace();
		
	}finally {
		dbUtil.closeConnection(con);
	}
	return dto;
}
}
