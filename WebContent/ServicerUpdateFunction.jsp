<%@page import="Servicer.servicerDAO"%>  
<jsp:useBean id="s" class="Servicer.servicer"></jsp:useBean>  
<jsp:setProperty property="*" name="s"/>  
<%  
int i=servicerDAO.update(s);  
response.sendRedirect("ServicerView.jsp");  
%> 