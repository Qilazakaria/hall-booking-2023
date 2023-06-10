package booking;

import java.util.Date;

public class Booking {
	
	private int bookingid;
	private String bookingdate;
	private String bookingtime;
	private String bookingdescription;
	private int bookingestimatecapacity;
	private int bookingprice;
	private int staffid;
	private String staffName;
	private int custid;
	private String custName;
	
	public String getStaffName() {
		return staffName;
	}
	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public int getBookingid() {
		return bookingid;
	}
	public void setBookingid(int bookingid) {
		this.bookingid = bookingid;
	}
	public String getBookingdate() {
		return bookingdate;
	}
	public void setBookingdate(String bookingdate) {
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
	