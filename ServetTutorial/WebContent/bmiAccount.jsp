<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BMI Finder</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<style>
body {background-color: powderblue;}
h1   {color: blue;}
p    {color: red;}
</style>
</head><link rel="stylesheet" type="text/css"href="./styles/styles.css">
<body>

<form class="container" action="BmiAccountReg" method="post">
 <div class="form-group">
      <label for="FirstName">First Name</label>
      <input type="text" class="form-control" name="firstName" id="firstName" placeholder="First Name">
    </div>    
 
 <div class="form-group">
      <label for="LastName">Last Name</label>
      <input type="text" class="form-control" name="lastName" id="lastName" placeholder="Last Name">
    </div>
    
 
    <div class="checkbox">
      <label>
      <input type="checkbox"> Check me out
      </label>
       </div> 
       <button type="submit" class = "btn btn-default">Submit</button>
       </form>
</body>
</html>