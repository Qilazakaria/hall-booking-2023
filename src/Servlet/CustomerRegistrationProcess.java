package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import DAO.CustomersDAO;
import Model.Customers;

@WebServlet("/CustomerRegistrationProcess")
public class CustomerRegistrationProcess extends HttpServlet {
	private static final long serialVersionUID = 1L; 
	private CustomersDAO customersDAO;
	
    public CustomerRegistrationProcess() {
        super();
        customersDAO = new CustomersDAO();
    }
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Customers customer = new Customers();

			customer.setCustidentificationcard(request.getParameter("custidentificationcard"));
			customer.setCustname(request.getParameter("custname"));
			customer.setCusttelnum(request.getParameter("custtelnum"));
			customer.setCusthomeno(Integer.parseInt(request.getParameter("custhomeno")));
			customer.setCustaddress(request.getParameter("custaddress"));
			customer.setCustcity(request.getParameter("custcity"));
			customer.setCustpostcode(Integer.parseInt(request.getParameter("custpostcode")));
			customer.setCuststate(request.getParameter("custstate"));
			customer.setCustemail(request.getParameter("custemail"));
			customer.setCustpass(request.getParameter("custpass"));

			customersDAO.addCustomer(customer);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		response.sendRedirect("CustomerLogin.jsp");
	}
}