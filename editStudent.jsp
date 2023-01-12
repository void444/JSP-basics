<%@ page import="com.demo.controller.*,com.demo.dto.*,java.util.*"%>
<%
StudentController stCont = new StudentController();
int id =Integer.parseInt(request.getParameter("id"));
StudentDTO dto = new StudentDTO();
dto.setId(id);
dto=stCont.getStudent(dto);
%>


<form action ="updatestudentdb.jsp" method="post">
id:<input type="hidden"name="id" value="<%=dto.getId() %>"><br>
name:<input type="text"name="name" value="<%=dto.getName()%>"><br>
email:<input type="text" name = "email" value="<%=dto.getEmail()%>"><br/>
<input type="submit"value="update">
</form>