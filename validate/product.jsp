<%@ page import="project.ValidateUtils" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Product Details</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
  <link href="https://fonts.googleapis.com/css?family=Dancing+Script|Rubik&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" />
</head>

<body>
  <% 
    String productName = request.getParameter("productName");
    String address = request.getParameter("billingAddress");
    String delDate = request.getParameter("deliveryDate");
    String type = request.getParameter("type");
    String discount = request.getParameter("discount");

    request.setAttribute("productName",productName);
    request.setAttribute("address",address);
    request.setAttribute("delDate",delDate);
    request.setAttribute("type",type);
    request.setAttribute("discount",discount);

    %>




  <div class="container" id="root">


    <div class="card">
      <h2 class="card-title text-center mt-3 font-standout">
        Product Details
      </h2>
      <div class="card-body">
        <form action="home.jsp" class="form">
          <div class="form-group">
            <label for="productName">Product Name</label>
            <input type="text" name="productName" id="" class="form-control" />
          </div>
          <div class="form-group">
            <label for="billingAddress">Billing Address</label>
            <input type="text" name="billingAddress" id="" class="form-control" />
          </div>
          <div class="form-group">
            <label for="deliveryDate">Delivery Date</label>
            <input type="text" name="deliveryDate" id="" class="form-control" />
          </div>
          <div class="form-group">
            <label for="type">Product Type</label>
            <select name="type" id="" class="form-control">
              <option value="electronic">Electronic Appliance</option>
              <option value="paperback">Paperback</option>
              <option value="grocery">Grocery</option>
              <option value="other">Other</option>
            </select>
          </div>
          <div class="discount mt-4">
            <div class="row">
              <div class="col-6">
                Are you a Student ?
              </div>
              <div class="col-6">
                <input type="radio" name="discount" id="" value="yes" />Yes&nbsp;&nbsp;
                <input type="radio" name="discount" id="" value="no" />No
              </div>
            </div>
          </div>
          <% if(productName.length() == 0 || address.length() == 0 ||
          delDate.length() == 0 || type == null || discount.length() == 0){
            %>
          <div class="alert alert-danger">Please Fill all the Fields</div>
          <%} 
          else { 
            
            if(!ValidateUtils.isDateValid(delDate)){

            %>

          <div class="alert alert-danger mt-3">Date Invalid!</div>
          <%} else {%>
          <jsp:useBean class="project.Product" id="product" scope="application">
            <jsp:setProperty name="product" property="productName" value="${productName}" />
            <jsp:setProperty name="product" property="billingAddress" value="${address}" />
            <jsp:setProperty name="product" property="deliveryDate" value="${delDate}" />
            <jsp:setProperty name="product" property="type" value="${type}" />
            <jsp:setProperty name="product" property="discount" value="${discount}" />
          </jsp:useBean>
          <jsp:forward page="../home.jsp" />
          <%}}%>
          <button type="submit" class="btn btn-success btn-block mt-5">
            Place Order
          </button>
        </form>
      </div>
    </div>
  </div>
</body>

</html>