<%@page import="Registeration.RegisterDAO"%>  
<jsp:useBean id="r" class="Registeration.RegisterModel"></jsp:useBean>  
<jsp:setProperty property="*" name="r"/>  
  
<%  
int i=RegisterDAO.save(r);   
  
response.sendRedirect("CustomerLogin.jsp");   
%> 
