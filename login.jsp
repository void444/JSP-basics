<!DOCTYPE html>   
<html>   
<head>  
<meta name="viewport" content="width=device-width, initial-scale=1">  
<title> Login Page </title>  
<style>   
Body {  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: pink;  
}  
button {   
       background-color: #4CAF50;   
       width: 100%;  
        color: orange;   
        padding: 15px;   
        margin: 10px 0px;   
        border: none;   
        cursor: pointer;   
         }   
 form {   
        border: 3px solid #f1f1f1;   
    }   
 input[type=text], input[type=password] {   
        width: 100%;   
        margin: 8px 0;  
        padding: 12px 20px;   
        display: inline-block;   
        border: 2px solid green;   
        box-sizing: border-box;   
    }  
 button:hover {   
        opacity: 0.7;   
    }   
   
        
     
 .container {   
        padding: 25px;   
        background-color: lightblue;  
    }   
</style>   
</head>    
<body>    
  
    <h1> Student Login Form </h1>
    <%
    String name = "";
    String pass="";
    String Checked = "";
    Cookie[] cooks = request.getCookies();
    if(null!=cooks){
    	for(Cookie c:cooks){
    		if(c.getName().equals("NAME")){
    			name = c.getValue();
    			Checked="checked";
    			//break;
    		}
    		if(c.getName().equals("PASSWORD")){
    			pass = c.getValue();
    		}
    	}
    }
    %>
    <form method="post" action ="loginCheck.jsp">  
        <div class="container">   
            <label> Username : </label>   
            <input type="text" placeholder="Enter Username" name="username" value="<%=name %>" required>  
            <label>Password : </label>   
            <input type="password" placeholder="Enter Password" name="password" value="<%=pass %>" required>  
            <input type="checkbox" value = "remember" name = "remember" <%=Checked %>> Remember me 
            <button type="submit" value ="login"> LogIn  </button>
              
             
        </div>   
    </form>     
</body>     
</html>  