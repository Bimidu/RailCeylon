<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Successful</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/styles.css">
        
</head>
<body>
<jsp:include page="header.jsp"/>

<div id="success-banner1" class="container-fluid d-flex flex-row justify-content-between bg-light-subtle" >

    <div class="container d-flex flex-column justify-content-center align-items-center text-light" >
      <h1 class="display-4">You have successfully reserved a ticket</h1>
      <p class="text-center lead">Please check your user profile for the ticket details.</p>
      
      <a  class="h5 pt-5" href="myTickets.jsp"><button id="results-myticket-button">My tickets</button></a>
    </div>

  </div>

<jsp:include page="footer.jsp"/>
</body>
</html>