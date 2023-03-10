package Servicer;
import java.sql.*;  
import java.util.ArrayList;
import java.util.List;
import Database.Database_Connection;
import Servicer.servicer;


public class servicerDAO {
	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static String sql;
	
	   
	public static int save(servicer se){  
	    int status=0;  
	    try{  
	    	con = Database_Connection.getConnection() ; 
	        PreparedStatement ps=con.prepareStatement(  
	"insert into servicer(servicerid,servicername,servicertelno,servicerhomeno,serviceraddress,servicercity,servicerpostcode,servicerstate) values(?,?,?,?,?,?,?,?)"); 
	        ps.setInt(1,se.getServicerid());
	        ps.setString(2,se.getServicername());
	        ps.setString(3,se.getServicertelno());  
	        ps.setInt(4,se.getServicerhomeno());
	        ps.setString(5,se.getServiceraddress());
	        ps.setString(6,se.getServicercity());
	        ps.setInt(7,se.getServicerpostcode());
	        ps.setString(8,se.getServicerstate()); 

  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}
	
	public static int update(servicer s){  
	    int status=0;  
	    try{  
	    	con = Database_Connection.getConnection() ;  
	        PreparedStatement ps=con.prepareStatement(  
	"update servicer set servicername=?,servicertelno=?,servicerhomeno=?,serviceraddress=?,servicercity=?,servicerpostcode=?,servicerstate=? where servicerid=?");  
	        ps.setString(1,s.getServicername());
	        ps.setString(2,s.getServicertelno());
	        ps.setInt(3,s.getServicerhomeno());
	        ps.setString(4,s.getServiceraddress());
	        ps.setString(5,s.getServicercity());
	        ps.setInt(6,s.getServicerpostcode());
	        ps.setString(7,s.getServicerstate());
	        ps.setInt(8,s.getServicerid());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}
	
	public static List<servicer> getAllRecords(){  
	    List<servicer> list=new ArrayList<servicer>();  
	      
	    try{  
	    	con = Database_Connection.getConnection() ; 
	        PreparedStatement ps=con.prepareStatement("select * from servicer");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	servicer se=new servicer();  
	        	se.setServicerid(rs.getInt("servicerid"));
	        	se.setServicername(rs.getString("servicername"));
	            se.setServicertelno(rs.getString("servicertelno"));
	            se.setServicerhomeno(rs.getInt("servicerhomeno"));
	            se.setServiceraddress(rs.getString("serviceraddress"));
	            se.setServicercity(rs.getString("servicercity"));
	            se.setServicerpostcode(rs.getInt("servicerpostcode"));
	            se.setServicerstate(rs.getString("servicerstate"));   
	            list.add(se);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}
	
	public static servicer getRecordById(int servicerid){  
		servicer se=null;  
	    try{  
	    	con = Database_Connection.getConnection() ;  
	        PreparedStatement ps=con.prepareStatement("select * from servicer where servicerid=?");  
	        ps.setInt(1,servicerid);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            se=new servicer();   
	            se.setServicerid(rs.getInt("servicerid")); 
	        	se.setServicername(rs.getString("servicername"));
	            se.setServicertelno(rs.getString("servicertelno"));
	            se.setServicerhomeno(rs.getInt("servicerhomeno"));
	            se.setServiceraddress(rs.getString("serviceraddress"));
	            se.setServicercity(rs.getString("servicercity"));
	            se.setServicerpostcode(rs.getInt("servicerpostcode"));
	            se.setServicerstate(rs.getString("servicerstate"));   
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return se;  
	}
	
}
