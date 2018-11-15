<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<link rel="stylesheet" type="text/css" href="register.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
</head>
<body>
<center><h2>Register Here</h2></center>
<br>

<form action="RegisterServlet">
<div class="container">

<div class="box">
    
    <hr>
    <div class="inner">
    <label for="Fname"><b>First Name</b></label>
    <input type="text"  name="Fname" placeholder="enter first name" required><br><br>
    
    <label for="Lname"><b>Last Name</b></label>
    <input type="text"  name="Lname" placeholder="enter last name" required><br><br>

    <label for="email"><b>Email</b></label>
    <input type="email"  name="email"  placeholder="enter email" required><br><br>
    
    <label for="contact"><b>Contact Number</b></label>
    <input type="text"  name="contact" placeholder="enter contact no"  required><br><br>

    <label for="pass"><b>Password</b></label>
    <input type="password" name="pass" placeholder="enter password" required><br><br>

    <input type="submit" class="registerbtn" value="Register">
  
   </form>
  </div>

  </div>

</body>
</html>