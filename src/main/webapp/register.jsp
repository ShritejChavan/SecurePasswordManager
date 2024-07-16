<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Registration or Sign Up form in HTML CSS | CodingLab </title> 
    <link rel="stylesheet" href="formStyle.css">
   </head>
<body>
  <div class="wrapper">
    <h2>Registration</h2>
    <form action="registerUser" method="post">
      <div class="input-box">
        <input type="text" placeholder="Enter your name" name="username" required>
      </div>
      <div class="input-box">
        <input type="email" placeholder="Enter your email" name="email" required>
      </div>
      <div class="input-box">
        <input type="password" placeholder="Create password" name="password" required>
      </div>
      <div class="input-box button">
        <input type="Submit" value="Register Now">
      </div>
      <div class="text">
        <h3>Already have an account? <a href="login.jsp">Login now</a></h3>
      </div>
    </form>
  </div>
  
  
    <c:if test="${error == 1}">
    	
    	<script>
    		alert(<c:out value="${error}"></c:out>);
    	</script>
    </c:if>
  
 </body>
</html>