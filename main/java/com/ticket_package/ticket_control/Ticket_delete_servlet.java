package com.ticket_package.ticket_control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ticket_package.ticket_util.Ticket_db_util;


@WebServlet("/Ticket_delete_servlet")
public class Ticket_delete_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		boolean isTrue;
		
		isTrue = Ticket_db_util.deleteTicket(id);
		
		if(isTrue == true) {
			RequestDispatcher rd = request.getRequestDispatcher("deleteSuccess.jsp");
			rd.forward(request, response);
		}
		else {
			
			RequestDispatcher rd2 = request.getRequestDispatcher("deleteUnsuccess.jsp");
			rd2.forward(request, response);
		}
	}

}
