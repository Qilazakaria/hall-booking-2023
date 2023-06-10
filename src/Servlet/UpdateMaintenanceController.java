package Servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.MaintenanceDAO;
import Model.Maintenances;

@WebServlet("/UpdateMaintenanceController")
public class UpdateMaintenanceController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MaintenanceDAO dao;
    public UpdateMaintenanceController() {
        super();
        dao = new MaintenanceDAO();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int mtnanceid = Integer.parseInt(request.getParameter("mtnanceid"));
		request.setAttribute("maintenance", MaintenanceDAO.getMaintenance(mtnanceid));
		RequestDispatcher view = request.getRequestDispatcher("updateMaintenance.jsp");
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int updateStatus = 0;
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date date1 = null;
		java.util.Date date2 = null;
		
		try {
			date1 = formatter.parse(request.getParameter("mtnancelastdate"));
			date2 = formatter.parse(request.getParameter("mtnancenextdate"));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		Maintenances maintenance = new Maintenances();
		maintenance.setMtnanceid(Integer.parseInt(request.getParameter("mtnanceid")));
		maintenance.setMtnancelastdate(date1);
		maintenance.setMtnancenextdate(date2);
		maintenance.setMtnancedescription(request.getParameter("mtnancedescription"));
		maintenance.setAssetsid(Integer.parseInt(request.getParameter("assetsid")));
	    maintenance.setServicerid(Integer.parseInt(request.getParameter("servicerid")));
	    updateStatus = dao.updateMaintenance(maintenance);

		if (updateStatus == 1) {
			response.sendRedirect("MaintenanceController?action=list&status=SUCCESS");
		} else {
			response.sendRedirect("MaintenanceController?action=list&status=FAIL");
		}
	}
}