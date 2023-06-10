<%@page import="Servicer.servicerDAO"%>  
<jsp:useBean id="se" class="Servicer.servicer"></jsp:useBean>  
<jsp:setProperty property="*" name="se"/>  
<%  
int addStatus = servicerDAO.save(se);

if (addStatus == 1) {
	response.sendRedirect("ServicerView.jsp?status=SUCCESS");
} else {
	response.sendRedirect("ServicerView.jsp?status=FAIL");
}
%>  