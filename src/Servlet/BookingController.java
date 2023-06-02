package Servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import booking.bookingDAO;
import Model.booking;
import java.text.SimpleDateFormat;

/**
 * Servlet implementation class CustomerController
 */
@WebServlet ("/BookingController")
public class BookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String action="", forward="";
	private static String LIST ="CustomerViewBooking.jsp";
	private static String VIEW ="ViewVehicle.jsp";
	private static String UPDATE ="UpdateVehicle.jsp";
	private bookingDAO dao;
	private int bookingid;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingController() {
        super();
        dao = new bookingDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		action = request.getParameter("action");
		
		//Complete action for view order
//		if(action.equalsIgnoreCase("view")) {
//			forward = VIEW;
//			int bookingid = Integer.parseInt(request.getParameter("bookingid"));
//			request.setAttribute("book", bookingDao.addBooking(bookingid));
//		} 
		//Complete action for list order
		// for all order have been inserted
		if(action.equalsIgnoreCase("list")) {
			forward = LIST;
			request.setAttribute("list",bookingDAO.getAllRecords());
		}

		//Complete action for delete order
//		if(action.equalsIgnoreCase("delete")) {
//			forward = LIST;
//			int bookingID = Integer.parseInt(request.getParameter("bookingID"));
//			dao.deleteCustomer(bookingID);
//			request.setAttribute("books", BookingDAO.getBookings());
//			RequestDispatcher view = request.getRequestDispatcher("customerViewBooking.jsp");
//		}

		//forward the request
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
				java.util.Date date1;
				
				try {
					booking book = new booking();
					date1 = formatter.parse(request.getParameter("bookingdate"));
//				    int staffID = Integer.parseInt(request.getParameter("staffID"));
//				    int custID = Integer.parseInt(request.getParameter("custID"));
					
					//retrieve from HTML and set the values
				    book.setBookingdate(date1);
				    book.setBookingtime(request.getParameter("bookingtime"));
					book.setBookingdescription(request.getParameter("bookingdescription"));
					book.setBookingestimatecapacity(Integer.parseInt(request.getParameter("bookingestimatecapacity")));
				    book.setBookingprice(Integer.parseInt(request.getParameter("bookingprice")));
//					book.setStaffID(staffID);
//					book.setCustID(custID);
					
//					ps.setString(2, bookingDescription);
//					ps.setInt(3, bookingEstimateCapacity);
//					ps.setInt(4, bookingPrice);

					//invoke method addOrder() in VehiclesDAO
					String bookingid = request.getParameter("bookingid");
					
					if(bookingid == null || bookingid.isEmpty()) {
						//dao.save(boo);
					}
					
					//set attribute to a servlet request and call getVehicles() method
					request.setAttribute("list", bookingDAO.getAllRecords());
					
				}catch(Exception e) {
					e.printStackTrace();
				}

				//forward the request to ListVehicle.jsp
				forward = LIST;
				RequestDispatcher LIST = request.getRequestDispatcher(forward);
				LIST.forward(request, response);
		
	}

}
