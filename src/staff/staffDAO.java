package staff;

import java.sql.*;  
import java.util.ArrayList;
import java.util.List;

import Database.Database_Connection;

public class staffDAO {
	private static Connection con = null;
//	private static PreparedStatement ps = null;
//	private static Statement stmt = null;
//	private static ResultSet rs = null;
//	private static String sql;
		
	public static int save(Staff newStaff){  
	    int status = 0;
	    int latestId = 0;
	    
	    try {  
	    	con = Database_Connection.getConnection();
	    	
	    	// get latest ID
	    	PreparedStatement psGet = con.prepareStatement("SELECT * FROM staff ORDER BY staffid DESC LIMIT 1");
	        ResultSet rsGet = psGet.executeQuery();
	        
	        while(rsGet.next()) {  
	        	latestId = rsGet.getInt("staffid");
	        }
	    	
	        PreparedStatement ps = con.prepareStatement("INSERT INTO staff(staffname, staffemail, staffhomeno, staffaddress, staffcity, staffposcode, staffstate, staffpass, stafftelnum, adminid, staffid) values(?,?,?,?,?,?,?,?,?,?,?)"); 
	        
	        ps.setString(1, newStaff.getStaffname());
	        ps.setString(2, newStaff.getStaffemail());
	        ps.setInt(3, newStaff.getStaffhomeno());
	        ps.setString(4, newStaff.getStaffaddress());
	        ps.setString(5, newStaff.getStaffcity());
	        ps.setInt(6, newStaff.getStaffposcode());
	        ps.setString(7, newStaff.getStaffstate());
	        ps.setString(8, newStaff.getStaffpass());  
	        ps.setString(9, newStaff.getStafftelnum());  
	        ps.setInt(10, newStaff.getAdminid()); 
	        ps.setInt(11, latestId + 1);
	        
	        status = ps.executeUpdate();	        
	    } catch(Exception e) {
	    	e.printStackTrace();
	    } 
	    
	    return status;  
	}
	
	
	public static int update(Staff s){  
	    int status = 0;
	    
	    try {  
	    	con = Database_Connection.getConnection() ;
	        PreparedStatement ps = con.prepareStatement("UPDATE staff SET staffname=?, staffemail=?, staffhomeno=?, staffaddress=?, staffcity=?, staffposcode=?, staffstate=?, staffpass=?, stafftelnum=?, adminid=? where staffid=?");  
	        
	        ps.setString(1,s.getStaffname());
	        ps.setString(2,s.getStaffemail());
	        ps.setInt(3,s.getStaffhomeno());
	        ps.setString(4,s.getStaffaddress());
	        ps.setString(5,s.getStaffcity());
	        ps.setInt(6,s.getStaffposcode());
	        ps.setString(7,s.getStaffstate());
	        ps.setString(8,s.getStaffpass());  
	        ps.setString(9,s.getStafftelnum());  
	        ps.setInt(10,s.getAdminid());
	        ps.setInt(11,s.getStaffid());
	        
	        status = ps.executeUpdate();
	        
	    } catch(Exception e) {
	    	e.printStackTrace();
	    }
	    
	    return status;  
	}
	
	public static int delete(Staff s){  
	    int status=0;  
	    try{  
	    	con = Database_Connection.getConnection() ; 
	        PreparedStatement ps=con.prepareStatement("delete from staff where staffid=?");  
	        ps.setInt(1,s.getStaffid());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	} 
	public static List<Staff> getAllRecords(){  
	    List<Staff> list=new ArrayList<Staff>();  
	      
	    try{  
	    	con = Database_Connection.getConnection() ; 
	        PreparedStatement ps=con.prepareStatement("select * from staff ORDER BY staffid");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	Staff s=new Staff();  
	        	s.setStaffid(rs.getInt("staffid"));
	        	s.setStaffname(rs.getString("staffname"));
	            s.setStaffemail(rs.getString("staffemail"));
	            s.setStaffhomeno(rs.getInt("staffhomeno"));
	            s.setStaffaddress(rs.getString("staffaddress"));
	            s.setStaffcity(rs.getString("staffcity"));
	            s.setStaffposcode(rs.getInt("staffposcode"));
	            s.setStaffstate(rs.getString("staffstate"));
	            s.setStaffpass(rs.getString("staffpass")); 
	            s.setStafftelnum(rs.getString("stafftelnum"));
	            s.setAdminid(rs.getInt("adminid"));   
	            list.add(s);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}
	public static Staff getRecordById(int staffid){  
		Staff s=null;  
	    try{  
	    	con = Database_Connection.getConnection() ;  
	        PreparedStatement ps=con.prepareStatement("select * from staff where staffid=?");  
	        ps.setInt(1,staffid);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            s=new Staff();   
	            s.setStaffid(rs.getInt("staffid"));
	            s.setStaffname(rs.getString("staffname"));
	            s.setStaffemail(rs.getString("staffemail"));
	            s.setStaffhomeno(rs.getInt("staffhomeno"));
	            s.setStaffaddress(rs.getString("staffaddress"));
	            s.setStaffcity(rs.getString("staffcity"));
	            s.setStaffposcode(rs.getInt("staffposcode"));
	            s.setStaffstate(rs.getString("staffstate"));
	            s.setStaffpass(rs.getString("staffpass")); 
	            s.setStafftelnum(rs.getString("stafftelnum"));
	            s.setAdminid(rs.getInt("adminid"));    
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return s;  
	}

}
