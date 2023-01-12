<%@ page import="com.demo.controller.*,com.demo.dto.*,java.util.*"%>
<%
StudentController stCont = new StudentController();
List <StudentDTO> data =stCont.getStudents(null);
%>
<h2>Student data</h2>
<table border="3">
<tr><th>ID</th><th>name</th><th>Email</th><th>Action</th></tr>
<%
for(StudentDTO d:data){
%>
<tr>
<td><%=d.getId()%></td><td><%=d.getName()%></td><td><%=d.getEmail()%></td>
<td><a href ="editStudent.jsp?id=<%=d.getId() %>">Edit</a></td>
<td><a href ="deleteStudent.jsp?id=<%=d.getId() %>">Delete</a>
</td>
</tr>
<%
}
%>
</table>
