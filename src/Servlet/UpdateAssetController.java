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
import Model.Assets;


@WebServlet("/UpdateAssetController")
public class UpdateAssetController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AssetDAO dao;    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAssetController() {
        super();
        dao = new AssetDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int assetsid = Integer.parseInt(request.getParameter("assetsid"));
		request.setAttribute("asset", AssetDAO.getAsset(assetsid));
		RequestDispatcher view = request.getRequestDispatcher("UpdateAssets.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		 * SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		 * java.util.Date date1 = null;
		 */
		/*
		 * try { date1 = formatter.parse(request.getParameter("vec_rtdate")); } catch
		 * (ParseException e) { // TODO Auto-generated catch block e.printStackTrace();
		 * }
		 */
		
		Assets asset = new Assets();
		asset.setAssetsid(Integer.parseInt(request.getParameter("assetsid")));
		asset.setAssetsquantity(Integer.parseInt(request.getParameter("assetsquantity")));
		
		dao.updateAsset(asset); 
		
		request.setAttribute("assets", AssetDAO.getAllAssets());
		RequestDispatcher view = request.getRequestDispatcher("ListAssets.jsp");
		view.forward(request, response);
	}

}
