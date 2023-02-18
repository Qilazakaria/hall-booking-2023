package Registeration;
import java.sql.*;
import org.postgresql.Driver;
import java.util.ArrayList;  
import java.util.List;  

public class RegisterDAO {
	  
	private static final String DB_DRIVER = "org.postgresql.Driver";
	  private static final String DB_CONNECTION = "jdbc:postgresql://ec2-34-194-73-236.compute-1.amazonaws.com:5432/dh6jb4b8j0cp6";
	  private static final String DB_USERNAME = "pasbivpbrzrvtt";
	  private static final String DB_PASSWORD = "3ca4c3f0167b8137b7bf38383ee29075f8df3b5c7e87a6cfc1859391d7ff89bd";

	  public static Connection getConnection(){  
	    Connection con = null;  
	    try {  
	      DriverManager.registerDriver(new Driver());
	      con = DriverManager.getConnection(DB_CONNECTION, DB_USERNAME, DB_PASSWORD);  
	    } catch(Exception e) {
	      System.out.println(e);
	    }  
	    return con;  
	  }  
	  public static int save(RegisterModel r){  
		    int status = 0;
		    try (Connection con = getConnection();
		         PreparedStatement ps = con.prepareStatement("INSERT INTO customer(custid,custidentificationcard,custpostcode,custname,custtelnum,custhomeno,custaddress,custcity,custstate,custemail,custpass) values(?,?,?,?,?,?,?,?,?,?,?)")) {
		        ps.setInt(1, r.getCustid());
		        ps.setInt(2, r.getCustidentificationcard());
		        ps.setInt(3, r.getCustpostcode());
		        ps.setString(4, r.getCustname());
		        ps.setString(5, r.getCusttelnum());
		        ps.setString(6, r.getCusthomeno());
		        ps.setString(7, r.getCustaddress());
		        ps.setString(8, r.getCustcity());
		        ps.setString(9, r.getCuststate());
		        ps.setString(10, r.getCustemail());
		        ps.setString(11, r.getCustpass()); 
		        status = ps.executeUpdate();  
		    } catch(Exception e) {
		        System.out.println(e);
		    }  
		    return status;  
		}  
}