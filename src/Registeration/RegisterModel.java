package Registeration; 
 
public class RegisterModel{ 
 private int custid; 
 private int custidentificationcard,custpostcode; 
 private String custname,custtelnum,custhomeno,custaddress,custcity,custstate,custemail,custpass; 
 private boolean loginstatus; 
 public RegisterModel() { 
   
 } 
 public int getCustid() { 
  return custid; 
 } 
 public void setCustid(int custid) { 
  this.custid = custid; 
 } 
 public int getCustidentificationcard() { 
  return custidentificationcard; 
 } 
 public void setCustidentificationcard(int custidentificationcard) { 
  this.custidentificationcard = custidentificationcard; 
 } 
 public int getCustpostcode() { 
  return custpostcode; 
 } 
 public void setCustpostcode(int custpostcode) { 
  this.custpostcode = custpostcode; 
 } 
 public String getCustname() { 
  return custname; 
 } 
 public void setCustname(String custname) { 
  this.custname = custname; 
 } 
 public String getCusttelnum() { 
  return custtelnum; 
 } 
 public void setCusttelnum(String custtelnum) { 
  this.custtelnum = custtelnum; 
 } 
 public String getCusthomeno() { 
  return custhomeno; 
 } 
 public void setCusthomeno(String custhomeno) { 
  this.custhomeno = custhomeno; 
 } 
 public String getCustaddress() { 
  return custaddress; 
 } 
 public void setCustaddress(String custaddress) { 
  this.custaddress = custaddress; 
 } 
 public String getCustcity() { 
  return custcity; 
 } 
 public void setCustcity(String custcity) { 
  this.custcity = custcity; 
 } 
 public String getCuststate() { 
  return custstate; 
 } 
 public void setCuststate(String custstate) { 
  this.custstate = custstate; 
 } 
 public String getCustemail() { 
  return custemail; 
 } 
 public void setCustemail(String custemail) { 
  this.custemail = custemail; 
 } 
 public String getCustpass() { 
  return custpass; 
 } 
 public void setCustpass(String custpass) { 
  this.custpass = custpass; 
 } 
 public boolean isLoginstatus() {
	return loginstatus;
	}
public void setLoginstatus(boolean loginstatus) {
	this.loginstatus = loginstatus;
	}
}