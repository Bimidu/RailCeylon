<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reserve</title>
<link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/styles.css">
  <script src="js/w3-include-HTML.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>

  <div id="reserve-banner1" class="container-fluid d-flex flex-row justify-content-between bg-dark" >

    <div class="container d-flex flex-column justify-content-center align-items-center text-light" >
      <h1 class="display-4">Find Trains</h1>
      <p class="text-center lead">Enter your departure and destination stations to find available trains</p>
    </div>

  </div>

<div class="container pt-5 mt-5 bg-dark-subtle rounded mb-5 pb-5">
  <div class="row justify-content-center">
    <div class="col-lg-6">
      <form action="findTrain" method="post">
        <div class="mb-3">
          <label for="departure" class="form-label">Departure Station</label>
          <select name="departure" id="departure" class="form-select">
            <option value="Colombo Fort">Colombo Fort</option>
            <option value="Colombo Maradana">Colombo Maradana</option>
            <option value="Kandy">Kandy</option>
            <option value="Galle">Galle</option>
            <option value="Nuwara Eliya">Nuwara Eliya</option>
            <option value="Anuradhapura">Anuradhapura</option>
            <option value="Badulla">Badulla</option>
            <option value="Jaffna">Jaffna</option>
            <option value="Gampaha">Gampaha</option>
            <option value="Matara">Matara</option>
            <option value="Hikkaduwa">Hikkaduwa</option>
            <option value="Polgahawela">Polgahawela</option>
            <option value="Ratnapura">Ratnapura</option>
            <option value="Kurunegala">Kurunegala</option>
            <option value="Avissawella">Avissawella</option>
          </select>
        </div>

        <div class="mb-3">
          <label for="destination" class="form-label">Destination Station</label>
          <select name="destination" id="destination" class="form-select">
            <option value="Colombo Fort">Colombo Fort</option>
            <option value="Colombo Maradana">Colombo Maradana</option>
            <option value="Kandy">Kandy</option>
            <option value="Galle">Galle</option>
            <option value="Nuwara Eliya">Nuwara Eliya</option>
            <option value="Anuradhapura">Anuradhapura</option>
            <option value="Badulla">Badulla</option>
            <option value="Jaffna">Jaffna</option>
            <option value="Gampaha">Gampaha</option>
            <option value="Matara">Matara</option>
            <option value="Hikkaduwa">Hikkaduwa</option>
            <option value="Polgahawela">Polgahawela</option>
            <option value="Ratnapura">Ratnapura</option>
            <option value="Kurunegala">Kurunegala</option>
            <option value="Avissawella">Avissawella</option>
          </select>
        </div>

        <button type="submit" class="btn btn-primary">Find Trains</button>
      </form>
    </div>
  </div>
</div>


<jsp:include page="footer.jsp"/>

</body>
</html>