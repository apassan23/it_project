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
  <div class="container" id="root">
    <div class="card">
      <h2 class="card-title text-center mt-3 font-standout">
        Product Details
      </h2>
      <div class="card-body">
        <form action="${pageContext.request.contextPath}/validate/product.jsp" class="form">
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
          <button type="submit" class="btn btn-success btn-block mt-5">
            Place Order
          </button>
        </form>
      </div>
    </div>
  </div>
</body>

</html>