<%@page import="staff.staffDAO"%>  
<jsp:useBean id="s" class="staff.Staff"></jsp:useBean>  
<jsp:setProperty property="*" name="s"/>  
  
<%  
int i=staffDAO.save(s);   
response.sendRedirect("StaffView.jsp");  
%>  