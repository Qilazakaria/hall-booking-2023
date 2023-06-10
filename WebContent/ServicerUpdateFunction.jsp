<%@page import="Servicer.servicerDAO"%>  
<jsp:useBean id="s" class="Servicer.servicer"></jsp:useBean>  
<jsp:setProperty property="*" name="s"/>  
<%  
int updateStatus = servicerDAO.update(s);

if (updateStatus == 1) {
	response.sendRedirect("ServicerView.jsp?status=SUCCESS");
} else {
	response.sendRedirect("ServicerView.jsp?status=FAIL");
} 
%> 