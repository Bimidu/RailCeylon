package com.train_package.train_util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ticket_package.ticket_util.DBconnect;
import com.train_package.train_implement.Train;

public class Train_DB_util {
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<Train> findTrain(String t_departure, String t_destination) {
		ArrayList<Train> train = new ArrayList<> ();
		
		try {
			conn = DBconnect.getConnection();
			stmt = conn.createStatement();
			
			String sql = "SELECT * FROM trains WHERE departure='"+t_departure+"' and destination='"+t_destination+"'";
			
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int train_id = rs.getInt(1);
				String train_name = rs.getString(2);
				String departure = rs.getString(3);
				String destination = rs.getString(4);
				int t_class = rs.getInt(5);
				int t_price = rs.getInt(6);
				
				Train t1 = new Train(train_id, train_name, departure, destination, t_class, t_price);
				train.add(t1);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return train;
	}
}
