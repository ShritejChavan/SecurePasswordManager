<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Add Password</title>
    <link rel="stylesheet" href="formStyle.css" />
  </head>
  <body>
    <div class="wrapper">
      <h2>Add Password</h2>
      <form action="addPassword" method="post">
        <div class="input-box">
          <input
            type="text"
            name="email"
            placeholder="Enter your email"
            required
          />
        </div>
        <div class="input-box">
          <input
            type="text"
            name="url"
            placeholder="Enter url"
            required
          />
        </div>
        <div class="input-box">
	        <input type="password" name="password" placeholder="Enter password">
	     </div>
        <div class="input-box button">
          <input type="Submit" value="Add Password" />
        </div>
      </form>
    </div>
   
  </body>
</html>
