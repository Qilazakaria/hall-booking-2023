package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import Model.Staff;

import DAO.Staff_DAO;

@WebServlet("/Update_Account_Servlet")
public class Update_Account_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Staff_DAO staffdao;
	HttpSession session;
	
    public Update_Account_Servlet() {
        super();
        staffdao = new Staff_DAO();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Staff staff_info = new Staff();
		session = request.getSession(true);
		
//		staff_info.setStaff_idnum(request.getParameter("staff_idnum"));
//		staff_info.setStaff_password(request.getParameter("staff_password"));
//		staff_info.setStaff_name(request.getParameter("staff_name"));
//		staff_info.setStaff_level(request.getParameter("staff_level"));
//		
//		if(request.getParameter("staff_phonenum") != "") {
//			staff_info.setStaff_phonenum(request.getParameter("staff_phonenum"));
//		}
//		if(request.getParameter("staff_email") != "") {
//			staff_info.setStaff_email(request.getParameter("staff_email"));
//		}
//		if(request.getParameter("department_idnum") != "") {
//			staff_info.setDepartment_idnum(request.getParameter("department_idnum"));
//		}
		
		session.setAttribute("session_status", staffdao.updatestaff(staff_info));
		response.sendRedirect("Redirect_Servlet?action=account&id=" + request.getParameter("staff_idnum"));
	}
}