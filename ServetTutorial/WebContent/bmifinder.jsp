<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.user.UserBmi"%> 
  <%UserBmi bmi = (UserBmi)session.getAttribute("bmi");%>	
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<title>BMI Finder</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style type="text/css">
</style>
<style>
body {background-color: powderblue;}
h1   {color: blue;}
p    {color: red;}
</style>
</head>
<body>
<h1 style="color:blue">Hello  <%out.print(bmi.getFirstName()+" " +	bmi.getLastName());%></h1>
<div class ="container">
<!-- Example row of columns -->
<div class="row">
<div class="col-md-4">
<h2>Your BMI</h2>
<h3><% out.print(bmi.getBmi()); %></h3>
 <% 
   double num = bmi.getUnformattedBmi();
   if ((num < 20) && (num>0)) {
   %>
      <h4 style="color:orange">You have an under-weight BMI!</h4>
   <%
   }
   else if ((num < 25) && (num>20)) {
	   %>
	      <h4 style="color:green">You have a normal BMI!</h4>
	   <%
   }  
   else if (num >25)  {
	   %>
	      <h4 style="color:red">You have an over-weight BMI!</h4>
	   <%
   }
   else  {
	   %>
	      <h4 style="color:blue">Waiting for the input!</h4>
	   <%
   }
   %>

<!-- <p><cass="btn btn-default" href+"BmiServlet" role="button">ViewBmi </a><p> -->

</div>	
			
				<form action="BmiServlet" method="post">
					<div class="form-group">
						<label for="weight">Weight (in pounds)</label> <input type="text"
							class="form-control" name="weight" id="weight"
							placeholder="Weight">

					</div>
					<div class="form-group">
						<label for="height">Height (in inches)</label> <input type="text"
							class="form-control" name="height" id="
							height"placeholder="Height">
					</div>

					<button type="submit" class="btn btn-default">Submit</button>
				</form>
			</div>
			<hr>
			<footer>
				<p>&copy; 2018 Antony,Inc</p>
			</footer>
		</div>
		<!-- /container -->
	</div>

</body>
</html>