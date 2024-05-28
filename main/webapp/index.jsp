<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rail Ceylon</title>
<link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/styles.css">
        
</head>
<body>
		<jsp:include page="header.jsp"/>
        <div id="home-banner1" class="container-fluid justify-content-between ">

            <div class="container d-flex  flex-row justify-content-between h-100">
                <div class="d-flex flex-column justify-content-center text-light">
                    <h5 class="display-2 ">Your Journey. Your Way.</h5>
                    <h6 class="display-6">Book with Ease Today!</h6>
                </div>


            </div>
        </div>

        <div id="home-banner2" class="container-fluid d-flex flex-row justify-content-between bg-light-subtle" >

            <div class="container d-flex flex-column justify-content-center align-items-center text-dark" >
                <h1 >Where would you like to go today ?</h1>
                <h5 >Book a ticket directly with our online reservation tool</h5>
                <p class="text-center lead">Reserve your train ticket with just a few clicks! Enjoy the convenience of 24/7 booking, real-time seat availability, and secure payment options. Book now for an instant e-ticket confirmation. Travel made simple, book online today!</p>

                <a  class="h5 pt-5" href="reserve.jsp"><button id="home-reserve-button">Reserve Now</button></a>
            </div>

        </div>

        <div id="home-banner3" class="container-fluid d-flex flex-row justify-content-between bg-light-subtle" >

                <div class="container d-flex flex-column justify-content-center align-items-center text-dark" >
                    <h1 class="display-4 text-light">RAIL CEYLON Newsletter</h1>

                    <p class="text-light lead">Stay current with latest updates. Register for our newsletter. Delivered
                        straight, daily to your inbox.</p>

                    <form class="d-flex flex-column align-items-center text-light" action="" method="POST">
                        <input class="form-control mb-3" type="text" name="name" placeholder="Name" style="width: 20rem">
                        <input class="form-control mb-3" type="email" name="email" placeholder="Email">
                        <input class="btn-primary w-50 bg-dark-subtle border-0 rounded" type="submit" name="submit" style="height: 2rem">
                    </form>
                </div>

        </div>

        <jsp:include page="footer.jsp"/>
</body>
</html>