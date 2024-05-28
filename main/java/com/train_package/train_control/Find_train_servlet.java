package com.train_package.train_control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.train_package.train_implement.Train;
import com.train_package.train_util.Train_DB_util;

@WebServlet("/Find_train_servlet")
public class Find_train_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String departure = request.getParameter("departure");
		String destination = request.getParameter("destination");
		
		try {
			List<Train> train_details = Train_DB_util.findTrain(departure, destination);
			request.setAttribute("train_details", train_details);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("trainResults.jsp");
		rd.forward(request, response);
	}

}
