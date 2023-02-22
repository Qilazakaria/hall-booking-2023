package Model;

import java.sql.Time;
import java.util.Date;

public class booking {
	
	private int bookingid;
	private Date bookingdate;
	private String bookingtime;
	private String bookingdescription;
	private int bookingestimatecapacity;
	private int bookingprice;
	private int staffid;
	private int custid;
	public int getBookingid() {
		return bookingid;
	}
	public void setBookingid(int bookingid) {
		this.bookingid = bookingid;
	}
	public Date getBookingdate() {
		return bookingdate;
	}
	public void setBookingdate(Date bookingdate) {
		this.bookingdate = bookingdate;
	}
	public String getBookingtime() {
		return bookingtime;
	}
	public void setBookingtime(String bookingtime) {
		this.bookingtime = bookingtime;
	}
	public String getBookingdescription() {
		return bookingdescription;
	}
	public void setBookingdescription(String bookingdescription) {
		this.bookingdescription = bookingdescription;
	}
	public int getBookingestimatecapacity() {
		return bookingestimatecapacity;
	}
	public void setBookingestimatecapacity(int bookingestimatecapacity) {
		this.bookingestimatecapacity = bookingestimatecapacity;
	}
	public int getBookingprice() {
		return bookingprice;
	}
	public void setBookingprice(int bookingprice) {
		this.bookingprice = bookingprice;
	}
	public int getStaffid() {
		return staffid;
	}
	public void setStaffid(int staffid) {
		this.staffid = staffid;
	}
	public int getCustid() {
		return custid;
	}
	public void setCustid(int custid) {
		this.custid = custid;
	}
	
    
   
    
}