package com.ticket_package.ticket_implement;

public class Ticket implements TicketInfo{
	private String name;
	private String ddate;
	private String age;
	private String nic;
	private String address;
	private String email;
	private String phone;
	private String train;
	private int id;
	
	
	public Ticket(String name, String ddate, String age, String nic, String address, String email, String phone,
			String train, int id) {
		this.name = name;
		this.ddate = ddate;
		this.age = age;
		this.nic = nic;
		this.address = address;
		this.email = email;
		this.phone = phone;
		this.train = train;
		this.id = id;
	}
	
	@Override
	public int getId() {
		return id;
	}

	@Override
	public String getName() {
		return name;
	}

	@Override
	public String getDdate() {
		return ddate;
	}

	@Override
	public String getAge() {
		return age;
	}

	@Override
	public String getNic() {
		return nic;
	}

	@Override
	public String getAddress() {
		return address;
	}

	@Override
	public String getEmail() {
		return email;
	}

	@Override
	public String getPhone() {
		return phone;
	}

	@Override
	public String getTrain() {
		return train;
	}

	
	
	
	
}
