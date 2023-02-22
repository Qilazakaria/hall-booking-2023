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
		private int bookingid;
	    private Date bookingdate;
	    private String bookingtime;
	    private String bookingdescription;
	    private int bookingestimatecapacity;
	    private int bookingprice;  
	  
	
public void addBooking(booking bean) {
		  
		//get values
		bookingid = bean.getBookingid();
		bookingdate = bean.getBookingdate();
		bookingtime= bean.getBookingtime();
		bookingdescription = bean.getBookingdescription();
		bookingestimatecapacity= bean.getBookingestimatecapacity();
		bookingprice = bean.getBookingprice();
		 
		java.sql.Date rtdate = new java.sql.Date(bookingdate.getTime());


		try {			
			//call getConnection() method
			con = Database_Connection.getConnection() ;

			//create statement
			ps = con.prepareStatement("INSERT INTO booking(bookingid,bookingdate,bookingtime,bookingdescription,bookingestimatecapacity,bookingprice)VALUES(?,?,?,?,?,?)");
			ps.setInt(1, bookingid);
			ps.setDate(2, rtdate);
			ps.setString(3, bookingtime);
			ps.setString(4, bookingdescription);
			ps.setInt(5, bookingestimatecapacity);
			ps.setInt(6, bookingprice);
			
			
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
	        PreparedStatement ps=con.prepareStatement(  "update bookinghall set bookingdate=?,bookingtime=?,bookingdescription=?,bookingestimatecapacity=?,bookingprice=?,staffid=?,custid=? where bookingid=?");  
	        java.util.Date utilDate = b.getBookingdate();
	        java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
	        ps.setDate(1, sqlDate);  
	        ps.setString(2,b.getBookingtime());  
	        ps.setString(3,b.getBookingdescription()); 
	        ps.setInt(4,b.getBookingestimatecapacity()); 
	        ps.setInt(5,b.getBookingprice()); 
	        ps.setInt(6,b.getStaffid());  
	        ps.setInt(7,b.getCustid()); 
	        ps.setInt(8,b.getBookingid());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	} 
	
	public static int delete(booking b){  
	    int status=0;  
	    try{  
	    	con = Database_Connection.getConnection() ; 
	        PreparedStatement ps=con.prepareStatement("delete from bookinghall where bookingid=?");  
	        ps.setInt(1,b.getBookingid());  
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
	        	b.setBookingid(rs.getInt("bookingid"));
	            b.setBookingdate(rs.getDate("bookingdate"));  
	            b.setBookingtime(rs.getString("bookingtime"));  
	            b.setBookingdescription(rs.getString("bookingdescription"));  
	            b.setBookingestimatecapacity(rs.getInt("bookingestimatecapacity")); 
	            b.setBookingprice(rs.getInt("bookingprice"));  
	            b.setStaffid(rs.getInt("staffid"));  
	            b.setCustid(rs.getInt("custid")); 
	            list.add(b);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static booking getRecordById(int bookingid){  
		booking b=null;   
	    try{  
	    	con = Database_Connection.getConnection() ;
	        PreparedStatement ps=con.prepareStatement("select * from bookinghall where bookingid=?");  
	        ps.setInt(1,bookingid);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            b=new booking();   
	            b.setBookingid(rs.getInt("bookingid"));
	            b.setBookingdate(rs.getDate("bookingdate"));  
	            b.setBookingtime(rs.getString("bookingtime"));  
	            b.setBookingdescription(rs.getString("bookingdescription"));  
	            b.setBookingestimatecapacity(rs.getInt("bookingestimatecapacity")); 
	            b.setBookingprice(rs.getInt("bookingprice"));  
	            b.setStaffid(rs.getInt("staffid"));  
	            b.setCustid(rs.getInt("custid")); 
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return b;  
	}  
	}  