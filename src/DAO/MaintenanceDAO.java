package DAO;

import java.sql.*;
import java.util.*;
import java.util.Date;
import java.text.SimpleDateFormat;
import Database.Database_Connection;
import Model.Maintenances;

public class MaintenanceDAO {
	private static final Database_Connection ConnectionManager = null;
	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static String sql;
	private int mtnanceid; 
	private Date mtnancelastdate;
	private Date mtnancenextdate;
	private String mtnancedescription;
	private int assetsid;
	private int servicerid;
	
	//Complete getMaintenance() method
	public static Maintenances getMaintenance(int mtnanceid) { 
		Maintenances maintenance = new Maintenances();
		try {
			//call getConnection() method
			con = Database_Connection.getConnection();

			//create statement
			ps = con.prepareStatement("SELECT * FROM maintenance WHERE mtnanceid=?");
			ps.setInt(1, mtnanceid);

			//execute query
			rs = ps.executeQuery();
			if(rs.next()) {
				maintenance.setMtnanceid(rs.getInt("mtnanceid"));
				maintenance.setMtnancelastdate(rs.getDate("mtnancelastdate"));
				maintenance.setMtnancenextdate(rs.getDate("mtnancenextdate"));
				maintenance.setMtnancedescription(rs.getString("mtnancedescription"));
				maintenance.setAssetsid(rs.getInt("assetsid"));
				maintenance.setServicerid(rs.getInt("servicerid"));
			}
					
			//close connection
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return maintenance; 
	}
	
	//Complete addMaintenance() method
	public int addMaintenance(Maintenances bean) {
		int latestId = 0;
		int addStatus = 0;
		//get values
		mtnanceid = bean.getMtnanceid();
		mtnancelastdate = bean.getMtnancelastdate();
		mtnancenextdate= bean.getMtnancenextdate();
		mtnancedescription = bean.getMtnancedescription();
		assetsid = bean.getAssetsid();
		servicerid = bean.getServicerid();
				
		java.sql.Date lastdate = new java.sql.Date(mtnancelastdate.getTime());
		java.sql.Date nextdate = new java.sql.Date(mtnancenextdate.getTime());

		try {			
			//call getConnection() method
			con = Database_Connection.getConnection();
	    	
	    	// get latest ID
	    	PreparedStatement psGet = con.prepareStatement("SELECT * FROM maintenance ORDER BY mtnanceid DESC LIMIT 1");
	        ResultSet rsGet = psGet.executeQuery();
	        
	        while(rsGet.next()) {  
	        	latestId = rsGet.getInt("mtnanceid");
	        }

			//create statement
			ps = con.prepareStatement("INSERT INTO maintenance(mtnancelastdate,mtnancenextdate,mtnancedescription,assetsid,servicerid,mtnanceid)VALUES(?,?,?,?,?,?)");
			ps.setDate(1, lastdate);
			ps.setDate(2, nextdate);
			ps.setString(3, mtnancedescription);
			ps.setInt(4, assetsid);
			ps.setInt(5, servicerid);
			ps.setInt(6, latestId + 1);
					
					
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
	//Complete deleteMaintenance() method
	public int deleteMaintenance(int mtnanceID) {
		int deleteStatus = 0;
		mtnanceid = mtnanceID;
		try {
			con = Database_Connection.getConnection(); 
	        PreparedStatement ps = con.prepareStatement("DELETE FROM maintenance WHERE mtnanceid = ?");
	        
	        ps.setInt(1, mtnanceid);
	        deleteStatus = ps.executeUpdate();
			
			//close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return deleteStatus;
	}

	//LIST METHOD
	public static List<Maintenances> getMaintenances() { 
		List<Maintenances> maintenances = new ArrayList<Maintenances>(); 
		try { 
			//call getConnection() method
			con = Database_Connection.getConnection();

			//create statement
			stmt = con.createStatement();
			String sql = "select * from maintenance";

			//execute query
			rs = stmt.executeQuery(sql);
					
			while(rs.next()) {
				Maintenances maintenance = new Maintenances();
				maintenance.setMtnanceid(rs.getInt("mtnanceid"));
				maintenance.setMtnancelastdate(rs.getDate("mtnancelastdate"));
				maintenance.setMtnancenextdate(rs.getDate("mtnancenextdate"));
				maintenance.setMtnancedescription(rs.getString("mtnancedescription"));
				maintenance.setAssetsid(rs.getInt("assetsid"));
				maintenance.setServicerid(rs.getInt("servicerid"));
				
				PreparedStatement getassetps=con.prepareStatement("SELECT * FROM assets where assetsid=?");  
				getassetps.setInt(1,rs.getInt("assetsid"));  
				
		        ResultSet getassetrs=getassetps.executeQuery();  
		        while(getassetrs.next()){
		        	maintenance.setAssetsname((getassetrs.getString("assetsname")));
		        }
				
				PreparedStatement getservicerps=con.prepareStatement("SELECT * FROM servicer where servicerid=?");  
				getservicerps.setInt(1,rs.getInt("servicerid"));  
				
		        ResultSet getservicerrs=getservicerps.executeQuery();  
		        while(getservicerrs.next()){
		        	maintenance.setServicername((getservicerrs.getString("servicername")));
		        }
				maintenances.add(maintenance);
			}

			//close connection
			con.close();

		} catch (Exception e) { 
			e.printStackTrace(); 
		}

		return maintenances; 
	}
	
	//LIST METHOD
	public static List<Maintenances> getAddMaintenances() { 
		List<Maintenances> addmaintenances = new ArrayList<Maintenances>(); 
		try { 
			//call getConnection() method
			con = Database_Connection.getConnection();

			//create statement
			stmt = con.createStatement();
			String sql = "select * from maintenance";

			//execute query
			rs = stmt.executeQuery(sql);
					
			while(rs.next()) {
				Maintenances maintenance = new Maintenances();
				maintenance.setMtnanceid(rs.getInt("mtnanceid"));
				maintenance.setMtnancelastdate(rs.getDate("mtnancelastdate"));
				maintenance.setMtnancenextdate(rs.getDate("mtnancenextdate"));
				maintenance.setMtnancedescription(rs.getString("mtnancedescription"));
				maintenance.setAssetsid(rs.getInt("assetsid"));
				maintenance.setServicerid(rs.getInt("servicerid"));
				addmaintenances.add(maintenance);
			}

			//close connection
			con.close();

		} catch (Exception e) { 
			e.printStackTrace(); 
		}

		return addmaintenances; 
	}
	
	//update 
			
		public int updateMaintenance(Maintenances bean) {
			int updateStatus = 0;
			mtnanceid = bean.getMtnanceid();
			mtnancelastdate = bean.getMtnancelastdate();
			mtnancenextdate = bean.getMtnancenextdate();
			mtnancedescription = bean.getMtnancedescription();
			assetsid = bean.getAssetsid();
			servicerid = bean.getServicerid();
					
			java.sql.Date lastdate = new java.sql.Date(mtnancelastdate.getTime());
			java.sql.Date nextdate = new java.sql.Date(mtnancenextdate.getTime());
			
			try {			
				con = ConnectionManager.getConnection();
				
				ps = con.prepareStatement("UPDATE maintenance SET mtnancelastdate=?,mtnancenextdate=?,mtnancedescription=?,assetsid=?,servicerid=? WHERE mtnanceid=?");
				ps.setDate(1, lastdate);
				ps.setDate(2, nextdate);
				ps.setString(3, mtnancedescription);
				ps.setInt(4, assetsid);
				ps.setInt(5, servicerid);
				ps.setInt(6, mtnanceid);
				
				updateStatus = ps.executeUpdate();
						
				System.out.println("Successfully updated");
				con.close();
						
			}catch(Exception e) {
				e.printStackTrace();
						
			}
			
			return updateStatus;
		}
}
