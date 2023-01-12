<%
String user = request.getParameter("username");
String password = request.getParameter("password");
String remember = request.getParameter("remember");
if(null!=remember){
	Cookie cook = new Cookie("NAME",user);
	response.addCookie(cook);
	Cookie cook1 = new Cookie("PASSWORD",user);
	response.addCookie(cook1);
}else{
		Cookie cook = new Cookie("NAME",null);
		response.addCookie(cook);
		Cookie cook1 = new Cookie("PASSWORD",null);
		response.addCookie(cook1);
	}

if(user.equals("test")&&password.equals("test")){
	
session.setAttribute("USER",user);	
response.sendRedirect("home.jsp");
}
else{
	response.sendRedirect("login.jsp");
	
}
%>