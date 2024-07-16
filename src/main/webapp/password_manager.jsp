<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.sql.*" %>
<%@ page import="Operations.Password_Manager_Context" %>
<%@ page import="Operations.User" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />

    <title>Password Manager</title>

    <style>
      body {
        background-color: black;
        color: white;
      }

      .table {
        color: white;
      }
      
      .navbar{
      	margin-bottom: 25px;
      }
    </style>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">Cyber Vault</a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="addPassword.jsp"
                >Add Credentials</a
              >
            </li>
          </ul>
          <form class="d-flex">
            <input
              class="form-control me-2"
              type="search"
              placeholder="Search"
              aria-label="Search"
            />
            <button class="btn btn-outline-success" type="submit">
              Search
            </button>
          </form>
        </div>
      </div>
    </nav>

    <div class="container">
      <table class="table">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Email</th>
            <th scope="col">Url</th>
            <th scope="col">Password</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>chavanshri568@gmail.com</td>
            <td>https://www.google.com/</td>
            <td>7KSg5rnbqCQ1K0TvoOsOPBO0N+nBr1sNG7LZSeXwEXc=</td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>shritejcrlsbca@gmail.com</td>
            <td>https://www.facebook.com/</td>
            <td>5rnbqCOPBO0N+nBr1sNG77KSgLZSeXwEXc=</td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>shrinidhi@gmail.com</td>
            <td>https://www.twitter.com/</td>
            <td>5rnbqCOPeXwEXc=BO0N+nBr1sNG77KSgLZS</td>
          </tr>
          <tr>
            <th scope="row">4</th>
            <td>swapnil@gmail.com</td>
            <td>https://www.javatpoint.com/</td>
            <td>wEXc=BO0N+5rnbqCOPeXnBr1sNG77KSgLZS</td>
          </tr>
        </tbody>
      </table>
    </div>
    
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
