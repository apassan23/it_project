<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Sign Up</title>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Dancing+Script|Rubik&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/style.css"
    />
  </head>

  <body>
    <div class="container" id="root">
      <div class="card">
        <h2 class="card-title text-center mt-4 font-standout">Sign Up</h2>
        <div class="card-body">
          <form class="form" method="POST" action="./validate/signup.jsp">
            <div class="row mb-3">
              <div class="col-6">
                <label for="firstName">FirstName</label>
                <input
                  type="text"
                  name="firstName"
                  id=""
                  class="form-control"
                />
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
              <input
                type="password"
                name="password"
                id=""
                class="form-control"
              />
            </div>
            <div class="form-group">
              <label for="password">Confirm Password</label>
              <input
                type="password"
                name="cpassword"
                id=""
                class="form-control"
              />
            </div>
            <button type="submit" class="btn btn-success btn-block mt-5">
              Sign Up
            </button>
            <div class="or mt-4">OR</div>
            <a
              class="btn btn-warning btn-block mt-4 text-white"
              href="login.jsp"
            >
              Log in
            </a>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
