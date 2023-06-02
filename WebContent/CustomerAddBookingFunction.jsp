<%@page import="Customer.bookingDAO"%>  
<jsp:useBean id="b" class="Customer.Booking"></jsp:useBean>  
<jsp:setProperty property="*" name="b"/>  
  
<%  
int i=bookingDAO.save(b);   
response.sendRedirect("CustomerViewBooking.jsp");  
%>  