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
	"insert into servicer(servicername,servicertelno,servicerhomeno,serviceraddress,servicercity,servicerpostcode,servicerstate) values(?,?,?,?,?,?,?)"); 
	        ps.setString(1,se.getServicername());
	        ps.setString(2,se.getServicertelno());  
	        ps.setInt(3,se.getServicerhomeno());
	        ps.setString(4,se.getServiceraddress());
	        ps.setString(5,se.getServicercity());
	        ps.setInt(6,se.getServicerpostcode());
	        ps.setString(7,se.getServicerstate()); 
  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}
	
	public static int update(servicer se){  
	    int status=0;  
	    try{  
	    	con = Database_Connection.getConnection() ;  
	        PreparedStatement ps=con.prepareStatement(  
	"update servicer set servicername=?,servicertelno=?,servicerhomeno=?,serviceraddress=?,servicercity=?,servicerpostcode=?,servicerstate=? where servicerid=?");  
	        ps.setString(1,se.getServicername());
	        ps.setString(2,se.getServicertelno());
	        ps.setInt(3,se.getServicerhomeno());
	        ps.setString(4,se.getServiceraddress());
	        ps.setString(5,se.getServicercity());
	        ps.setInt(6,se.getServicerpostcode());
	        ps.setString(7,se.getServicerstate());
	        ps.setInt(8,se.getServicerid());
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
