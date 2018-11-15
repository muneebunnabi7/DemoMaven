<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" type="text/css" href="login.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
</head>
<body>
<center><h2>Account Login</h2></center>
<br>
<form action="LoginServlet">
<%-- input type="hidden" name="action" value="login" --%>
<div class="container">
		
	<div class="main-login main-center">
	
	<div class="form-group">
	<label for="Email"><span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>  Email</label>
	<div>
	<div>
	<input type="text" name="email" 
	placeholder="Enter your email">

	
	</div><br>
	</div>
	</div>
	<div class="form-group">
	<label for="password" ><span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>  Password</label>
	<div>
	<div class="input-group">
	<input type="password" name="pass"  placeholder="Enter password">
	<script type="text/javascript">
	function CheckPassword(inputtxt) 
	{ 
	var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;
	if(inputtxt.value.match(passw)) 
	{ 
	alert('Correct, try another...')
	return true;
	}
	else
	{ 
	alert('Wrong...!')
	return false;
	}
	}
	</script>
	
	</div><br>
	</div>
	</div>
	<div class="check ">
	<input type="submit" value="Sign in">
	</div>
	<div class="register">
    <a href="register.jsp">Create account</a> or <a href="#">forgot password</a>
    </div>
	</form>
	</div>
	</div>
	</div>
</body>
</html>