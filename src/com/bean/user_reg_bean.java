package com.bean;
public class user_reg_bean {
	private int uid;
	private String fname;
	private String lname;
	private int gender;
	private String phone;
	private String address;
	private String area;
	private String city;
	private String state;
	private String password;
	private String conpassword;
	private String email;
	private String profile;
	private int isactive;
	
	public int getuid()
	{
		return uid;
	}
	public void setuid(int i)
	{
		this.uid=i;
	}
	
	public String getfname()
	{
		return fname;
	}
	public void setfname(String fn)
	{
		this.fname=fn;
	}
	
	public String getlname()
	{
		return lname;
	}
	public void setlname(String ln)
	{
		this.lname=ln;
	}
	
	public String getphone()
	{
		return phone;
	}
	public void setphone(String pn)
	{
		this.phone=pn;
	}
	
	public String getaddress()
	{
		return address;
	}
	public void setaddress(String add)
	{
		this.address=add;
	}
	
	public int getgender()
	{
		return gender;
	}
	public void setgender(int gen)
	{
		this.gender=gen;
	}
	
	public String getarea()
	{
		return area;
	}
	public void setarea(String ar)
	{
		this.area=ar;
	}
	
	public String getcity()
	{
		return city;
	}
	public void setcity(String ct)
	{
		this.city=ct;
	}
	
	public String getstate()
	{
		return state;
	}
	public void setstate(String st)
	{
		this.state=st;
	}
	
	public String getpassword()
	{
		return password;
	}
	public void setpassword(String pw)
	{
		this.password=pw;
	}
	
	public String getconpassword()
	{
		return conpassword;
	}
	public void setconpassword(String cpw)
	{
		this.conpassword=cpw;
	}
	
	public String getemail()
	{
		return email;
	}
	public void setemail(String eml)
	{
		this.email=eml;
	}
	
	public String getprofile()
	{
		return profile;
	}
	public void setprofile(String profile1)
	{
		this.profile=profile1;
	}
	
	public int getIsactive()
	{
		return isactive;
	}
	public void setIsactive(int isactive1)
	{
		this.isactive = isactive1;
	}
}
