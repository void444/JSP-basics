<%@ page import="com.demo.controller.*,com.demo.dto.*"%>
<%

StudentController stCont = new StudentController();
int id=Integer.parseInt(request.getParameter("id"));
StudentDTO dto = new StudentDTO();
dto.setId(id);
stCont.deleteStudent1(dto);
response.sendRedirect("viewData.jsp");
%>