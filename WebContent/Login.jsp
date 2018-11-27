<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.1.3.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>Login</title>
    <script>
      function validate()
      {
        var username = document.form.username.value;
        var password = document.form.password.value;
        if (username==null || username=="")
        {
          alert("Username cannot be blank");
          return false;
        }
        else if(password==null || password=="")
        {
          alert("Password cannot be blank");
          return false;
        }
      }
    </script>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
      <div class="container"> <a class="navbar-brand" href="#">
          <i class="fa d-inline fa-lg fa-circle-o"></i>
          <b> MacksJaga</b>
        </a> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar17">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbar17">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item"> <a class="nav-link" href="#">Productos</a> </li>
            <li class="nav-item"> <a class="nav-link" href="#">Plantillas</a> </li>
            <li class="nav-item"> <a class="nav-link" href="#">Servicios</a> </li>
          </ul>
          <ul class="navbar-nav ml-auto">
            <li class="nav-item"> <a class="nav-link" href="#">Sobre Nosotros</a> </li>
            <li class="nav-item"> <a class="nav-link" href="#">Inicia Sesion</a> </li>
            <li class="nav-item"> <a class="nav-link" href="#">Registrate</a> </li>
          </ul> <a class="btn btn-outline-light navbar-btn ml-md-2">Buscar</a>
        </div>
      </div>
    </nav>
  <div style="text-align:center"><h1>Login application in Java using MVC and MySQL </h1> </div>
    <br>
    <form name="form" action="LoginServlet" method="post" onsubmit="return validate()">
    <!-- Do not use table to format fields. As a good practice use CSS -->
      <table align="center">
        <tr>
          <td>Username</td>
          <td><input type="text" name="username" /></td>
        </tr>
        <tr>
          <td>Password</td>
          <td><input type="password" name="password" /></td>
        </tr>
        <tr> <!-- refer to the video to understand request.getAttribute() -->
          <td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? ""
          : request.getAttribute("errMessage")%></span></td>
        </tr>
        <tr>
          <td></td>
          <td><input type="submit" value="Login"></input><input
          type="reset" value="Reset"></input></td>
        </tr>
      </table>
    </form>
  </body>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
</html>
