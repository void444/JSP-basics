<%@page errorPage="Errorpage.jsp"%>
<%
int num = Integer.parseInt(request.getParameter("num"));
out.println("square of your input is:"+(num*num));
%>