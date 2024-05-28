<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/styles.css">
        
</head>
<body>
<jsp:include page="header.jsp"/>

<%
	String name = request.getParameter("name");
	String ddate = request.getParameter("ddate");
	String age = request.getParameter("age");
	String nic = request.getParameter("nic");
	String address = request.getParameter("address");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String train = request.getParameter("train");
	String id = request.getParameter("id");

%>



<div class="container pt-5 mt-5 bg-dark-subtle rounded mb-5 pb-5">
  <div class="row justify-content-center">
    <div class="col-lg-6">
      <form action="deleteTicket" method="POST" id="passenger-form" onsubmit="return validateForm();">
        <h2>Journey Details</h2>
        

        <div class="mb-3">
          <label for="train" class="form-label">Train</label>
          <input type="text" id="passenger-up-train" name="passenger-up-train" value="<%=train%>" class="form-control text-dark-subtle"  readonly>
        </div>
          
        <div class="mb-3">
          <label for="ddate" class="form-label">Departure Date</label>
          <input type="date" id="passenger-up-ddate" name="passenger-up-ddate" value="<%=ddate%>" class="form-control" readonly>
        </div>
      
        <br>
        <h2>Passenger Details</h2>
       
   
        <div class="mb-3">
          <label for="passenger-name" class="form-label">Name</label>
          <input type="text" id="passenger-up-name" name="passenger-up-name" value="<%=name%>" class="form-control" readonly>
        </div>

        <div class="mb-3">
          <label for="passenger-age" class="form-label">Age</label>
          <input type="text" id="passenger-up-age" name="passenger-up-age" value="<%=age%>" class="form-control" readonly>
        </div>

        <div class="mb-3">
          <label for="passenger-nic" class="form-label">NIC Number</label>
          <input type="text" id="passenger-up-nic" name="passenger-up-nic" value="<%=nic%>" class="form-control" readonly>
        </div>

        <div class="mb-3">
          <label for="passenger-address" class="form-label">Address</label>
          <input type="text" id="passenger-up-address" name="passenger-up-address" value="<%=address%>" class="form-control" readonly>
        </div>

        <div class="mb-3">
          <label for="passenger-email" class="form-label">Email</label>
          <input type="email" id="passenger-up-email" name="passenger-up-email" value="<%=email%>" class="form-control text-dark-subtle" readonly>
        </div>

        <div class="mb-3">
          <label for="passenger-phone" class="form-label">Phone</label>
          <input type="text" id="passenger-up-phone" name="passenger-up-phone" value="<%=phone%>" class="form-control" readonly>
        </div>
        
        <%-- <div class="mb-3">
          <label for="id" class="form-label">Ticket ID</label> --%>
          <input type="hidden" id="id" name="id" value="<%=id%>" class="form-control" readonly>
        <%-- </div> --%>

        <button type="submit" class="btn btn-danger">Delete</button>
      </form>
    </div>
  </div>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>