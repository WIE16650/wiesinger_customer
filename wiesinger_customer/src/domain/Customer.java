package domain;

import java.time.LocalDateTime;
import java.util.ArrayList;



public class Customer {
	private Long	   		id;
	private LocalDateTime 	openingDate;
	private String    		firstname;
	private Double    		amount;
	private Double    		creditlimit;
	private ArrayList<Object> accounts;
	
	public Customer() {
		accounts = new ArrayList<>();
	}	
		
	public void add(CustomerAccount a) {
		accounts.add(a);
	}
	
	public void clear() {
		accounts.clear();
	}
	
	
	public Customer(Long id, LocalDateTime openingDate, String firstname, Double amount, Double creditlimit) {
		setId( id );
		setOpeningDate(openingDate);
		setFirstname (firstname);
		setAmount(amount);
		setCreditlimit (creditlimit);
	}
	
	public Customer( String firstname, Double amount ) {
		this( null, null, firstname, amount, null );
	}
	
	public Long getId() {
		return id;
	}
	
	public void setId( Long id ) {
		this.id = id;
	}
	public LocalDateTime getOpeningDate() {
	
		return openingDate;
	}

	public void setOpeningDate(LocalDateTime openingDate) {
		this.openingDate = openingDate;
	}
	
	public String getFirstname() {
		return firstname;
	}
	
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	
	public Double getAmount() {
		return amount;
	}
	
	public void setAmount(Double amount) {
		this.amount = amount;
	}
	
	public Double getCreditlimit() {
		return creditlimit;
	}
	
	public void setCreditlimit(Double creditlimit) {
		this.creditlimit = creditlimit;
	}
	
	@Override
	public String toString() {
		return "Account [id=" + id + ", openingDate=" + openingDate + ", firstname=" + firstname + ", amount=" + amount
				+ ", creditlimit=" + creditlimit + "]\n";
	}
}
