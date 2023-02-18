//import Model.Staff;
//
//public String addstaff(Staff new_staff) {
//		String status = null;
////		
////		staff_idnum = new_staff.getStaff_idnum();
////		staff_password = new_staff.getStaff_password();
////		staff_name = new_staff.getStaff_name();
////		staff_phonenum = new_staff.getStaff_phonenum();
////		staff_email = new_staff.getStaff_email();
////		department_idnum = new_staff.getDepartment_idnum();
////		staff_level = new_staff.getStaff_level();
////		
////		try {
////			connect = Database_Connection.getConnection();
////			ps = connect.prepareStatement("SELECT * FROM staff WHERE staff_idnum = ?");
////			ps.setString(1, staff_idnum);
////			
////			ResultSet rs = ps.executeQuery();
////			
////			if(rs.next()) {
////				status = "ID number already exist";
////			}
////			else {
////				ps = connect.prepareStatement("INSERT INTO staff (staff_idnum, staff_password, staff_name, staff_phonenum, staff_email, department_idnum, staff_level) VALUES (?, ?, ?, ?, ?, ?, ?)");
////				ps.setString(1, staff_idnum);
////				ps.setString(2, staff_password);
////				ps.setString(3, staff_name);
////				ps.setString(4, staff_phonenum);
////				ps.setString(5, staff_email);
////				ps.setString(6, department_idnum);
////				ps.setString(7, staff_level);
////				
////				ps.execute();
////				status = "Successfully added";
////			}
////			connect.close();
////		}
////		catch(Exception e) {
////			e.printStackTrace();
////			status = "Unsuccessfully added";
////		}
//		return status;
//	}