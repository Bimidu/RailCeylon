package com.ticket_package.ticket_control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ticket_package.ticket_util.Ticket_db_util;

@WebServlet("/Ticket_update_servlet")
public class Ticket_update_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String upname = request.getParameter("passenger-up-name");
		String upddate = request.getParameter("passenger-up-ddate");
		String upage = request.getParameter("passenger-up-age");
		String upnic = request.getParameter("passenger-up-nic");
		String upaddress = request.getParameter("passenger-up-address");
		String upemail = request.getParameter("passenger-up-email");
		String upphone = request.getParameter("passenger-up-phone");
		String uptrain = request.getParameter("passenger-up-train");
		String id = request.getParameter("id");
		
		boolean isTrue;
		
		isTrue = Ticket_db_util.updateTicket(upname, upddate, upage, upnic, upaddress, upemail, upphone, uptrain, id);
		
		if(isTrue == true) {
			RequestDispatcher rd = request.getRequestDispatcher("updateSuccess.jsp");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd2 = request.getRequestDispatcher("updateUnsuccess.jsp");
			rd2.forward(request, response);
		}
	}

}
