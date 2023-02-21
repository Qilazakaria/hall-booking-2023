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
import DAO.AssetDAO;
import DAO.MaintenanceDAO;
import Servicer.servicerDAO;
import Model.Maintenance;
import Model.Assets;
import Servicer.servicer;

@WebServlet("/UpdateVehicleController")
/**
 * Servlet implementation class UpdateMaintenanceController
 */
public class UpdateMaintenanceController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MaintenanceDAO dao;
	private String action="", forward="";
	private static String LIST ="staffListMaintenance.jsp";
	private static String VIEW ="ViewMaintenance.jsp";
	private static String UPDATE ="UpdateMaintenace.jsp";
	private static String ADD = "staffAddMaintenance.jsp";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMaintenanceController() {
        super();
        dao = new MaintenanceDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Buat DAO utk Asset
		if(action.equalsIgnoreCase("update")) {
			request.setAttribute("assets", AssetDAO.getAllAssets());
			forward = UPDATE;
			}
				
				//Buat DAO utk Servicer
		if(action.equalsIgnoreCase("update")) {
			request.setAttribute("list", servicerDAO.getAllRecords());
			forward = UPDATE;
			}
		int mtnanceID = Integer.parseInt(request.getParameter("mtnanceID"));
		request.setAttribute("maintenance", MaintenanceDAO.getMaintenance(mtnanceID));
		RequestDispatcher view = request.getRequestDispatcher("UpdateMaintenance.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date date1 = null;
		java.util.Date date2 = null;
//		int assetsID = Integer.parseInt(request.getParameter("assetsID"));
//	    int servicerID = Integer.parseInt(request.getParameter("servicerID"));
		try {
			date1 = formatter.parse(request.getParameter("mtnanceLastDate"));
			date2 = formatter.parse(request.getParameter("mtnanceNextDate"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Maintenance maintenance = new Maintenance();
		maintenance.setMtnanceid(Integer.parseInt(request.getParameter("mtnanceID")));
		maintenance.setMtnancelastdate(date1);
		maintenance.setMtnancenextdate(date2);
		maintenance.setMtnancedescription(request.getParameter("mtnanceDescription"));
//		maintenance.setAssetsID(assetsID);
//	    maintenance.setServicerID(servicerID);
		dao.updateMaintenance(maintenance);
		
		request.setAttribute("maintenances", MaintenanceDAO.getMaintenances());
		RequestDispatcher view = request.getRequestDispatcher("staffListMaintenance.jsp");
		view.forward(request, response);
	}

}