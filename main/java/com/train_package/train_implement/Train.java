package com.train_package.train_implement;

public class Train implements TrainInfo{
	
	private int train_id;
	private String train_name;
	private String departure;
	private String destination;
	private int t_class;
	private int t_price;
	
	public Train(int train_id, String train_name, String departure, String destination, int t_class, int t_price) {
		this.train_id = train_id;
		this.train_name = train_name;
		this.departure = departure;
		this.destination = destination;
		this.t_class = t_class;
		this.t_price = t_price;
	}
	
	@Override
	public int getTrain_id() {
		return train_id;
	}

	@Override
	public String getTrain_name() {
		return train_name;
	}

	@Override
	public String getDeparture() {
		return departure;
	}

	@Override
	public String getDestination() {
		return destination;
	}

	@Override
	public int getT_class() {
		return t_class;
	}

	@Override
	public int getT_price() {
		return t_price;
	}
}
