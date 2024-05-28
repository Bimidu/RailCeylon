package com.ticket_package.ticket_control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ticket_package.ticket_util.Ticket_db_util;


@WebServlet("/Ticket_reserve_servlet")
public class Ticket_reserve_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nic = request.getParameter("passenger-nic");
		String ddate = request.getParameter("ddate");
		String name = request.getParameter("passenger-name");
		String age = request.getParameter("passenger-age");
		String address = request.getParameter("passenger-address");
		String email = request.getParameter("passenger-email");
		String phone = request.getParameter("passenger-phone");
		String train = request.getParameter("train-selection");
		
		
		boolean isTrue;
		
		isTrue = Ticket_db_util.insertPassenger(name, ddate, age, nic, address, email, phone, train);
		
		if(isTrue == true) {
			RequestDispatcher rd = request.getRequestDispatcher("passengerSuccess.jsp");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd2 = request.getRequestDispatcher("passengerUnsuccess.jsp");
			rd2.forward(request, response);
		}
	}

}
