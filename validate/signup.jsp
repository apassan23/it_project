<%@ page import="project.ValidateUtils" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Sign Up</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
  <link href="https://fonts.googleapis.com/css?family=Dancing+Script|Rubik&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" />
</head>

<body>
  <% 
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String username = request.getParameter("username"); String password =
    request.getParameter("password"); String email =
    request.getParameter("email"); String gender =
    request.getParameter("gender"); String cPassword =
    request.getParameter("cpassword");
    String birthDate = request.getParameter("birthDate");
    
    request.setAttribute("firstName",firstName);
    request.setAttribute("lastName",lastName);
    request.setAttribute("username",username);
    request.setAttribute("password",password);
    request.setAttribute("email",email);
    request.setAttribute("gender",gender);
    request.setAttribute("birthDate",birthDate);
    
    %>
  <div class="container" id="root">
    <div class="card">
      <h2 class="card-title text-center mt-4 font-standout">Sign Up</h2>
      <div class="card-body">
        <form class="form" method="POST">
          <div class="row mb-3">
            <div class="col-6">
              <label for="firstName">FirstName</label>
              <input type="text" name="firstName" id="" class="form-control" />
            </div>
            <div class="col-6">
              <label for="lastName">LastName</label>
              <input type="text" name="lastName" id="" class="form-control" />
            </div>
          </div>
          <div class="gender row my-3">
            <div class="col-3"><label for="gender">Gender</label> :</div>
            <div class="col-9">
              <input type="radio" name="gender" id="" value="male" /> Male
              &nbsp;&nbsp;
              <input type="radio" name="gender" id="" value="female" /> Female
            </div>
          </div>
          <div class="form-group">
            <label for="birthDate">Birth Date</label>
            <input type="text" name="birthDate" id="" class="form-control" />
          </div>

          <div class="form-group">
            <label for="email">Email</label>
            <input type="text" name="email" id="" class="form-control" />
          </div>
          <div class="form-group">
            <label for="username">Username</label>
            <input type="text" name="username" id="" class="form-control" />
          </div>
          <div class="form-group">
            <label for="password">Password</label>
            <input type="password" name="password" id="" class="form-control" />
          </div>
          <div class="form-group">
            <label for="password">Confirm Password</label>
            <input type="password" name="cpassword" id="" class="form-control" />
          </div>
          <% if(firstName.length() == 0 || lastName.length() == 0 || username.length() == 0 || password.length() == 0 ||
            email.length() == 0 || gender == null || cPassword.length() == 0){
            %>
          <div class="alert alert-danger mt-4">Please Fill all the Fields</div>
          <%} else if(!password.equals(cPassword)){ %>
          <div class="alert alert-danger mt-4">Passwords do not Match!</div>
          <%} 
          else { 
            
            if(!ValidateUtils.isEmailValid(email)){
            %>
          <div class="alert alert-danger mt-3">Email Invalid!</div>
          <%} 
          else if(!ValidateUtils.isDateValid(birthDate)){%>
          <div class="alert alert-danger mt-3">Date Invalid!</div>
          <%} else {%>
          <jsp:useBean id="student" class="project.Student" scope="application">
            <jsp:setProperty name="student" property="firstName" value="${firstName}" />
            <jsp:setProperty name="student" property="lastName" value="${lastName}" />
            <jsp:setProperty name="student" property="email" value="${email}" />
            <jsp:setProperty name="student" property="gender" value="${gender}" />
            <jsp:setProperty name="student" property="birthDate" value="${birthDate}" />
          </jsp:useBean>
          <jsp:forward page="../product.jsp" />
          <%}}%>
          <button type="submit" class="btn btn-success btn-block mt-5">
            Sign Up
          </button>
          <div class="or mt-4">OR</div>
          <a class="btn btn-warning btn-block mt-4 text-white" href="login.jsp">
            Log in
          </a>
        </form>
      </div>
    </div>
  </div>
</body>

</html>