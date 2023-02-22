package DAO;

import java.sql.*;
import java.util.*;
import java.util.Date;
import java.text.SimpleDateFormat;
import Database.Database_Connection;
import Model.booking;
import Model.Customer;

public class bookingDao {
	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static String sql;
	private int bookingid; 
	private Date bookingdate;
	private String bookingtime;
	private String bookingdescription;
	private int bookingestimatecapacity;
	private int bookingprice;
	private int staffid;
	private int custid;
	
	//Complete getVehicle() method
		public static booking getBooking(int bookingid) { 
			booking book = new booking();
			try {
				//call getConnection() method
				con = Database_Connection.getConnection();

				//create statement
				ps = con.prepareStatement("SELECT * FROM bookinghall WHERE bookingid=?");
				ps.setInt(1, bookingid);

				//execute query
				rs = ps.executeQuery();
				if(rs.next()) {
					book.setBookingid(rs.getInt("bookingid"));
					book.setBookingdate(rs.getDate("bookingdate"));
					book.setBookingtime(rs.getString("bookingtime"));
					book.setBookingdescription(rs.getString("bookingdescription"));
					book.setBookingestimatecapacity(rs.getInt("bookingestimatecapacity"));
					book.setBookingprice(rs.getInt("bookingprice"));
					book.setStaffid(rs.getInt("staffid"));
					book.setCustid(rs.getInt("custid"));
				}
				
				//close connection
				con.close();

			} catch (Exception e) {
				e.printStackTrace();
			}
			return book; 
		}

		//Complete addVehicle() method
		public void addBooking(booking bean) {
			
			//get values
			bookingid = bean.getBookingid();
			bookingdate = bean.getBookingdate();
			bookingtime = bean.getBookingtime();
			bookingdescription= bean.getBookingdescription();
			bookingestimatecapacity = bean.getBookingestimatecapacity();
			bookingprice= bean.getBookingprice();
			staffid = bean.getStaffid();
			custid = bean.getCustid();
			
			java.sql.Date bookdate = new java.sql.Date(bookingdate.getTime());


			try {			
				//call getConnection() method
				con = Database_Connection.getConnection();

				//create statement
				ps = con.prepareStatement("INSERT INTO bookinghall(bookingdate,bookingtime,bookingdescription,bookingestimatecapacity,bookingprice)VALUES(?,?,?,?,?)");
				ps.setDate(1, bookdate);
				ps.setString(2, bookingtime);
				ps.setString(3, bookingdescription);
				ps.setInt(4, bookingestimatecapacity);
				ps.setInt(5, bookingprice);
//				ps.setInt(6, staffID);
//				ps.setInt(7, custID);
				
				
				//execute query
				ps.executeUpdate();
				System.out.println("Successfully inserted");

				//close connection
				con.close();
				

			}catch(Exception e) {
				e.printStackTrace();				
			}
		}	

		//Complete deleteVehicle() method
		public void deleteCustomer(int custid) {
			try {
				//call getConnection() method 
				con = Database_Connection.getConnection();

				//create statement 
				ps = con.prepareStatement("DELETE FROM bookinghall WHERE bookingid=?");
				ps.setInt(1, bookingid);

				//execute query
				ps.executeUpdate();

				//close connection
				con.close();

			}catch(Exception e) {
				e.printStackTrace();
			}
		}

		//Complete getVehicles() method
		public static List<booking> getBookings() { 
			List<booking> books = new ArrayList<booking>(); 
			try { 
				//call getConnection() method
				con = Database_Connection.getConnection();

				//create statement
				stmt = con.createStatement();
				String sql = "SELECT bookingid, bookingdate, bookingtime, bookingdescription, bookingestimatecapacity, bookingprice FROM bookinghall ORDER BY bookingid";

				//execute query
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					booking book = new booking();
					book.setBookingid(rs.getInt("bookingid"));	
					book.setBookingdate(rs.getDate("bookingdate"));
					book.setBookingtime(rs.getString("bookingtime"));
					book.setBookingdescription(rs.getString("bookingdescription"));
					book.setBookingestimatecapacity(rs.getInt("bookingestimatecapacity"));
					book.setBookingprice(rs.getInt("bookingprice"));
//					book.setStaffID(rs.getInt("staffID"));
//					book.setCustID(rs.getInt("custID"));
					books.add(book);
				}

				//close connection
				con.close();

			} catch (Exception e) { 
				e.printStackTrace(); 
			}

			return books; 
		}
		
		//update 
		
			public void updateBooking(booking bean) {
				
				bookingid = bean.getBookingid();
				bookingdate = bean.getBookingdate();
				
				java.sql.Date bookdate = new java.sql.Date(bookingdate.getTime());
				
				try {			
					//call getConnection() method
					con = Database_Connection.getConnection();
					
					//3. create statement
					ps = con.prepareStatement("UPDATE bookinghall SET bookingdate=? WHERE bookingid=?");
					ps.setDate(1, bookdate);
					ps.setString(2, bookingtime);
					ps.setInt(3, bookingid);
					
					//4. execute query
					ps.executeUpdate();
					
					System.out.println("Successfully updated");
					
					//5. close connection
					con.close();
					
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
}