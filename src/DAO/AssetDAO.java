package DAO;

import java.sql.*;
import java.util.*;
import Model.Assets;
import Database.Database_Connection;

public class AssetDAO {
	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static String sql;
	private int assetsid;
	private String assetsname;
	private int assetsquantity;
	private String assetscategory;
	private String furnmaterial;
	private String electvoltage;
	private String voltageunit;

	//Complete getAsset() method
	public static Assets getAsset(int assetsid) { 
		Assets asset = new Assets();
		try {
			//call getConnection() method
			con = Database_Connection.getConnection() ;

			//create statement
			ps = con.prepareStatement("SELECT * FROM assets WHERE assetsid=?");
			ps.setInt(1, assetsid);

			//execute query
			rs = ps.executeQuery();
			if(rs.next()) {
				asset.setAssetsid(rs.getInt("assetsid"));
				asset.setAssetsname(rs.getString("assetsname"));
				asset.setAssetsquantity(rs.getInt("assetsquantity"));
				asset.setAssetscategory(rs.getString("assetscategory"));
				asset.setFurnmaterial(rs.getString("furnmaterial"));
				asset.setElectvoltage(rs.getString("electvoltage"));
				asset.setVoltageunit(rs.getString("voltageunit"));
			}
			
			//close connection
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return asset; 
	}

	//Complete addAsset() method
	public int addAssets(Assets bean) {
		int addStatus = 0;
		int latestId = 0;
		//get values
		assetsid = bean.getAssetsid();
		assetsname = bean.getAssetsname();
		assetsquantity= bean.getAssetsquantity();
		assetscategory = bean.getAssetscategory();
		furnmaterial= bean.getFurnmaterial();
		electvoltage = bean.getElectvoltage();
		voltageunit = bean.getVoltageunit();


		try {			
			//call getConnection() method
			con = Database_Connection.getConnection() ;
	    	
	    	// get latest ID
	    	PreparedStatement psGet = con.prepareStatement("SELECT * FROM assets ORDER BY assetsid DESC LIMIT 1");
	        ResultSet rsGet = psGet.executeQuery();
	        
	        while(rsGet.next()) {  
	        	latestId = rsGet.getInt("assetsid");
	        }

			//create statement
			ps = con.prepareStatement("INSERT INTO assets(assetsname,assetsquantity,assetscategory,furnmaterial,electvoltage,voltageunit,assetsid)VALUES(?,?,?,?,?,?,?)");
			ps.setString(1, assetsname);
			ps.setInt(2, assetsquantity);
			ps.setString(3, assetscategory);
			ps.setString(4, furnmaterial);
			ps.setString(5, electvoltage);
			ps.setString(6, voltageunit);
			ps.setInt(7, latestId + 1);
			
			//execute query
			addStatus = ps.executeUpdate();
			System.out.println("Successfully inserted");

			//close connection
			con.close();
		}catch(Exception e) {
			e.printStackTrace();				
		}
		
		return addStatus;
	}	

	//Complete deleteVehicle() method
	/*
	 * public void deleteVehicle(int vec_id) { try { //call getConnection() method
	 * con = ConnectionManager.getConnection();
	 * 
	 * //create statement ps =
	 * con.prepareStatement("DELETE FROM vehicle WHERE vec_id=?"); ps.setInt(1,
	 * vec_id);
	 * 
	 * //execute query ps.executeUpdate();
	 * 
	 * //close connection con.close();
	 * 
	 * }catch(Exception e) { e.printStackTrace(); } }
	 */

	//Complete getAllAssets() method
	public static List<Assets> getAllAssets() { 
		List<Assets> assets = new ArrayList<Assets>(); 
		try { 
			//call getConnection() method
			con = Database_Connection.getConnection() ;

			//create statement
			stmt = con.createStatement();
			String sql = "SELECT * FROM assets ORDER BY assetsid";

			//execute query
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				Assets asset = new Assets();
				asset.setAssetsid(rs.getInt("assetsid"));
				asset.setAssetsname(rs.getString("assetsname"));
				asset.setAssetsquantity(rs.getInt("assetsquantity"));
				asset.setAssetscategory(rs.getString("assetscategory"));
				asset.setFurnmaterial(rs.getString("furnmaterial"));
				asset.setElectvoltage(rs.getString("electvoltage"));
				asset.setVoltageunit(rs.getString("voltageunit"));
				assets.add(asset);
			}

			//close connection
			con.close();

		} catch (Exception e) { 
			e.printStackTrace(); 
		}

		return assets; 
	}
	
	//update 
	
		public int updateAsset(Assets bean) {
			int updateStatus = 0;
			assetsid = bean.getAssetsid();
			assetsquantity = bean.getAssetsquantity();
			
			/* java.sql.Date rtdate = new java.sql.Date(vec_rtdate.getTime()); */
			
			try {			
				//call getConnection() method
				con = Database_Connection.getConnection() ;
				
				//3. create statement
				ps = con.prepareStatement("UPDATE assets SET assetsQuantity=? WHERE assetsID=?");
				ps.setInt(1, assetsquantity);
				ps.setInt(2, assetsid);
				
				//4. execute query
				updateStatus = ps.executeUpdate();
				
				System.out.println("Successfully updated");
				
				//5. close connection
				con.close();
				
			}catch(Exception e) {
				e.printStackTrace();
				
			}
			
			return updateStatus;
		}

}
