<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Tickets</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/styles.css">
        
</head>
<body>
<jsp:include page="header.jsp"/>


<div id="ticket-banner1" class="container-fluid d-flex flex-row justify-content-between bg-dark pt-5 pb-5" >

    <div class="container d-flex flex-column justify-content-center align-items-center text-light" >
      <h1 class="display-4">View your tickets</h1>
      <p class="text-center lead">Enter your email to view the reserved tickets</p>
    </div>

  </div>



<div class="container pt-5 mt-5 bg-dark-subtle rounded mb-5 pb-5">
  <div class="row justify-content-center">
    <div class="col-lg-6">
      <form action="showTicket" method="post">
        <div class="mb-3">
        
        <label for="email" class="form-label">Email</label>
        <input type="text" id="email" name="email" class="form-control" required>
        
        </div>
        <button type="submit" class="btn btn-primary">Show Tickets</button>
      </form>
    </div>
  </div>
</div>



<jsp:include page="footer.jsp"/>
</body>
</html>