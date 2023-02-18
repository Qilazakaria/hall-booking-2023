//package DAO;
//import Model.Booking;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.Statement;
//import java.sql.Time;
//import java.util.ArrayList;
//import java.util.Date;
//import java.util.List;
//
//import Database.Database_Connection;
//
//public class Booking_DAO {
//	
//	private static Connection con = null;
//	private static PreparedStatement ps = null;
//	private static Statement stmt = null;
//	private static ResultSet rs = null;
//	private static String sql;
//	private int bookingID;
//    private Date bookingDate;
//    private Time bookingTime;
//    private String bookingDescription;
//    private int bookingEstimateCapacity;
//    private float bookingPrice;
//    
//	public static List<Booking> getAllRecords(){  
//	    List<Booking> list=new ArrayList<Booking>();  
//	      
//	    try{  
//	    	con = Database_Connection.getConnection() ;
//	        PreparedStatement ps=con.prepareStatement("select * from bookinghall");  
//	        ResultSet rs=ps.executeQuery();  
//	        while(rs.next()){  
//	        	Booking b=new Booking();  
//	        	b.setBookingID(rs.getInt("bookingID"));
//	            b.setBookingDate(rs.getDate("bookingDate"));  
//	            b.setBookingTime(rs.getTime("bookingTime"));  
//	            b.setBookingDescription(rs.getString("bookingDescription"));  
//	            b.setBookingEstimateCapacity(rs.getInt("bookingEstimateCapacity")); 
//	            b.setBookingPrice(rs.getFloat("bookingPrice"));  
//	            b.setStaffID(rs.getInt("staffID"));  
//	            b.setCustID(rs.getInt("custID")); 
//	            list.add(b);  
//	        }  
//	    }catch(Exception e){System.out.println(e);}  
//	    return list;  
//	}  
//}
