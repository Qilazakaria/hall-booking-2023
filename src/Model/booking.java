package Model;

import java.sql.Time;
import java.util.Date;

public class booking {
	
    private int bookingID;
    private Date bookingDate;
    private Time bookingTime;
    private String bookingDescription;
    private int bookingEstimateCapacity;
    private float bookingPrice;
    private int staffID;
    private int custID;
    
    public booking()
   	{
   		
   	}
       
       public booking(int bookingID, Date bookingDate, Time bookingTime, String bookingDescription,int bookingEstimateCapacity,float bookingPrice,int staffID,int custID) 
   	{
   		this.bookingID = bookingID;
   		this.bookingDate = bookingDate;
   		this.bookingTime = bookingTime;
   		this.bookingDescription = bookingDescription;
   		this.bookingEstimateCapacity = bookingEstimateCapacity;
   		this.bookingPrice = bookingPrice;
   		this.staffID = staffID;
   		this.custID = custID;
   	}

	public int getBookingID() {
		return bookingID;
	}

	public void setBookingID(int bookingID) {
		this.bookingID = bookingID;
	}

	public Date getBookingDate() {
		return bookingDate;
	}

	public void setBookingDate(Date bookingDate) {
		this.bookingDate = bookingDate;
	}

	public Time getBookingTime() {
		return bookingTime;
	}

	public void setBookingTime(Time bookingTime) {
		this.bookingTime = bookingTime;
	}

	public String getBookingDescription() {
		return bookingDescription;
	}

	public void setBookingDescription(String bookingDescription) {
		this.bookingDescription = bookingDescription;
	}

	public int getBookingEstimateCapacity() {
		return bookingEstimateCapacity;
	}

	public void setBookingEstimateCapacity(int bookingEstimateCapacity) {
		this.bookingEstimateCapacity = bookingEstimateCapacity;
	}

	public float getBookingPrice() {
		return bookingPrice;
	}

	public void setBookingPrice(float bookingPrice) {
		this.bookingPrice = bookingPrice;
	}

	public int getStaffID() {
		return staffID;
	}

	public void setStaffID(int staffID) {
		this.staffID = staffID;
	}

	public int getCustID() {
		return custID;
	}

	public void setCustID(int custID) {
		this.custID = custID;
	}
    
}