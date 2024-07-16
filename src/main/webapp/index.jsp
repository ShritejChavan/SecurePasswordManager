<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/4.2.0/remixicon.css"
      integrity="sha512-OQDNdI5rpnZ0BRhhJc+btbbtnxaj+LdQFeh0V9/igiEPDiWE2fG+ZsXl0JEH+bjXKPJ3zcXqNyP4/F/NegVdZg=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="stylesheet" href="style.css" />
    <title>Password Manager</title>
  </head>
  <body>
    <!-- MAIN  -->
    <div class="main">
      <div class="navbar">
        <div class="left">
          <a href="" class="nav-heading">VAULT COSMOS</a>
        </div>
        <div class="right">
          <a href="#" class="right-links">Home</a>
          <a href="#" class="right-links">About</a>
		  <c:choose>
		  	<c:when test="${email.length() > 0}">
		  		<a href="profile.jsp" class="right-links"><c:out value="${email}"></c:out></a>
		  		<a href="logout" class="right-links">Logout</a>
		  	</c:when>
		  	<c:otherwise>
		  		<a href="login.jsp" class="right-links">Login</a>
		  	</c:otherwise>
		  </c:choose>
        </div>
      </div>

      <div class="hero">
        <div class="branding">
          <h1>VAULT</h1>
          <div class="second">
            <h1>COSMOS</h1>
            <h5>Secure Password Manager</h5>
          </div>
        </div>
      </div>

      <div class="tagline">
        <h5>Secure your digital footprint</h5>
        <h5>With a fortress of Password</h5>
      </div>

      <div class="main-footer">
        <a href="passchecker.jsp" class="footer-link"
          >Check Password Strength <i class="ri-arrow-right-up-line"></i
        ></a>
        <a href="password_generator.jsp" class="footer-link"
          >Generate Password <i class="ri-arrow-right-up-line"></i
        ></a>
        <a href="password_manager.jsp" class="footer-link"
          >Manage your Password <i class="ri-arrow-right-up-line"></i
        ></a>
      </div>
    </div>

    <script src="script.js"></script>
  </body>
</html>
