<%@page import="Servicer.servicerDAO"%>  
<jsp:useBean id="se" class="Servicer.servicer"></jsp:useBean>  
<jsp:setProperty property="*" name="se"/>  
<%  
int i=servicerDAO.save(se);   
response.sendRedirect("ServicerView.jsp");  
%>  