<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="booking.bookingDAO, booking.Booking" %>

<%
Booking b = new Booking();
b.setBookingid(Integer.parseInt(request.getParameter("bookingid")));
b.setBookingdate(request.getParameter("bookingdate"));
b.setBookingtime(request.getParameter("bookingtime"));
b.setBookingdescription(request.getParameter("description"));
b.setBookingestimatecapacity(Integer.parseInt(request.getParameter("capacity")));
b.setBookingprice(Integer.parseInt(request.getParameter("price")));

int status = bookingDAO.update(b);

if (status > 0) {
    response.sendRedirect("StaffListBooking.jsp");
} else {
    out.println("Failed to update the booking.");
}
%>
