package Model;

import java.util.Date;

public class Maintenance {
	
	public Maintenance() {
		
	}
	
	private int mtnanceid;
	private Date mtnancelastdate;
	private Date mtnancenextdate;
	private String mtnancedescription;
	private int assetsid;
	private int servicerid;
	
	public Maintenance(int mtnanceid, Date mtnancelastdate, Date mtnancenextdate, String mtnancedescription,
			int assetsid, int servicerid) {
		super();
		this.mtnanceid = mtnanceid;
		this.mtnancelastdate = mtnancelastdate;
		this.mtnancenextdate = mtnancenextdate;
		this.mtnancedescription = mtnancedescription;
		this.assetsid = assetsid;
		this.servicerid = servicerid;
	}

	public int getMtnanceid() {
		return mtnanceid;
	}

	public void setMtnanceid(int mtnanceid) {
		this.mtnanceid = mtnanceid;
	}

	public Date getMtnancelastdate() {
		return mtnancelastdate;
	}

	public void setMtnancelastdate(Date mtnancelastdate) {
		this.mtnancelastdate = mtnancelastdate;
	}

	public Date getMtnancenextdate() {
		return mtnancenextdate;
	}

	public void setMtnancenextdate(Date mtnancenextdate) {
		this.mtnancenextdate = mtnancenextdate;
	}

	public String getMtnancedescription() {
		return mtnancedescription;
	}

	public void setMtnancedescription(String mtnancedescription) {
		this.mtnancedescription = mtnancedescription;
	}

	public int getAssetsid() {
		return assetsid;
	}

	public void setAssetsid(int assetsid) {
		this.assetsid = assetsid;
	}

	public int getServicerid() {
		return servicerid;
	}

	public void setServicerid(int servicerid) {
		this.servicerid = servicerid;
	}
	
	
}
