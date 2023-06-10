package Servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Servicer.servicerDAO;

@WebServlet("/ServicerController")
public class ServicerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private servicerDAO servicerDAO;
	
	public ServicerController() {
		servicerDAO = new servicerDAO();
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int deleteStatus = 0;
		
		try {
			deleteStatus = servicerDAO.delete(Integer.parseInt(request.getParameter("servicerid")));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (deleteStatus == 1) {
			response.sendRedirect("ServicerView.jsp?status=SUCCESS");
		} else {
			response.sendRedirect("ServicerView.jsp?status=FAIL");
		}
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
	}
}