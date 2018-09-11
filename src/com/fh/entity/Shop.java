package com.fh.entity;

public class Shop
{
	private String SHOP_ID;			//主键
	private String SHOPNAME;		//商场名称
	private String SHOPNUM;			//商场层数
	private String SHOPADDRESS;		//商场地址
	private String SHOPLOGO;		//商场logo
	private String SHOPBUS;			//所包含商家
	private String RZTIME;			//入驻时间
	private String CREATIME;		//创建时间
	private String STATUS;			//状态 
	private String ACTIVITY;		//商场活动
	
	
	public String getSHOP_ID()
	{
		return SHOP_ID;
	}
	public void setSHOP_ID(String sHOP_ID)
	{
		SHOP_ID = sHOP_ID;
	}
	public String getSHOPNAME()
	{
		return SHOPNAME;
	}
	public void setSHOPNAME(String sHOPNAME)
	{
		SHOPNAME = sHOPNAME;
	}
	public String getSHOPNUM()
	{
		return SHOPNUM;
	}
	public void setSHOPNUM(String sHOPNUM)
	{
		SHOPNUM = sHOPNUM;
	}
	public String getSHOPADDRESS()
	{
		return SHOPADDRESS;
	}
	public void setSHOPADDRESS(String sHOPADDRESS)
	{
		SHOPADDRESS = sHOPADDRESS;
	}
	public String getSHOPLOGO()
	{
		return SHOPLOGO;
	}
	public void setSHOPLOGO(String sHOPLOGO)
	{
		SHOPLOGO = sHOPLOGO;
	}
	public String getSHOPBUS()
	{
		return SHOPBUS;
	}
	public void setSHOPBUS(String sHOPBUS)
	{
		SHOPBUS = sHOPBUS;
	}
	public String getRZTIME()
	{
		return RZTIME;
	}
	public void setRZTIME(String rZTIME)
	{
		RZTIME = rZTIME;
	}
	public String getSTATUS()
	{
		return STATUS;
	}
	public void setSTATUS(String sTATUS)
	{
		STATUS = sTATUS;
	}
	public String getACTIVITY()
	{
		return ACTIVITY;
	}
	public void setACTIVITY(String aCTIVITY)
	{
		ACTIVITY = aCTIVITY;
	}
	public String getCREATIME()
	{
		return CREATIME;
	}
	public void setCREATIME(String cREATIME)
	{
		CREATIME = cREATIME;
	}
}
