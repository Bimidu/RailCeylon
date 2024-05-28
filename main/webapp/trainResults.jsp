<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Train Results</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/styles.css">
    <script>
    	document.addEventListener("DOMContentLoaded", function () {
      		const form = document.getElementById("passenger-form");

			      form.addEventListener("submit", function (event) {
			        let valid = true;
			
			        // Validate Age
			        const ageField = document.getElementById("passenger-age");
			        const age = parseInt(ageField.value, 10);
			        if (isNaN(age) || age < 0 || age > 120) {
			          alert("Age must be between 0 and 120.");
			          ageField.focus();
			          valid = false;
			        }
			
			        // Validate NIC (Sri Lankan NIC format)
			        const nicField = document.getElementById("passenger-nic");
			        const nicPattern = /^[0-9]{9}[vVxX]$/;
			        if (!nicPattern.test(nicField.value)) {
			          alert("NIC should be in the Sri Lankan NIC format (e.g., 123456789V).");
			          nicField.focus();
			          valid = false;
			        }
			
			        // Validate Phone Number (10 digits)
			        const phoneField = document.getElementById("passenger-phone");
			        const phonePattern = /^\d{10}$/;
			        if (!phonePattern.test(phoneField.value)) {
			          alert("Phone number must be 10 digits.");
			          phoneField.focus();
			          valid = false;
			        }
			
			        if (!valid) {
			          event.preventDefault(); // Prevent form submission if validation fails
			        }
	      	});
	    });

    </script>
</head>
<body>
<!-- link header-->

<jsp:include page="header.jsp"/>

	<div id="results-banner1" class="container-fluid d-flex flex-row justify-content-between align-items-center bg-dark pt-5 pb-5">
    <div class="container">
        
        <c:choose>
            <c:when test="${not empty train_details}">
                <h3 class="text-light">Available trains</h3>
                <table class="table table-dark table-sm rounded table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>Train Name</th>
                            <th>Departure</th>
                            <th>Destination</th>
                            <th>Class</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="train" items="${train_details}">
                            <tr>
                                <td>${train.train_name}</td>
                                <td>${train.departure}</td>
                                <td>${train.destination}</td>
                                <td>${train.t_class}</td>
                                <td>${train.t_price}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:when>
            <c:otherwise>
                <p class="text-light">No results found</p>
            </c:otherwise>
        </c:choose>
    </div>
</div>






<div class="container pt-5 mt-5 bg-dark-subtle rounded mb-5 pb-5">
  <div class="row justify-content-center">
    <div class="col-lg-6">
      <form action="insertPassenger" method="POST" id="passenger-form">
        <h2>Journey Details</h2>
        

        <div class="row g-3">
          <div class="col-6">
  <label for="train-selection" class="form-label">Available Trains</label>
          <select id="train-selection" name="train-selection" class="form-select" required>
            <option value="">-- Select a Train --</option>
            <c:forEach items="${train_details}" var="train">
              <option value="${train.train_name}">${train.train_name}</option>
            </c:forEach>
          </select>
          
          </div>
          <div class="col-6">
            <label for="ddate" class="form-label">Departure Date</label>
            <input type="date" id="ddate" name="ddate" class="form-control">
          </div>
        </div>
        <br>
        <h2>Passenger Details</h2>
       
   
        <div class="mb-3">
          <label for="passenger-name" class="form-label">Name</label>
          <input type="text" id="passenger-name" name="passenger-name" class="form-control" required>
        </div>

        <div class="mb-3">
          <label for="passenger-age" class="form-label">Age</label>
          <input type="number" id="passenger-age" name="passenger-age" class="form-control" required>
        </div>

        <div class="mb-3">
          <label for="passenger-nic" class="form-label">NIC Number</label>
          <input type="text" id="passenger-nic" name="passenger-nic" class="form-control" required>
        </div>

        <div class="mb-3">
          <label for="passenger-address" class="form-label">Address</label>
          <input type="text" id="passenger-address" name="passenger-address" class="form-control" required>
        </div>

        <div class="mb-3">
          <label for="passenger-email" class="form-label">Email</label>
          <input type="email" id="passenger-email" name="passenger-email" class="form-control" required>
        </div>

        <div class="mb-3">
          <label for="passenger-phone" class="form-label">Phone</label>
          <input type="tel" id="passenger-phone" name="passenger-phone" class="form-control" required>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
    </div>
  </div>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>
