package Servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import DAO.MaintenanceDAO;
import Model.Maintenances;
import java.text.SimpleDateFormat;

@WebServlet ("/MaintenanceController")
public class MaintenanceController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String action="", forward="";
	private static String LIST ="staffListMaintenance.jsp";
	private static String ADD = "staffAddMaintenanace.jsp";
	private MaintenanceDAO dao;

    public MaintenanceController(){
        super();
        dao = new MaintenanceDAO();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		action = request.getParameter("action");
		
		if (action.equalsIgnoreCase("list")) {
			forward = LIST;
			request.setAttribute("maintenances", MaintenanceDAO.getMaintenances());
			RequestDispatcher view = request.getRequestDispatcher(forward);
			view.forward(request, response);
		}
		
		if(action.equalsIgnoreCase("add")) {
			forward = ADD;
			RequestDispatcher view = request.getRequestDispatcher(forward);
			view.forward(request, response);
		}
		
		if (action.equalsIgnoreCase("delete")) {
			int deleteStatus = 0;
			int mtnanceid = Integer.parseInt(request.getParameter("mtnanceid"));
			deleteStatus = dao.deleteMaintenance(mtnanceid);

			if (deleteStatus == 1) {
				response.sendRedirect("MaintenanceController?action=list&status=SUCCESS");
			} else {
				response.sendRedirect("MaintenanceController?action=list&status=FAIL");
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date date1;
		java.util.Date date2;
	 	int addStatus = 0;
	 	
		try {
			Maintenances maintenance = new Maintenances();
			date1 = formatter.parse(request.getParameter("mtnancelastdate"));
			date2 = formatter.parse(request.getParameter("mtnancenextdate"));
			
			int assetsid = Integer.parseInt(request.getParameter("assetsid"));
		    int servicerid = Integer.parseInt(request.getParameter("servicerid"));
		   
		    maintenance.setMtnancelastdate(date1);
		    maintenance.setMtnancenextdate(date2);
		    maintenance.setMtnancedescription(request.getParameter("mtnancedescription"));
		    maintenance.setAssetsid(assetsid);
		    maintenance.setServicerid(servicerid);

			addStatus = dao.addMaintenance(maintenance);
			request.setAttribute("maintenances", MaintenanceDAO.getMaintenances());
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (addStatus == 1) {
			response.sendRedirect("MaintenanceController?action=list&status=SUCCESS");
		} else {
			response.sendRedirect("MaintenanceController?action=list&status=FAIL");
		}
	}
}
