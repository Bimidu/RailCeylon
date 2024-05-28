package com.ticket_package.ticket_util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ticket_package.ticket_implement.Ticket;
import com.train_package.train_implement.Train;

public class Ticket_db_util {
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//method for displaying ticket details
	public static List<Ticket> showTicket(String p_email) {
		ArrayList<Ticket> ticket = new ArrayList<> ();
		
		try {
			conn = DBconnect.getConnection();
			stmt = conn.createStatement();
			
			//query to get ticket details from the database
			String sql = "SELECT * FROM ticket WHERE email='"+p_email+"'";
			
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
			    String name = rs.getString(1);
			    String ddate = rs.getString(2);
			    String age = rs.getString(3);
			    String nic = rs.getString(4);
			    String address = rs.getString(5);
			    String email = rs.getString(6);
			    String phone = rs.getString(7);
			    String train = rs.getString(8);
			    int id = rs.getInt(9);

			    Ticket t1 = new Ticket(name, ddate, age, nic, address, email, phone, train, id);
			    ticket.add(t1);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return ticket;
	}
	
	//method for inserting ticket details
	public static boolean insertPassenger(String name, String ddate, String age, String nic, String address, String email, String phone, String train) {
	
		boolean isSuccess = false;
		
		try {
			conn = DBconnect.getConnection();
			stmt = conn.createStatement();
			
			//query to insert ticket details insert the database
			String sql = "INSERT INTO ticket VALUES ('"+name+"', '"+ddate+"','"+age+"', '"+nic+"', '"+address+"', '"+email+"', '"+phone+"', '"+train+"', 0) ";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess = true;
			} 
			else {
				isSuccess = false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	//method for updating ticket details
	public static boolean updateTicket(String upname, String upddate, String upage, String upnic, String upaddress, String upemail, String upphone, String uptrain, String id) {
	    boolean isSuccess = false;

	    try {
			conn = DBconnect.getConnection();
			stmt = conn.createStatement();
			
			//query to update ticket details in the database
			String sql = "UPDATE ticket SET name = '"+upname+"', ddate = '"+upddate+"', age = '"+upage+"', nic = '"+upnic+"', address = '"+upaddress+"', email = '"+upemail+"', phone = '"+upphone+"', train = '"+uptrain+"' WHERE id = '"+id+"' ";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess = true;
			} 
			else {
				isSuccess = false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}

	    return isSuccess;
	}

	//method for deleting ticket details
	public static boolean deleteTicket(String id) {
	    
		int iid = Integer.parseInt(id);
		boolean isSuccess = false;

	    try {
			conn = DBconnect.getConnection();
			stmt = conn.createStatement();
			
			//query to delete ticket details in the database
			String sql = "DELETE FROM ticket WHERE id = '"+iid+"'";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess = true;
			} 
			else {
				isSuccess = false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}

	    return isSuccess;
	}
	}

