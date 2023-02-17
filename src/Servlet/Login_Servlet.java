package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import Model.Staff;

import DAO.Staff_DAO;

@WebServlet("/Login_Servlet")
public class Login_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Staff_DAO staffdao;
	HttpSession session;
	
    public Login_Servlet() {
        super();
        staffdao = new Staff_DAO();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Staff staff_info = new Staff();
		session = request.getSession(true);
		
		staff_info.setStaffemail(request.getParameter("username"));
		staff_info.setStaffpass(request.getParameter("password"));
		
		Staff staff_login = staffdao.loginstaff(staff_info);
		
		if(staff_login.isLoginstatus() == true) {
			response.sendRedirect("AdminMainPage.jsp");
		}
		else {
			System.out.println("login failed");
			response.sendRedirect("index.jsp");
		}
	}
}