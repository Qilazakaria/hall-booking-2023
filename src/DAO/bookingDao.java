	package DAO;
	
	import java.sql.*;
	import java.util.*;
	import java.util.Date;
	import java.text.SimpleDateFormat;
	import Database.Database_Connection;
	import java.sql.*; 
	import java.util.ArrayList;
	import java.util.List;
	import Model.booking;
	
	public class bookingDao {  
		private static Connection con = null;
		private static PreparedStatement ps = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		private static String sql;
		private int bookingID;
	    private Date bookingDate;
	    private Time bookingTime;
	    private String bookingDescription;
	    private int bookingEstimateCapacity;
	    private float bookingPrice;
	  
	
public void addBooking(booking bean) {
		
		//get values
		bookingID = bean.getBookingID();
		bookingDate = bean.getBookingDate();
		bookingTime= bean.getBookingTime();
		bookingDescription = bean.getBookingDescription();
		bookingEstimateCapacity= bean.getBookingEstimateCapacity();
		bookingPrice = bean.getBookingPrice();
		
		java.sql.Date rtdate = new java.sql.Date(bookingDate.getTime());


		try {			
			//call getConnection() method
			con = Database_Connection.getConnection() ;

			//create statement
			ps = con.prepareStatement("INSERT INTO booking(bookingID,bookingDate,bookingTime,bookingDescription,bookingEstimateCapacity,bookingPrice)VALUES(?,?,?,?,?,?)");
			ps.setInt(1, bookingID);
			ps.setDate(2, rtdate);
			ps.setTime(3, bookingTime);
			ps.setString(4, bookingDescription);
			ps.setInt(5, bookingEstimateCapacity);
			ps.setFloat(6, bookingPrice);
			
			
			//execute query
			ps.executeUpdate();
			System.out.println("Successfully inserted");

			//close connection
			con.close();
			

		}catch(Exception e) {
			e.printStackTrace();				
		}
	}	

	public static int update(booking b){  
	    int status=0;    
	    try{  
	    	con = Database_Connection.getConnection() ; 
	        PreparedStatement ps=con.prepareStatement(  "update bookinghall set bookingDate=?,bookingTime=?,bookingDescription=?,bookingEstimateCapacity=?,bookingPrice=?,staffID=?,custID=? where bookingID=?");  
	        java.util.Date utilDate = b.getBookingDate();
	        java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
	        ps.setDate(1, sqlDate);  
	        ps.setTime(2,b.getBookingTime());  
	        ps.setString(3,b.getBookingDescription()); 
	        ps.setInt(4,b.getBookingEstimateCapacity()); 
	        ps.setFloat(5,b.getBookingPrice()); 
	        ps.setInt(6,b.getStaffID());  
	        ps.setInt(7,b.getCustID()); 
	        ps.setInt(8,b.getBookingID());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	} 
	
	public static int delete(booking b){  
	    int status=0;  
	    try{  
	    	con = Database_Connection.getConnection() ; 
	        PreparedStatement ps=con.prepareStatement("delete from bookinghall where bookingID=?");  
	        ps.setInt(1,b.getBookingID());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<booking> getAllRecords(){  
	    List<booking> list=new ArrayList<booking>();  
	      
	    try{  
	    	con = Database_Connection.getConnection() ;  
	        PreparedStatement ps=con.prepareStatement("select * from bookinghall");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	booking b=new booking();  
	        	b.setBookingID(rs.getInt("bookingID"));
	            b.setBookingDate(rs.getDate("bookingDate"));  
	            b.setBookingTime(rs.getTime("bookingTime"));  
	            b.setBookingDescription(rs.getString("bookingDescription"));  
	            b.setBookingEstimateCapacity(rs.getInt("bookingEstimateCapacity")); 
	            b.setBookingPrice(rs.getFloat("bookingPrice"));  
	            b.setStaffID(rs.getInt("staffID"));  
	            b.setCustID(rs.getInt("custID")); 
	            list.add(b);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static booking getRecordById(int bookingID){  
		booking b=null;  
	    try{  
	    	con = Database_Connection.getConnection() ;
	        PreparedStatement ps=con.prepareStatement("select * from bookinghall where bookingID=?");  
	        ps.setInt(1,bookingID);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            b=new booking();   
	            b.setBookingID(rs.getInt("bookingID"));
	            b.setBookingDate(rs.getDate("bookingDate"));  
	            b.setBookingTime(rs.getTime("bookingTime"));  
	            b.setBookingDescription(rs.getString("bookingDescription"));  
	            b.setBookingEstimateCapacity(rs.getInt("bookingEstimateCapacity")); 
	            b.setBookingPrice(rs.getFloat("bookingPrice"));  
	            b.setStaffID(rs.getInt("staffID"));  
	            b.setCustID(rs.getInt("custID")); 
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return b;  
	}  
	}  