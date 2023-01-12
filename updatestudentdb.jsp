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
controller.updateStudent(dto);

%>
<h2>Data updated!!!</h2>
<a href="viewData.jsp">view</a>