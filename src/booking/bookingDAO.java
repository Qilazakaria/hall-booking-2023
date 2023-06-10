package booking;

import java.sql.*;  
import java.util.ArrayList;
import java.util.List;

import Database.Database_Connection;

public class bookingDAO {
		private static Connection con = null;
		private static PreparedStatement ps = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		private static String sql;
		
	public static int save(Booking b){  
	    int status=0;
	    int latestId = 0;
	    try{  
	    	con = Database_Connection.getConnection() ;
	    	
	    	// get latest ID
	    	PreparedStatement psGet = con.prepareStatement("SELECT * FROM bookinghall ORDER BY bookingid DESC LIMIT 1");
	        ResultSet rsGet = psGet.executeQuery();
	        
	        while(rsGet.next()) {  
	        	latestId = rsGet.getInt("bookingid");
	        }
	    	
	        PreparedStatement ps=con.prepareStatement(  
	"insert into bookinghall(bookingdate,bookingtime,bookingdescription,bookingestimatecapacity,bookingprice,staffid,bookingid) values(?,?,?,?,?,?,?)"); 
	        ps.setString(1,b.getBookingdate());
	        ps.setString(2,b.getBookingtime());
	        ps.setString(3,b.getBookingdescription());
	        ps.setInt(4,b.getBookingestimatecapacity());
	        ps.setInt(5,b.getBookingprice());
	        ps.setInt(6,b.getStaffid());
	        ps.setInt(7,latestId + 1);
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}
	
	public static List<Booking> getAllRecords(){  
	    List<Booking> list=new ArrayList<Booking>();  
	      
	    try{  
	    	con = Database_Connection.getConnection() ; 
	        PreparedStatement ps=con.prepareStatement("select * from bookinghall ORDER BY bookingid");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	Booking b=new Booking();  
	        	b.setBookingid(rs.getInt("bookingid"));
	        	b.setBookingdescription(rs.getString("bookingdescription"));
	        	b.setBookingdate(rs.getString("bookingdate"));
	            b.setBookingtime(rs.getString("bookingtime"));
	            list.add(b);  
	            
	            PreparedStatement getstaffps=con.prepareStatement("SELECT * FROM staff where staffid=?");  
	            getstaffps.setInt(1,rs.getInt("staffid"));  
		        ResultSet getstaffrs=getstaffps.executeQuery();  
		        while(getstaffrs.next()){
		              b.setStaffName(getstaffrs.getString("staffname"));
		        }
	            
	            PreparedStatement getcustps=con.prepareStatement("SELECT * FROM customer where custid=?");  
	            getcustps.setInt(1,rs.getInt("custid"));  
		        ResultSet getcustrs=getcustps.executeQuery();  
		        while(getcustrs.next()){
		        	b.setCustName(getcustrs.getString("custname"));
		        }
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}
	public static Booking getRecordById(int bookingid){  
		Booking b=null;  
	    try{  
	    	con = Database_Connection.getConnection() ;  
	        PreparedStatement ps=con.prepareStatement("select * from bookinghall where bookingid=?");  
	        ps.setInt(1,bookingid);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            b=new Booking();   
	            b.setBookingid(rs.getInt("bookingid"));
	        	b.setBookingdate(rs.getString("bookingdate"));
	            b.setBookingtime(rs.getString("bookingtime"));
	            b.setBookingdescription(rs.getString("bookingdescription"));
	            b.setBookingestimatecapacity(rs.getInt("bookingestimatecapacity"));
	            b.setBookingprice(rs.getInt("bookingprice"));
	            b.setCustid(rs.getInt("custid"));
	            b.setStaffid(rs.getInt("staffid"));
	            
	            PreparedStatement getstaffps=con.prepareStatement("SELECT * FROM staff where staffid=?");  
	            getstaffps.setInt(1,rs.getInt("staffid"));  
		        ResultSet getstaffrs=getstaffps.executeQuery();  
		        if (getstaffrs.next()){
		              b.setStaffName(getstaffrs.getString("staffname"));
		        } else {
		        	b.setStaffName("-");
		        }
	            
	            PreparedStatement getcustps=con.prepareStatement("SELECT * FROM customer where custid=?");  
	            getcustps.setInt(1,rs.getInt("custid"));  
		        ResultSet getcustrs=getcustps.executeQuery();  
		        if (getcustrs.next()){
		        	b.setCustName(getcustrs.getString("custname"));
		        } else {
		        	b.setCustName("-");
		        }
	              
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return b;  
	}

}
