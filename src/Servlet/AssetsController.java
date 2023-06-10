package Servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.AssetDAO;
import Model.Assets;
import java.io.IOException;

/**
 * Servlet implementation class OrdersController
 */
@WebServlet ("/AssetsController")
public class AssetsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String action="", forward="";
	private static String LIST ="ListAssets.jsp";
	private static String VIEW ="ViewAssets.jsp";
	private static String UPDATE ="UpdateAssets.jsp";
	private AssetDAO dao;
	private int assetsid;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AssetsController() {
		super();
		dao = new AssetDAO();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		action = request.getParameter("action");
		
		if (action == "" || action == null) {
			action = "list";
		}

		//Complete action for view asset
		if(action.equalsIgnoreCase("view")) {
			forward = VIEW;
			int assetsid = Integer.parseInt(request.getParameter("assetsid"));
			request.setAttribute("asset", AssetDAO.getAsset(assetsid));
		}
		
		//Complete action for list order
		// for all order have been inserted
		if(action.equalsIgnoreCase("list")) {
			forward = LIST;
			request.setAttribute("assets", AssetDAO.getAllAssets());
		}

		/*
		 * //Complete action for delete order if(action.equalsIgnoreCase("delete")) {
		 * forward = LIST; int vec_id =
		 * Integer.parseInt(request.getParameter("vec_id")); dao.deleteVehicle(vec_id);
		 * request.setAttribute("vehicles", VehiclesDAO.getVehicles());
		 * RequestDispatcher view = request.getRequestDispatcher("ListVehicle.jsp"); }
		 */

		//forward the request
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int addStatus = 0;
		try {
			Assets asset = new Assets();
			
			asset.setAssetsname(request.getParameter("assetsname"));
			asset.setAssetsquantity(Integer.parseInt(request.getParameter("assetsquantity")));
			asset.setAssetscategory(request.getParameter("assetscategory"));
			asset.setFurnmaterial(request.getParameter("furnmaterial"));
			asset.setElectvoltage(request.getParameter("electvoltage"));
			asset.setVoltageunit(request.getParameter("voltageunit"));
			
			addStatus = dao.addAssets(asset);
			
		} catch(Exception e) {
			e.printStackTrace();
		}

		if (addStatus == 1) {
			response.sendRedirect("AssetsController?action=list&status=SUCCESS");
		} else {
			response.sendRedirect("AssetsController?action=list&status=FAIL");
		}
	}
}
