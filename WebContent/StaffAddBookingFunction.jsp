<%@page import="booking.bookingDAO"%>  
<jsp:useBean id="b" class="booking.Booking"></jsp:useBean>  
<jsp:setProperty property="*" name="b"/>  
  
<%  
int i=bookingDAO.save(b);   
response.sendRedirect("StaffListBooking.jsp");  
%>  