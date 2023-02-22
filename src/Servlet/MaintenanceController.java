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
import Servicer.servicerDAO;
import DAO.AssetDAO;
import java.text.SimpleDateFormat;

/**
 * Servlet implementation class MaintenanceController
 */
public class MaintenanceController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String action="", forward="";
	private static String LIST ="staffListMaintenance.jsp";
	private static String VIEW ="ViewMaintenance.jsp";
	private static String UPDATE ="UpdateMaintenace.jsp";
	private static String ADD = "staffAddMaintenance.jsp";
	private MaintenanceDAO dao;
	private int mtnanceid;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MaintenanceController(){
        super();
        dao = new MaintenanceDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		action = request.getParameter("action");
		
		//Complete action for view order
//		if(action.equalsIgnoreCase("update")) {
//			forward = UPDATE;
//			int mtnanceID = Integer.parseInt(request.getParameter("mtnanceID"));
////			request.setAttribute("maintenance", MaintenanceDAO.getMaintenance(mtnanceID));
//			request.setAttribute("assets", AssetDAO.getAllAssets());
//			forward = UPDATE;
//		}
		//Complete action for list maintenance
		// for all maintenance have been inserted
		if(action.equalsIgnoreCase("list")) {
			forward = LIST;
			request.setAttribute("maintenances", MaintenanceDAO.getMaintenances());
		}
		
		//Buat DAO utk Asset
		if(action.equalsIgnoreCase("add")) {
			request.setAttribute("assets", AssetDAO.getAllAssets());
			forward = ADD;
		}
		
		//Buat DAO utk Servicer
		if(action.equalsIgnoreCase("add")) {
			request.setAttribute("list", servicerDAO.getAllRecords());
			forward = ADD;
		}
		
		//Complete action for delete order
		if(action.equalsIgnoreCase("delete")) {
			forward = LIST;
			int mtnanceid = Integer.parseInt(request.getParameter("mtnanceid"));
			dao.deleteMaintenance(mtnanceid);
			request.setAttribute("maintenances", MaintenanceDAO.getMaintenances());
			RequestDispatcher view = request.getRequestDispatcher("staffListMaintenance.jsp");
		}

		//forward the request
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date date1;
		java.util.Date date2;
	 		
		try {
			Maintenances maintenance = new Maintenances();
			date1 = formatter.parse(request.getParameter("mtnancelastdate"));
			date2 = formatter.parse(request.getParameter("mtnancenextdate"));
//		    int assetsID = Integer.parseInt(request.getParameter("assetsID"));
//		    int servicerID = Integer.parseInt(request.getParameter("servicerID"));
			
			int assetsid = Integer.parseInt(request.getParameter("assetsid"));
		    int servicerid = Integer.parseInt(request.getParameter("servicerid"));
		   
			//retrieve from HTML and set the values
		    maintenance.setMtnancelastdate(date1);
		    maintenance.setMtnancenextdate(date2);
		    maintenance.setMtnancedescription(request.getParameter("mtnancedescription"));
		    maintenance.setAssetsid(assetsid);
		    maintenance.setServicerid(servicerid);

			//invoke method addOrder() in VehiclesDAO
			String mtnanceid = request.getParameter("mtnanceid");
			
			if(mtnanceid == null || mtnanceid.isEmpty()) {
				dao.addMaintenance(maintenance);
			}
			
			//set attribute to a servlet request and call getVehicles() method
			request.setAttribute("maintenances", MaintenanceDAO.getMaintenances());
			
		}catch(Exception e) {
			e.printStackTrace();
		}

		
		
		//forward the request to ListVehicle.jsp
		forward = LIST;
		RequestDispatcher LIST = request.getRequestDispatcher(forward);
		LIST.forward(request, response);
	}
}
