<%@page import="staff.staffDAO"%>  
<jsp:useBean id="s" class="staff.Staff"></jsp:useBean>  
<jsp:setProperty property="*" name="s"/>  
<%  
	int updateStatus = staffDAO.update(s);
	
	if (updateStatus == 1) {
		response.sendRedirect("StaffView.jsp?status=SUCCESS");
	} else {
		response.sendRedirect("StaffView.jsp?status=FAIL");
	}
%>     