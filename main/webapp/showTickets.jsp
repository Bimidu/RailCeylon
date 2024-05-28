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
      <h2 class="display-4">Reserved tickets</h2>
      <p class="text-center lead">Enter your email to view the reserved tickets</p>
    </div>

  </div>




<div id="results-banner1" class="container-fluid d-flex flex-row justify-content-between align-items-center bg-light-subtle pt-3 pb-3">
    <div id="results-banner1" class="container">
		 <c:choose>
            <c:when test="${not empty ticket_details}"> 
		<table class="table table-light table-sm rounded table-striped table-bordered">
	        <thead>
	            <tr>
	                <th>Name</th>
	                <th>Date</th>
	                <th>Age</th>
	                <th>NIC</th>
	                <th>Address</th>
	                <th>Email</th>
	                <th>Phone</th>
	                <th>Train</th>
	                <th>Ticket ID</th>
	                <th></th>
	                <th></th>
	                <th></th>
	            </tr>
	        </thead>
	        <tbody>
	            <c:forEach var="ticket" items="${ticket_details}">
	                
	                <c:set var="name" value="${ticket.name}"/>
	                <c:set var="ddate" value="${ticket.ddate}"/>
	                <c:set var="age" value="${ticket.age}"/>
	                <c:set var="nic" value="${ticket.nic}"/>
	                <c:set var="address" value="${ticket.address}"/>
	                <c:set var="email" value="${ticket.email}"/>
	                <c:set var="phone" value="${ticket.phone}"/>
	                <c:set var="train" value="${ticket.train}"/>
	                <c:set var="id" value="${ticket.id}"/>
	                
	     <c:url var="ticketUpdate" value="updateTicket.jsp">
         
         	<c:param name="name" value="${name}"/>
	        <c:param name="ddate" value="${ddate}"/>
	        <c:param name="age" value="${age}"/>
	        <c:param name="nic" value="${nic}"/>
	        <c:param name="address" value="${address}"/>
	        <c:param name="email" value="${email}"/>
	        <c:param name="phone" value="${phone}"/>
	        <c:param name="train" value="${train}"/>
	        <c:param name="id" value="${id}"/>
         </c:url>
	                
	     <c:url var="ticketDelete" value="deleteTicket.jsp">
         
         	<c:param name="name" value="${name}"/>
	        <c:param name="ddate" value="${ddate}"/>
	        <c:param name="age" value="${age}"/>
	        <c:param name="nic" value="${nic}"/>
	        <c:param name="address" value="${address}"/>
	        <c:param name="email" value="${email}"/>
	        <c:param name="phone" value="${phone}"/>
	        <c:param name="train" value="${train}"/>
	        <c:param name="id" value="${id}"/>
         </c:url>
	                
	                
	                
	                
	                <tr>
	                    <td>${ticket.name}</td>
	                    <td>${ticket.ddate}</td>
	                    <td>${ticket.age}</td>
	                    <td>${ticket.nic}</td>
	                    <td>${ticket.address}</td>
	                    <td>${ticket.email}</td>
	                    <td>${ticket.phone}</td>
	                    <td>${ticket.train}</td>
	                    <td>${ticket.id}</td>
	                    <td><a  class="h6 pt-5" href="#"><button id="checkout-ticket-button">Checkout</button></a></td>
	                    <td><a  class="h6 pt-5" href="${ticketUpdate}"><button id="update-ticket-button">Edit details</button></a></td>
	                    <td><a  class="h6 pt-5" href="${ticketDelete}"><button id="delete-ticket-button">Remove Ticket</button></a></td>
	                </tr>
	            </c:forEach>
	        </tbody>
         </table>
         </c:when>
          
          <c:otherwise>
                <div id="ticket-banner1" class="container-fluid d-flex flex-row justify-content-between bg-light-subtle pt-5 pb-5" >

    <div class="container d-flex flex-column justify-content-center align-items-center text-dark" >
                
                <h3 class="text-center">No results found</h3>
                <p class="lead">You don't have any reserved tickets</p>
              </div>

  </div>
            
            </c:otherwise>
              </c:choose> 
</div>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>