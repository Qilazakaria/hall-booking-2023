package DAO;

import java.sql.*;
import java.util.*;

import Database.Database_Connection;
import Model.Customer;

public class Customer_DAO {
	private static Connection connect = null;
	private static PreparedStatement ps = null;
	private int custidentificationcard,custpostcode,custid; 
	
	static String custname,custtelnum,custhomeno,custaddress,custcity,custstate,custemail,custpass; 
	
	public static Customer logincustomer(Customer login_customer) {
		custemail = login_customer.getCustemail();
		custpass = login_customer.getCustpass();
		
		try {
			connect = Database_Connection.getConnection();
			ps = connect.prepareStatement("SELECT * FROM customer WHERE custemail = ?");
			ps.setString(1, custemail);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				ps = connect.prepareStatement("SELECT * FROM customer WHERE custemail = ? AND custpass = ?");
				ps.setString(1, custemail);
				ps.setString(2, custpass);
				
				ResultSet sec_rs = ps.executeQuery();
				
				if(sec_rs.next()) {
					System.out.println("Connection Success");
					login_customer.setLoginstatus(true);
				}
				else {
					System.out.println("Wrong ID and password combination");
					login_customer.setLoginstatus(false);
				}
			}
			else {
				System.out.println("ID number not exist");
				login_customer.setLoginstatus(false);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return login_customer;
	}
	
	public String addcustomer(Customer new_customer) {
		String status = null;
		
		custid = new_customer.getCustid();
		custidentificationcard = new_customer.getCustidentificationcard();
		custpostcode = new_customer.getCustpostcode();
		custname = new_customer.getCustname();
		custtelnum = new_customer.getCusttelnum();
		custhomeno = new_customer.getCusthomeno();
		custaddress = new_customer.getCustaddress();
		custcity = new_customer.getCustcity();
		custstate = new_customer.getCuststate();
		custemail = new_customer.getCustemail();
		custpass = new_customer.getCustpass();
		
		try {
			connect = Database_Connection.getConnection();
			
				ps = connect.prepareStatement("INSERT INTO customer INSERT INTO customer(custid,custidentificationcard,custpostcode,custname,custtelnum,custhomeno,custaddress,custcity,custstate,custemail,custpass) values(?,?,?,?,?,?,?,?,?,?,?)");
				ps.setInt(1, custid);
				ps.setInt(2, custidentificationcard);
				ps.setInt(3, custpostcode);
				ps.setString(4, custname);
				ps.setString(5, custtelnum);
				ps.setString(6, custhomeno);
				ps.setString(7, custaddress);
				ps.setString(8, custcity);
				ps.setString(9, custstate);
				ps.setString(10, custemail);
				ps.setString(11, custpass);
				
				ps.execute();
				status = "Successfully added";
			
			connect.close();
		}
		catch(Exception e) {
			e.printStackTrace();
			status = "Unsuccessfully added";
		}
		return status;
}
	public String updatecustomer(Customer update_customer) {
		String status = null;
		
//		staff_idnum = update_staff.getStaff_idnum();
//		staff_password = update_staff.getStaff_password();
//		staff_name = update_staff.getStaff_name();
//		staff_phonenum = update_staff.getStaff_phonenum();
//		staff_email = update_staff.getStaff_email();
//		department_idnum = update_staff.getDepartment_idnum();
//		staff_level = update_staff.getStaff_level();
//		
//		try {
//			connect = Database_Connection.getConnection();
//			ps = connect.prepareStatement("UPDATE staff SET staff_password = ?, staff_name = ?, staff_phonenum = ?, staff_email = ?, department_idnum = ?, staff_level = ? WHERE staff_idnum = ?");
//			ps.setString(1, staff_password);
//			ps.setString(2, staff_name);
//			ps.setString(3, staff_phonenum);
//			ps.setString(4, staff_email);
//			ps.setString(5, department_idnum);
//			ps.setString(6, staff_level);
//			ps.setString(7, staff_idnum);
//			
//			ps.execute();
//			status = "Successfully updated";
//			connect.close();
//		}
//		catch(Exception e) {
//			e.printStackTrace();
//			status = "Unsuccessfully updated";
//		}
		return status;
	}
	
	public String deletecustomer(String delete_custid) {
		String status = null;
		try {
			connect = Database_Connection.getConnection();
			ps = connect.prepareStatement("DELETE FROM customer WHERE custid = ?");
			ps.setString(1, delete_custid);
			
			ps.execute();
			status = "Successfully deleted";
			connect.close();
		}
		catch(Exception e) {
			e.printStackTrace();
			status = "Unsuccessfully deleted";
		}
		return status;
	}
	
	public static List<Customer> viewcustomerlist() {
		List<Customer> staff_list = new ArrayList<Customer>();
		
//		try {
//			connect = Database_Connection.getConnection();
//			ps = connect.prepareStatement("SELECT * FROM staff S LEFT JOIN department D ON S.department_idnum = D.department_idnum");
//			
//			ResultSet rs = ps.executeQuery();
//			
//			while(rs.next()) {
//				Staff staff_info = new Staff();
//				
//				staff_info.setStaff_idnum(rs.getString("staff_idnum"));
//				staff_info.setStaff_password(rs.getString("staff_password"));
//				staff_info.setStaff_name(rs.getString("staff_name"));
//				staff_info.setStaff_phonenum(rs.getString("staff_phonenum"));
//				staff_info.setStaff_email(rs.getString("staff_email"));
//				staff_info.setDepartment_idnum(rs.getString("department_idnum"));
//				staff_info.setStaff_level(rs.getString("staff_level"));
//				staff_info.setDepartment(Department_DAO.viewdepartment(rs.getString("department_idnum")));
//				
//				staff_list.add(staff_info);
//			}
//			connect.close();
//		}
//		catch(Exception e) {
//			e.printStackTrace();
//		}
		return staff_list;
	}
	
	public static Customer viewcustomer(String view_custid) {
		Customer customer_info = new Customer();

//		try {
//			connect = Database_Connection.getConnection();
//			ps = connect.prepareStatement("SELECT * FROM staff WHERE staff_idnum = ?");
//			ps.setString(1, view_idnum);
//			
//			ResultSet rs = ps.executeQuery();
//			
//			while(rs.next()) {
//				staff_info.setStaff_idnum(rs.getString("staff_idnum"));
//				staff_info.setStaff_password(rs.getString("staff_password"));
//				staff_info.setStaff_name(rs.getString("staff_name"));
//				staff_info.setStaff_phonenum(rs.getString("staff_phonenum"));
//				staff_info.setStaff_email(rs.getString("staff_email"));
//				staff_info.setDepartment_idnum(rs.getString("department_idnum"));
//				staff_info.setStaff_level(rs.getString("staff_level"));
//			}
//			connect.close();
//		}
//		catch(Exception e) {
//			e.printStackTrace();
//		}
		return customer_info;
	}
}