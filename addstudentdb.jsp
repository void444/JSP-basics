<%@page import="com.demo.dto.*,com.demo.controller.*"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
String email = request.getParameter("email");
StudentDTO dto = new StudentDTO();
dto.setId(id);
dto.setName(name);
dto.setEmail(email);
StudentController controller = new StudentController();
controller.insertStudent(dto);

%>
<h2>Data Inserted!!!</h2>
<a href="addStudent.jsp">Add again</a>



