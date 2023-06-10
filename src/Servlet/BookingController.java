package Servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.bookingDao;

import java.io.IOException;
import booking.bookingDAO;
import Model.booking;
import java.text.SimpleDateFormat;

@WebServlet ("/BookingController")
public class BookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String action="", forward="";
	private static String LIST ="CustomerViewBooking.jsp";
	private static String VIEW ="ViewVehicle.jsp";
	private static String UPDATE ="UpdateVehicle.jsp";
	private bookingDAO dao;
	private bookingDao bookingDao;
	private int bookingid;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingController() {
        super();
        dao = new bookingDAO();
    	bookingDao = new bookingDao();
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				int updateBooking = 0;
				try {
					booking book = new booking();
					book.setBookingid(Integer.parseInt(request.getParameter("bookingid")));
				    book.setBookingprice(Integer.parseInt(request.getParameter("bookingprice")));
				    updateBooking = bookingDao.update(book);
				}catch(Exception e) {
					e.printStackTrace();
				}
				
				if (updateBooking == 1) {
					response.sendRedirect("StaffListBooking.jsp?status=SUCCESS");
				} else {
					response.sendRedirect("StaffListBooking.jsp?status=FAIL");
				}
	}

}
