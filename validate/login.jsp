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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
    %>


    <div class="container" id="root">
        <div class="card">
            <h2 class="card-title text-center mt-4 font-standout">Log in</h2>
            <div class="card-body">
                <form class="form" method="POST" action="${pageContext.request.contextPath}/validate/login.jsp">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" name="username" id="" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" name="password" id="" class="form-control" />
                    </div>
                    <% if(username.length() == 0 || password.length() == 0){
                    %>
                    <div class="alert alert-danger">Please Fill all the Fields</div>
                    <%} else { 
                        
                        if(username.equals("customer") && password.equals("customer")){
                        %>

                    <jsp:useBean id="student" class="project.Student" scope="application">
                        <jsp:setProperty name="student" property="firstName" value="Customer" />
                        <jsp:setProperty name="student" property="lastName" value="Customer" />
                        <jsp:setProperty name="student" property="email" value="customer@gmail.com" />
                        <jsp:setProperty name="student" property="gender" value="Male" />
                        <jsp:setProperty name="student" property="birthDate" value="01/01/2019" />
                    </jsp:useBean>

                    <jsp:forward page="../product.jsp" />
                    <%}
                    
                    else {                    
                    %>
                    <div class="alert alert-danger">Wrong username or password!</div>
                    <%}}%>
                    <button type="submit" class="btn btn-success btn-block mt-5">
                        Log In
                    </button>
                    <div class="or mt-4">OR</div>
                    <a class="btn btn-warning btn-block mt-4 text-white" href="index.jsp">
                        Sign Up
                    </a>
                </form>
            </div>
        </div>
    </div>
</body>

</html>