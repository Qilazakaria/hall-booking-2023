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
	public void addMaintenance(Maintenances bean) {
				
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

			//create statement
			ps = con.prepareStatement("INSERT INTO maintenance(mtnancelastdate,mtnancenextdate,mtnancedescription,assetsid,servicerid)VALUES(?,?,?,?,?)");
			ps.setDate(1, lastdate);
			ps.setDate(2, nextdate);
			ps.setString(3, mtnancedescription);
			ps.setInt(4, assetsid);
			ps.setInt(5, servicerid);
					
					
			//execute query
			ps.executeUpdate();
			System.out.println("Successfully inserted");

			//close connection
			con.close();
				

			}catch(Exception e) {
			e.printStackTrace();				
		}
	}
	//Complete deleteMaintenance() method
	public void deleteMaintenance(int mtnanceID) {
		try {
			//call getConnection() method 
			con = Database_Connection.getConnection();

			//create statement 
			ps = con.prepareStatement("DELETE FROM maintenance WHERE mtnanceid=?");
			ps.setInt(1, mtnanceid);

			//execute query
			ps.executeUpdate();

			//close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
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
			
		public void updateMaintenance(Maintenances bean) {
					
			mtnanceid = bean.getMtnanceid();
			mtnancelastdate = bean.getMtnancelastdate();
			mtnancenextdate = bean.getMtnancenextdate();
			mtnancedescription = bean.getMtnancedescription();
//			assetsID = bean.getAssetsID();
//			servicerID = bean.getServicerID();
//			vec_id = bean.getVec_id();
//			vec_rtdate = bean.getVec_rtdate();
					
			java.sql.Date lastdate = new java.sql.Date(mtnancelastdate.getTime());
			java.sql.Date nextdate = new java.sql.Date(mtnancenextdate.getTime());
			
			try {			
				//call getConnection() method
				con = ConnectionManager.getConnection();
					
				//3. create statement
				ps = con.prepareStatement("UPDATE maintenance SET mtnancelastdate=?,mtnancenextdate=?,mtnancedescription=? WHERE mtnanceid=?");
				ps.setDate(1, lastdate);
				ps.setDate(2, nextdate);
				ps.setString(3, mtnancedescription);
//				ps.setInt(4, assetsID);
//				ps.setInt(5, servicerID);
				ps.setInt(4, mtnanceid);
						
				//4. execute query
				ps.executeUpdate();
						
				System.out.println("Successfully updated");
						
				//5. close connection
				con.close();
						
			}catch(Exception e) {
				e.printStackTrace();
						
			}
		}
}
