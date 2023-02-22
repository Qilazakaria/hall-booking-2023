<%@page import="staff.staffDAO"%>  
<jsp:useBean id="" class="w"></jsp:useBean>  
<jsp:setProperty property="*" name="s"/>  
<%  
int i=staffDAO.update(s);  
response.sendRedirect("StaffView.jsp");  
%> 