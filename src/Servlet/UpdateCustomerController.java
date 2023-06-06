package Servlet;

import java.io.IOException;
import java.text.ParseException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.CustomersDAO;
import Model.Customers;

@WebServlet("/UpdateCustomerController")
public class UpdateCustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CustomersDAO dao;    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCustomerController() {
        super();
        dao = new CustomersDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int custid = Integer.parseInt(request.getParameter("custid"));
		request.setAttribute("customer", CustomersDAO.getCustomer(custid));
		RequestDispatcher view = request.getRequestDispatcher("UpdateCustomer.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Customers c = new Customers();
		c.setCustid(Integer.parseInt(request.getParameter("custid")));
		c.setCusttelnum(request.getParameter("custtelnum"));
		c.setCusthomeno(Integer.parseInt(request.getParameter("custhomeno")));
		c.setCustaddress(request.getParameter("custaddress"));
		c.setCustcity(request.getParameter("custcity"));
		c.setCustpostcode(Integer.parseInt(request.getParameter("custpostcode")));
		c.setCuststate(request.getParameter("custstate"));
		c.setCustemail(request.getParameter("custemail"));
		c.setCustpass(request.getParameter("custpass"));	
		
		dao.updateCustomer(c); 
		
		request.setAttribute("customers", CustomersDAO.getAllCustomer());
		RequestDispatcher view = request.getRequestDispatcher("ListCustomer.jsp");
		view.forward(request, response);
	}

}

