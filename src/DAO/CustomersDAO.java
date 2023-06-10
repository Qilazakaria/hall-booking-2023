package DAO;

import java.sql.*;
import java.util.*;
import java.util.Date;
import java.text.SimpleDateFormat;
import Database.Database_Connection;
import Model.Customers;

public class CustomersDAO {
	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static String sql;
	private int custid;
	private String custidentificationcard;
	private String custname;
	private String custtelnum;
	private int custhomeno;
	private String custaddress;
	private String custcity;
	private int custpostcode;
	private String custstate;
	private String custemail;
	private String custpass;

	//Complete getCustomer() method
	public static Customers getCustomer(int custid) { 
		Customers customer = new Customers();
		try {
			//call getConnection() method
			con = Database_Connection.getConnection() ;

			//create statement
			ps = con.prepareStatement("SELECT * FROM customer WHERE custid=?");
			ps.setInt(1, custid);

			//execute query
			rs = ps.executeQuery();
			if(rs.next()) {
				customer.setCustid(rs.getInt("custid"));
				customer.setCustidentificationcard(rs.getString("custidentificationcard"));
				customer.setCustname(rs.getString("custname"));
				customer.setCusttelnum(rs.getString("custtelnum"));
				customer.setCusthomeno(rs.getInt("custhomeno"));
				customer.setCustaddress(rs.getString("custaddress"));
				customer.setCustcity(rs.getString("custcity"));
				customer.setCustpostcode(rs.getInt("custpostcode"));
				customer.setCuststate(rs.getString("custstate"));
				customer.setCustemail(rs.getString("custemail"));
				customer.setCustpass(rs.getString("custpass"));
			}
			
			//close connection
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return customer; 
	}

	//Complete addCustomer() method
	public int addCustomer(Customers bean) {
		int addStatus = 0;
		int latestId = 0;
		//get values
		custidentificationcard = bean.getCustidentificationcard();
		custname= bean.getCustname();
		custtelnum = bean.getCusttelnum();
		custhomeno= bean.getCusthomeno();
		custaddress = bean.getCustaddress();
		custcity = bean.getCustcity();
		custpostcode = bean.getCustpostcode();
		custstate = bean.getCuststate();
		custemail = bean.getCustemail();
		custpass = bean.getCustpass();


		try {			
	        //call getConnection() method
   con = Database_Connection.getConnection() ;
   
   // get latest ID
      PreparedStatement psGet = con.prepareStatement("SELECT * FROM customer ORDER BY custid DESC LIMIT 1");
         ResultSet rsGet = psGet.executeQuery();
         
         while(rsGet.next()) {  
          latestId = rsGet.getInt("custid");
         }
			//create statement
			ps = con.prepareStatement("INSERT INTO customer(custidentificationcard,custname,custtelnum,custhomeno,custaddress,custcity,custpostcode,custstate,custemail,custpass,custid)VALUES(?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, custidentificationcard);
			ps.setString(2, custname);
			ps.setString(3, custtelnum);
			ps.setInt(4, custhomeno);
			ps.setString(5, custaddress);
			ps.setString(6, custcity);
			ps.setInt(7, custpostcode);
			ps.setString(8, custstate);
			ps.setString(9, custemail);
			ps.setString(10, custpass);
			ps.setInt(11, latestId + 1);
			
			
			//execute query
			addStatus = ps.executeUpdate();
			System.out.println("Successfully inserted");

			//close connection
			con.close();
			

		}catch(Exception e) {
			e.printStackTrace();				
		}
		
		return addStatus;
	}	

	//Complete deleteCustomer() method
		public int deleteCustomer(int custid) {
			int deleteStatus = 0;
			try {
				//call getConnection() method 
				con = Database_Connection.getConnection() ;

	           //create statement
				ps = con.prepareStatement("DELETE FROM customer WHERE custid=?");
				ps.setInt(1, custid);

	           //execute query
				deleteStatus = ps.executeUpdate();
				
	           //close connection
				con.close();


	           }catch(Exception e) {
				e.printStackTrace();
			}
			return deleteStatus;
		}
	
	 

	//Complete getAllCustomer() method
	public static List<Customers> getAllCustomer() { 
		List<Customers> customers = new ArrayList<Customers>(); 
		try { 
			//call getConnection() method
			con = Database_Connection.getConnection() ;

			//create statement
			stmt = con.createStatement();
			String sql = "SELECT * FROM customer ORDER BY custid";

			//execute query
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				Customers customer = new Customers();
				customer.setCustid(rs.getInt("custid"));
				customer.setCustidentificationcard(rs.getString("custidentificationcard"));
				customer.setCustname(rs.getString("custname"));
				customer.setCusttelnum(rs.getString("custtelnum"));
				customer.setCusthomeno(rs.getInt("custhomeno"));
				customer.setCustaddress(rs.getString("custaddress"));
				customer.setCustcity(rs.getString("custcity"));
				customer.setCustpostcode(rs.getInt("custpostcode"));
				customer.setCuststate(rs.getString("custstate"));
				customer.setCustemail(rs.getString("custemail"));
				customer.setCustpass(rs.getString("custpass"));
				customers.add(customer);
			}

			//close connection
			con.close();

		} catch (Exception e) { 
			e.printStackTrace(); 
		}

		return customers; 
	}
	
	//update 
	
		public int updateCustomer(Customers bean) {
			int updateStatus = 0;
			custid = bean.getCustid();
			custtelnum = bean.getCusttelnum();
			custhomeno= bean.getCusthomeno();
			custaddress = bean.getCustaddress();
			custcity = bean.getCustcity();
			custpostcode = bean.getCustpostcode();
			custstate = bean.getCuststate();
			custemail = bean.getCustemail();
			custpass = bean.getCustpass();
			
			/* java.sql.Date rtdate = new java.sql.Date(vec_rtdate.getTime()); */
			
			try {			
				//call getConnection() method
				con = Database_Connection.getConnection() ;
				
				//3. create statement
				ps = con.prepareStatement("UPDATE customer SET custtelnum=?,custhomeno=?,custaddress=?,custcity=?,custpostcode=?,custstate=?,custemail=?,custpass=?,custidentificationcard=?,custname=? WHERE custid=?");
				ps.setString(1, custtelnum);
				ps.setInt(2, custhomeno);
				ps.setString(3, custaddress);
				ps.setString(4, custcity);
				ps.setInt(5, custpostcode);
				ps.setString(6, custstate);
				ps.setString(7, custemail);
				ps.setString(8, custpass);
				ps.setString(9, bean.getCustidentificationcard());
				ps.setString(10, bean.getCustname());
				ps.setInt(11, custid);
				
				//4. execute query
				updateStatus = ps.executeUpdate();
				
				System.out.println("Successfully updated");
				
				//5. close connection
				con.close();
				
			}catch(Exception e) {
				e.printStackTrace();
				
			}
			
			return updateStatus;
		}

}
