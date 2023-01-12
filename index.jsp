<h2>Register</h2>
<form method = "post" action = "home.jsp">
name:<input type = "text" name ="name">
Age:<input type = "text" name ="age">
Course:<input type ="checkbox" value="java" name="course">java
<input type ="checkbox" value="oracle" name="course">oracle<br>
Time:<select name="time">
<option value ="morning">morning</option>
<option value ="day">day</option>
<option value ="evening">evening</option>
</select>
<br>
Gender:M<input type="radio" value ="M" name="gender">
F<input type="radio" value ="F" name="gender"><br>
<input type = "submit" value = "Register">
</form>