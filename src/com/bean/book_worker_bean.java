package com.bean;

public class book_worker_bean {
	private String wid;
	private String fname;
	private String lname;
	private int bid;
	private String bdate;
	private String btime;
	private String problem;
	private int isactive;
	
	public String getwid()
	{
		return wid;
	}
	public void setwid(String wid1)
	{
		this.wid=wid1;
	}
	public String getfname()
	{
		return fname;
	}
	public void setfname(String fname1)
	{
		this.fname=fname1;
	}
	public String getlname()
	{
		return lname;
	}
	public void setlname(String lname1)
	{
		this.lname=lname1;
	}
	
	public int getbid()
	{
		return bid;
	}
	public void setbid(int bid1)
	{
		this.bid=bid1;
	}
	public String getbdate()
	{
		return bdate;
	}
	public void setbdate(String bdate1)
	{
		this.bdate=bdate1;;
	}
	public String getbtime()
	{
		return btime;
	}
	public void setbtime(String btime1)
	{
		this.btime=btime1;
	}
	public String getproblem()
	{
		return problem;
	}
	public void setproblem(String problem1)
	{
		this.problem=problem1;
	}
	
	public int getisactive()
	{
		return isactive;
	}
	public void setisactive(int isactive1)
	{
		this.isactive = isactive1;
	}

}
