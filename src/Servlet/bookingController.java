package Servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.bookingDao;
import Model.booking;
import java.io.IOException;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Servlet implementation class OrdersController
 */
@WebServlet ("/bookingController")
public class bookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String action="", forward="";
	private static String LIST ="staffListBooking.jsp";
	private static String VIEW ="staffViewBooking.jsp";
	private bookingDao dao;
	 	private int bookingID;
	    private Date bookingDate;
	    private Time bookingTime;
	    private String bookingDescription;
	    private int bookingEstimateCapacity;
	    private float bookingPrice;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public bookingController() {
		super();
		dao = new bookingDao();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		action = request.getParameter("action");}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date date1;
		
		try {
			booking booking = new booking();
			date1 = formatter.parse(request.getParameter("bookingDate"));

			//retrieve from HTML and set the values
			booking.setBookingID(Integer.parseInt(request.getParameter("bookingID")));
			booking.setBookingDate(date1);
			String bookingTimeStr = request.getParameter("bookingTime");
			SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss");
			Time bookingTime = new Time(format.parse(bookingTimeStr).getTime());
			booking.setBookingTime(bookingTime);
			booking.setBookingDescription(request.getParameter("bookingDescription"));
			booking.setBookingEstimateCapacity(Integer.parseInt(request.getParameter("bookingEstimateCapacity")));
			booking.setBookingPrice(Float.parseFloat(request.getParameter("bookingPrice")));
			

			
			String bookingID = request.getParameter("bookingID");
			
			if(bookingID == null || bookingID.isEmpty()) {
				dao.addBooking(booking);
			}
			
			//set attribute to a servlet request and call getBooking() method
			request.setAttribute("booking", bookingDao.getAllRecords());
			
		}catch(Exception e) {
			e.printStackTrace();
		}

		
		
		//forward the request to ListVehicle.jsp
		forward = LIST;
		RequestDispatcher LIST = request.getRequestDispatcher("staffListBooking.jsp");
		LIST.forward(request, response);
		
	}
}
