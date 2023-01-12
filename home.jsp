<%
String name = request.getParameter("name");
String age = request.getParameter("age");
%>
<h2>name <%=name %></h2>
<h2>you are <%=age %>years old</h2>
<%
int ageInt=Integer.parseInt(age);
if(ageInt>=18){
out.println("welcome");
}else{
out.println("not allowed!!");
}

String course[] = request.getParameterValues("course");
String time = request.getParameter("time");
String gender = request.getParameter("gender");

%>

<h2>Time is <%=time %></h2>
<h2>Your Gender is <%=gender %></h2>
<h2>course is</h2>
<%
for(String c:course){
out.println(c);}
%>