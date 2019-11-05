<jsp:useBean id="student" class="project.Student" scope="application">
</jsp:useBean>

<jsp:useBean id="product" class="project.Product" scope="application">
</jsp:useBean>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
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
    <title>Home</title>
  </head>

  <body>
    <div
      class="container-fluid row text-center"
      id="root"
      style="flex-direction: row !important;"
    >
      <div class="col-12">
        <h1 class="font-standout my-5 display-4">Personal Details</h1>

        <div class="p-5 lead">
          First Name :&nbsp;&nbsp;
          <div class="badge badge-primary text-capitalize">
            <jsp:getProperty name="student" property="firstName" />
          </div>

          <br /><br />
          Last Name:&nbsp;&nbsp;
          <div class="badge badge-primary text-capitalize">
            <jsp:getProperty name="student" property="lastName" />
          </div>

          <br /><br />
          Email :&nbsp;&nbsp;
          <div class="badge badge-primary">
            <jsp:getProperty name="student" property="email" />
          </div>

          <br /><br />

          Gender :&nbsp;&nbsp;
          <div class="badge badge-primary text-capitalize">
            <jsp:getProperty name="student" property="gender" />
          </div>

          <br /><br />
          Birth Date :&nbsp;&nbsp;
          <div class="badge badge-primary">
            <jsp:getProperty name="student" property="birthDate" />
          </div>

          <br /><br />
        </div>
      </div>
      <div class="col-12">
        <h2 class="font-standout display-4">Product Details</h2>

        <div class="p-5 lead">
          Product Name:&nbsp;&nbsp;
          <div class="badge badge-primary">
            <jsp:getProperty name="product" property="productName" />
          </div>
          <br /><br />
          Billing Address:&nbsp;&nbsp;
          <div class="badge badge-primary">
            <jsp:getProperty name="product" property="billingAddress" />
          </div>
          <br /><br />
          Delivery Date:&nbsp;&nbsp;
          <div class="badge badge-primary">
            <jsp:getProperty name="product" property="deliveryDate" />
          </div>

          <br /><br />
          Type:&nbsp;&nbsp;
          <div class="badge badge-primary">
            <jsp:getProperty name="product" property="type" />
          </div>

          <br /><br />
          Discount:&nbsp;&nbsp;
          <div class="badge badge-primary">
            <jsp:getProperty name="product" property="discount" />
          </div>

          <br /><br />
        </div>
      </div>
    </div>
  </body>
</html>
