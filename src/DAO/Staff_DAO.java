package DAO;

import java.sql.*;
import java.util.*;

import Database.Database_Connection;
import Model.Staff;

public class Staff_DAO {
	private static Connection connect = null;
	private static PreparedStatement ps = null;
	
	static String staffemail, staffpass;
	static String staff_idnum, staff_password, staff_name, staff_phonenum, staff_email, department_idnum, staff_level;
	
	public static Staff loginstaff(Staff login_staff) {
		staffemail = login_staff.getStaffemail();
		staffpass = login_staff.getStaffpass();
		
		try {
			connect = Database_Connection.getConnection();
			ps = connect.prepareStatement("SELECT * FROM staff WHERE staffemail = ?");
			ps.setString(1, staffemail);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				ps = connect.prepareStatement("SELECT * FROM staff WHERE staffemail = ? AND staffpass = ?");
				ps.setString(1, staffemail);
				ps.setString(2, staffpass);
				
				ResultSet sec_rs = ps.executeQuery();
				
				if(sec_rs.next()) {
					System.out.println("Connection Success");
					login_staff.setLoginstatus(true);
				}
				else {
					System.out.println("Wrong ID and password combination");
					login_staff.setLoginstatus(false);
				}
			}
			else {
				System.out.println("ID number not exist");
				login_staff.setLoginstatus(false);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return login_staff;
	}
	
	public String addstaff(Staff new_staff) {
		String status = null;
//		
//		staff_idnum = new_staff.getStaff_idnum();
//		staff_password = new_staff.getStaff_password();
//		staff_name = new_staff.getStaff_name();
//		staff_phonenum = new_staff.getStaff_phonenum();
//		staff_email = new_staff.getStaff_email();
//		department_idnum = new_staff.getDepartment_idnum();
//		staff_level = new_staff.getStaff_level();
//		
//		try {
//			connect = Database_Connection.getConnection();
//			ps = connect.prepareStatement("SELECT * FROM staff WHERE staff_idnum = ?");
//			ps.setString(1, staff_idnum);
//			
//			ResultSet rs = ps.executeQuery();
//			
//			if(rs.next()) {
//				status = "ID number already exist";
//			}
//			else {
//				ps = connect.prepareStatement("INSERT INTO staff (staff_idnum, staff_password, staff_name, staff_phonenum, staff_email, department_idnum, staff_level) VALUES (?, ?, ?, ?, ?, ?, ?)");
//				ps.setString(1, staff_idnum);
//				ps.setString(2, staff_password);
//				ps.setString(3, staff_name);
//				ps.setString(4, staff_phonenum);
//				ps.setString(5, staff_email);
//				ps.setString(6, department_idnum);
//				ps.setString(7, staff_level);
//				
//				ps.execute();
//				status = "Successfully added";
//			}
//			connect.close();
//		}
//		catch(Exception e) {
//			e.printStackTrace();
//			status = "Unsuccessfully added";
//		}
		return status;
	}
	
	public String updatestaff(Staff update_staff) {
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
	
	public String deletestaff(String delete_idnum) {
		String status = null;
		try {
			connect = Database_Connection.getConnection();
			ps = connect.prepareStatement("DELETE FROM staff WHERE staff_idnum = ?");
			ps.setString(1, delete_idnum);
			
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
	
	public static List<Staff> viewstafflist() {
		List<Staff> staff_list = new ArrayList<Staff>();
		
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
	
	public static Staff viewstaff(String view_idnum) {
		Staff staff_info = new Staff();

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
		return staff_info;
	}
}