<%@ page import="booking.bookingDAO" %>  
<jsp:useBean id="booking" class="booking.Booking"></jsp:useBean>  
<jsp:setProperty property="*" name="booking"/>  
  
<%
	int addBooking = bookingDAO.save(booking);

	if (addBooking == 1) {
		response.sendRedirect("StaffListBooking.jsp?status=SUCCESS");
	} else {
		response.sendRedirect("StaffListBooking.jsp?status=FAIL");
	}
%>  