<%
String name = (String)session.getAttribute("USER");
if(null==name){
	response.sendRedirect("login.jsp?msg=Invalid session");
}
%>
<h1>
welcome <%=name %>
</h1>
<a href = "logout.jsp">logout</a>