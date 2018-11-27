<pre><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
      <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.1.3.css">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

      <title>Register</title>
        <script>
        function validate()
        {
          var fullname = document.form.fullname.value;
          var email = document.form.email.value;
          var username = document.form.username.value;
          var password = document.form.password.value;
          var conpassword= document.form.conpassword.value;
          if (fullname==null || fullname=="")
          {
            alert("Full Name can't be blank");
            return false;
          }
          else if (email==null || email=="")
          {
            alert("Email can't be blank");
            return false;
          }
          else if (username==null || username=="")
          {
            alert("Username can't be blank");
            return false;
          }
          else if(password.length<6)
          {
            alert("Password must be at least 6 characters long.");
            return false;
          }
          else if (password!=conpassword)
          {
            alert("Confirm Password should match with the Password");
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
    <center><h2>Java Registration application using MVC and MySQL </h2></center>
    <form name="form" action="RegisterServlet" method="post" onsubmit="return validate()">
      <table align="center">
        <tr>
          <td>Full Name</td>
          <td><input type="text" name="fullname" /></td>
        </tr>
        <tr>
          <td>Email</td>
          <td><input type="text" name="email" /></td>
        </tr>
        <tr>
          <td>Username</td>
          <td><input type="text" name="username" /></td>
        </tr>
        <tr>
          <td>Password</td>
          <td><input type="password" name="password" /></td>
        </tr>
        <tr>
          <td>Confirm Password</td>
          <td><input type="password" name="conpassword" /></td>
        </tr>
        <tr>
          <td><%=(request.getAttribute("errMessage") == null) ? ""
          : request.getAttribute("errMessage")%></td>
        </tr>
        <tr>
          <td></td>
          <td>
          <input type="submit" value="Register"></input>
           <input type="reset" value="Reset"></input></td>
        </tr>
      </table>
    </form>
  </body>
</html>
