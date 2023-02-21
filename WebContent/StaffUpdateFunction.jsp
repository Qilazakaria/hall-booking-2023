<%@page import="DAO.staffDAO"%>  
<jsp:useBean id="s" class="Model.Staff"></jsp:useBean>  
<jsp:setProperty property="*" name="s"/>  
<%  
int i=staffDAO.update(s);  
response.sendRedirect("StaffView.jsp");  
%> 