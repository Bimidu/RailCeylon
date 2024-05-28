package com.ticket_package.ticket_control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ticket_package.ticket_implement.Ticket;
import com.ticket_package.ticket_util.Ticket_db_util;
import com.train_package.train_implement.Train;
import com.train_package.train_util.Train_DB_util;


@WebServlet("/Ticket_display_servlet")
public class Ticket_display_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		
		try {
			List <Ticket> ticket_details = Ticket_db_util.showTicket(email);
			request.setAttribute("ticket_details", ticket_details);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher rd3 = request.getRequestDispatcher("showTickets.jsp");
		rd3.forward(request, response);
	}

}
