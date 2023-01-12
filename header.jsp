<%@page import= "java.util.*"%>
<h1>welcome to my Page//Today's date is</h1>
<%
Date date = new Date();
String today=date.toString();

%>
<h2>
<%=today %></h2>
<hr>