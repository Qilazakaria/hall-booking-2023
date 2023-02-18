//package Servlet;
//
//import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.*;
//
//import Model.Customer;
//
//import DAO.Customer_DAO;
//
//@WebServlet("/CustomerRegistrationProcess")
//public class CustomerRegistrationProcess extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//	private Customer_DAO customerdao;
//	HttpSession session;
//	
//    public CustomerRegistrationProcess() {
//        super();
//        customerdao = new Customer_DAO();
//    }
// 
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		Customer customer_info = new Customer();
//		session = request.getSession(true);
//		
//		customer_info.setCustemail(request.getParameter("username"));
//		customer_info.setCustpass(request.getParameter("password"));
//		
//		String new_customer = customerdao.addcustomer(customer_info);
//		
////		if(customer_login.isLoginstatus() == true) {
//			response.sendRedirect("AdminMainPage.jsp");
//		}
//		else {
//			System.out.println("login failed");
//			response.sendRedirect("CustomerLogin.jsp");
//		}
//	}
//}