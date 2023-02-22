package Servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.CustomersDAO;
import Model.Customers;
import java.io.IOException;

//@WebServlet ("/CustomerController")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String action="", forward="";
	private static String LIST ="ListCustomer.jsp";
	private static String VIEW ="ViewCustomer.jsp";
	private static String UPDATE ="UpdateCustomer.jsp";
	private CustomersDAO dao;
	private int custid;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CustomerController() {
		super();
		dao = new CustomersDAO();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		action = request.getParameter("action");

		//Complete action for view asset
		if(action.equalsIgnoreCase("view")) {
			forward = VIEW;
			int custid = Integer.parseInt(request.getParameter("custid"));
			request.setAttribute("customer", CustomersDAO.getCustomer(custid));
		}
		
		//Complete action for list order
		// for all order have been inserted
		if(action.equalsIgnoreCase("list")) {
			forward = LIST;
			request.setAttribute("customers", CustomersDAO.getAllCustomer());
		}

		
		 //Complete action for delete order 
		 if(action.equalsIgnoreCase("delete")) {
			 forward = LIST; int custid = Integer.parseInt(request.getParameter("custid")); dao.deleteCustomer(custid);
			 request.setAttribute("customers", CustomersDAO.getAllCustomer());
			 RequestDispatcher view = request.getRequestDispatcher("ListCustomer.jsp"); 
			 }

		//forward the request
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		 * SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		 * java.util.Date date1;
		 */
		
		try {
			Customers customer = new Customers();
			/* date1 = formatter.parse(request.getParameter("vec_rtdate")); */

			//retrieve from HTML and set the values
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
			

			//invoke method addAssets() in AssetsDAO
			String custid = request.getParameter("custid");
			
			if(custid == null || custid.isEmpty()) {
				dao.addCustomer(customer);
			}
			
			//set attribute to a servlet request and call getAllAssets() method
			request.setAttribute("customers", CustomersDAO.getAllCustomer());
			
		}catch(Exception e) {
			e.printStackTrace();
		}

		
		
		//forward the request to ListVehicle.jsp
		forward = LIST;
		RequestDispatcher LIST = request.getRequestDispatcher("ListCustomer.jsp");
		LIST.forward(request, response);
		
	}
}

