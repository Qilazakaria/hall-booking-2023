package Servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import staff.Staff;
import staff.staffDAO;

@WebServlet("/StaffController")
public class StaffController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private staffDAO staffDAO;
	
	public StaffController() {
		staffDAO = new staffDAO();
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		System.out.print("test");
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Staff newStaff = new Staff();
		int addStatus = 0;
		
		try {
			newStaff.setStaffemail(request.getParameter("staffemail"));
			newStaff.setStaffpass(request.getParameter("staffpass"));
			newStaff.setStaffname(request.getParameter("staffname"));
			newStaff.setStafftelnum(request.getParameter("stafftelnum"));
			newStaff.setStaffhomeno(Integer.parseInt(request.getParameter("staffhomeno")));
			newStaff.setStaffaddress(request.getParameter("staffaddress"));
			newStaff.setStaffcity(request.getParameter("staffcity"));
			newStaff.setStaffposcode(Integer.parseInt(request.getParameter("staffposcode")));
			newStaff.setStaffstate(request.getParameter("staffstate"));
			newStaff.setAdminid(Integer.parseInt(request.getParameter("adminid")));
			
			addStatus = staffDAO.save(newStaff);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (addStatus == 1) {
			response.sendRedirect("StaffView.jsp?status=SUCCESS&loginID=" + request.getParameter("currentid"));
		} else {
			response.sendRedirect("StaffView.jsp?status=FAIL&loginID=" + request.getParameter("currentid"));
		}
	}
}