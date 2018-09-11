package com.fh.controller.admin.agentmanger;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.entity.system.User;
import com.fh.util.AppUtil;
import com.fh.util.HttpGetMap;
import com.fh.util.MD5;
import com.fh.util.OSSUtils1;
import com.fh.util.ObjectExcelView;
import com.fh.util.Const;
import com.fh.util.PageData;
import com.fh.util.Jurisdiction;
import com.fh.service.admin.agentmanger.AgentMangerService;
import com.fh.service.agentaccount.agentaccount.AgentaccountService;
import com.fh.service.agentbusiness.agentbusiness.AgentbusinessService;
import com.fh.service.distributor.business.BusinessService;
import com.fh.service.province.province.ProvinceService;
import com.fh.service.system.user.UserService;
import com.sun.org.apache.bcel.internal.generic.NEW;
/** 
 * 类名称：AgentMangerController
 * 创建人：FH 
 * 创建时间：2017-03-27
 */
@Controller
@RequestMapping(value="/agentmanger")
public class AgentMangerController extends BaseController {
	
	String menuUrl = "agentmanger/list.do"; //菜单地址(权限用)
	@Resource(name="agentmangerService")
	private AgentMangerService agentmangerService;
	@Resource(name="agentbusinessService")
	private AgentbusinessService agentbusinessService;
	@Resource(name = "userService")
	private UserService userService;
	@Resource(name="agentaccountService")
	private AgentaccountService agentaccountService;
	@Resource(name="businessService")
	private BusinessService businessService;
	@Resource(name="provinceService")
	private ProvinceService provinceService;
	/**
	 * 新增
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, "新增AgentManger");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String PWD=pd.getString("PWD");
		PWD=MD5.md5(PWD);
		
		Subject currentUser = SecurityUtils.getSubject();
		Session session = currentUser.getSession();
		User user;
		user= (User) session.getAttribute(Const.SESSION_USER);
		String userId="";
		if(user!=null){
			userId =user.getUSER_ID();
		}
		pd.put("USERID", userId);
		pd.put("PWD", PWD);
		pd.put("FLAG", "1");
		pd.put("CREATETIME", new Date());
		String idString= this.get32UUID();
		pd.put("AGENTMANGER_ID",idString);	//主键
		String SALE=pd.getString("SALE");
		if (null!=SALE) {
			String[] SALEs = SALE.split(";");
			for(int i=0;i<SALEs.length;i++){
				String idStringq= this.get32UUID();
				PageData pd1 = new PageData();
				PageData pd2 = new PageData();
				pd2.put("AGENTBUSINESS_ID",  idStringq);//zhujian关系
				pd2.put("BUSINESS_ID",  SALEs[i]);
				pd1.put("BUSINESS_ID", SALEs[i]);
				PageData busData=businessService.findById(pd1);
				pd2.put("BUSINESSNAME", busData.getString("BUSINESS_NAME"));
				pd2.put("FLAG", "0");
				pd2.put("AGENTMANGER_ID", idString);
				BigDecimal a;
				BigDecimal b;
				a = new BigDecimal(pd.getString("SAL"+SALEs[i]));
				b = new BigDecimal(10);
				System.out.print(a.divide(b, 2, RoundingMode.HALF_UP));
				String q=a.divide(b, 2, RoundingMode.HALF_UP).toString();
				pd2.put("SALE", q);
				pd2.put("BUSINESS_NUM", "0");
				pd2.put("HAS_SALE", "0");
				pd2.put("UNIT_PRICE", "0.00");
				agentbusinessService.save(pd2);
			}
		}
		PageData pd4 = new PageData();
		String idStr= this.get32UUID();
		pd4.put("AGENTMANGER_ID", idString);
		pd4.put("AGENTACCOUNT_ID", idStr);
		pd4.put("CREATETIME", new Date());
		pd4.put("FLAG", "1");
		agentaccountService.save(pd4);
		agentmangerService.save(pd);
		mv.addObject("msg3","1");
		mv.setViewName("admin/agentmanger/agentmanger_edit");
		mv.addObject("msg", "save");
		return mv;
	}
	
	
	
	/**
	 * 修改
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, "修改AgentManger");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String SALE=pd.getString("SALE");
		String idString=pd.getString("AGENTMANGER_ID");
		if (null!=SALE) {
			String[] SALEs = SALE.split(";");
			agentbusinessService.deleteAgent(pd);
			for(int i=0;i<SALEs.length;i++){
				String idStringq= this.get32UUID();
				PageData pd1 = new PageData();
				PageData pd2 = new PageData();
				pd2.put("AGENTBUSINESS_ID",  idStringq);//zhujian关系
				pd2.put("BUSINESS_ID",  SALEs[i]);
				pd1.put("BUSINESS_ID", SALEs[i]);
				PageData busData=businessService.findById(pd1);
				pd2.put("BUSINESSNAME", busData.getString("BUSINESS_NAME"));
				pd2.put("FLAG", "0");
				pd2.put("AGENTMANGER_ID", idString);
				BigDecimal a;
				BigDecimal b;
				a = new BigDecimal(pd.getString("SAL"+SALEs[i]));
				b = new BigDecimal(10);
				System.out.print(a.divide(b, 2, RoundingMode.HALF_UP));
				String q=a.divide(b, 2, RoundingMode.HALF_UP).toString();
				pd2.put("SALE", q);
				pd2.put("BUSINESS_NUM", "0");
				pd2.put("HAS_SALE", "0");
				pd2.put("UNIT_PRICE", "0.00");
				agentbusinessService.save(pd2);
			}
		}
		
		
		PageData pd1 = agentmangerService.findById(pd);
		String PWD=pd.getString("PWD");
		if (null!=PWD&&!"".equals(PWD)) {
			PWD=MD5.md5(PWD);
			pd.put("PWD", PWD);
		}else {
			pd.put("PWD", pd1.getString("PWD"));
		}
		pd.put("CREATETIME", (Date)pd1.get("CREATETIME"));
		pd.put("AGENTMANGER_ID", pd1.getString("AGENTMANGER_ID"));
		agentmangerService.edit(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	
	/**
	 * 详情中修改
	 */
	@RequestMapping(value="/editXQ")
	public ModelAndView editXQ() throws Exception{
		logBefore(logger, "修改AgentManger");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String SALE=pd.getString("SALE");
		String idString=pd.getString("AGENTMANGER_ID");
		if (null!=SALE) {
			String[] SALEs = SALE.split(";");
			agentbusinessService.deleteAgent(pd);
			for(int i=0;i<SALEs.length;i++){
				String idStringq= this.get32UUID();
				PageData pd1 = new PageData();
				PageData pd2 = new PageData();
				pd2.put("AGENTBUSINESS_ID",  idStringq);//zhujian关系
				pd2.put("BUSINESS_ID",  SALEs[i]);
				pd1.put("BUSINESS_ID", SALEs[i]);
				PageData busData=businessService.findById(pd1);
				pd2.put("BUSINESSNAME", busData.getString("BUSINESS_NAME"));
				pd2.put("FLAG", "0");
				pd2.put("AGENTMANGER_ID", idString);
				BigDecimal a;
				BigDecimal b;
				a = new BigDecimal(pd.getString("SAL"+SALEs[i]));
				b = new BigDecimal(10);
				System.out.print(a.divide(b, 2, RoundingMode.HALF_UP));
				String q=a.divide(b, 2, RoundingMode.HALF_UP).toString();
				pd2.put("SALE", q);
				pd2.put("BUSINESS_NUM", "0");
				pd2.put("HAS_SALE", "0");
				pd2.put("UNIT_PRICE", "0.00");
				agentbusinessService.save(pd2);
			}
		}
		PageData pd1 = agentmangerService.findById(pd);
		String PWD=pd.getString("PWD");
		if (null!=PWD&&!"".equals(PWD)) {
			PWD=MD5.md5(PWD);
			pd.put("PWD", PWD);
		}else {
			pd.put("PWD", pd1.getString("PWD"));
		}
		pd.put("CREATETIME", (Date)pd1.get("CREATETIME"));
		pd.put("AGENTMANGER_ID", pd1.getString("AGENTMANGER_ID"));
		agentmangerService.edit(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 修改详情冻结
	 * 
	 * @param myfile
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("/editXQDJ")
	public ModelAndView editXQDJ() throws Exception{
		logBefore(logger, "修改AgentManger");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String AGENTMANGER_ID=pd.getString("AGENTMANGER_ID");
		String FLAG=pd.getString("FLAG");
		if (null!=AGENTMANGER_ID&&!"".equals(AGENTMANGER_ID)&&null!=FLAG&&!"".equals(FLAG)) {
			pd = agentmangerService.findById(pd);
			pd.put("AGENTMANGER_ID", pd.getString("AGENTMANGER_ID"));
			pd.put("FLAG", FLAG);
			agentmangerService.edit(pd);
			
		}
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	/**
	 * 修改详情中产品代理
	 * 
	 * @param myfile
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("/editXQZT")
	@ResponseBody
	public String  editXQZT(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> result = new HashMap<String, Object>();
		PageData pd = new PageData();
		Map<String, String> param=new HashMap<String, String>();
		HttpGetMap httpGetMap=new HttpGetMap();
		param= httpGetMap.requestGetMap(request);
		String AGENTMANGER_ID=(String) param.get("AGENTMANGER_ID");
		String BUSINESS_ID=(String) param.get("BUSINESS_ID");
		String FLAG=(String) param.get("FLAG");
		pd.put("BUSINESS_ID", BUSINESS_ID);
		pd.put("AGENTMANGER_ID", AGENTMANGER_ID);
		
		try {
			PageData buDa=agentbusinessService.findById(pd);
			buDa.put("BUSINESS_ID", buDa.getString("BUSINESS_ID"));
			buDa.put("FLAG", FLAG);
			agentbusinessService.edit(buDa);
			PageData buDa1=agentbusinessService.findById(pd);
			result.put("FLAG", buDa1.getString("FLAG"));
			result.put("msg", "1");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result.put("msg", "0");
		}
		return JSON.toJSONString(result,SerializerFeature.WriteDateUseDateFormat);
	}
	
	/**
	 * 修改详情中产品折扣
	 * 
	 * @param myfile
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("/editXQZK")
	@ResponseBody
	public String  editXQZK(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> result = new HashMap<String, Object>();
		PageData pd = new PageData();
		Map<String, String> param=new HashMap<String, String>();
		HttpGetMap httpGetMap=new HttpGetMap();
		param= httpGetMap.requestGetMap(request);
		String AGENTMANGER_ID=(String) param.get("AGENTMANGER_ID");
		String BUSINESS_ID=(String) param.get("BUSINESS_ID");
		String SALE=(String) param.get("SALE");
		pd.put("BUSINESS_ID", BUSINESS_ID);
		pd.put("AGENTMANGER_ID", AGENTMANGER_ID);
		
		try {
			PageData buDa=agentbusinessService.findById(pd);
			buDa.put("BUSINESS_ID", buDa.getString("BUSINESS_ID"));
			BigDecimal a;
			BigDecimal b;
			a = new BigDecimal(SALE);
			b = new BigDecimal(10);
			System.out.print(a.divide(b, 2, RoundingMode.HALF_UP));
			String q=a.divide(b, 2, RoundingMode.HALF_UP).toString();
			buDa.put("SALE", q);
			
			agentbusinessService.edit(buDa);
			PageData buDa1=agentbusinessService.findById(pd);
			BigDecimal b1 = new BigDecimal(buDa1.getString("SALE"));   
			BigDecimal b2 = new BigDecimal(10);   
			Double saString=b1.multiply(b2).doubleValue();  
			result.put("SALE", saString.toString());
			result.put("msg", "1");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result.put("msg", "0");
		}
		return JSON.toJSONString(result,SerializerFeature.WriteDateUseDateFormat);
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out){
		logBefore(logger, "删除AgentManger");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			agentmangerService.delete(pd);
			out.write("success");
			out.close();
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
	}
	
	/**
	 * 上传tupian
	 * 
	 * @param myfile
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("/uploadPhoto1")
	@ResponseBody
	public String  uploadPhoto1(@RequestParam MultipartFile myfile, HttpServletRequest request, HttpServletResponse response) throws IOException {
		Map<String, Object> result = new HashMap<String, Object>();
		Subject currentUser = SecurityUtils.getSubject();
		Session session = currentUser.getSession();
		try {
			User user;
			user= (User) session.getAttribute(Const.SESSION_USER);
			String userId="";
			if(user!=null){
				userId =user.getUSER_ID();
			}
			if (myfile.isEmpty()) {
				result.put("flag", 0);
				result.put("msg", "请选择文件后上传");
			} else {
				// 定义图片存储路径
				String path = "upload/user/" +this.get32UUID() + "/";
				String fileName = this.get32UUID();
				OSSUtils1.uploadFileOfOSS(path + fileName + ".jpg", myfile);
				result.put("flag", 1);
				result.put("msg", path + fileName + ".jpg");
				request.getSession().setAttribute("shareImg",path + fileName + ".jpg");
				
			}
		} catch (Exception e) {
			e.printStackTrace();
			result.put("flag", 0);
		}
		return JSON.toJSONString(result,SerializerFeature.WriteDateUseDateFormat);
	}
	/**
	 * 列表
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page){
		logBefore(logger, "列表AgentManger");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		PageData pd11 = new PageData();
		try{
			pd = this.getPageData();
			
			String AGENTMANGER_ID=pd.getString("AGENTMANGER_ID");
			String FLAG=pd.getString("FLAG");
			String XQ1=pd.getString("XQ");
			if (null==XQ1||"".equals(XQ1)) {
				if (null!=AGENTMANGER_ID&&!"".equals(AGENTMANGER_ID)&&null!=FLAG&&!"".equals(FLAG)) {
					PageData pd1 = agentmangerService.findById(pd);
					pd1.put("AGENTMANGER_ID", pd.getString("AGENTMANGER_ID"));
					pd1.put("FLAG", FLAG);
					agentmangerService.edit(pd1);
				}
				
				
				String PHONE = pd.getString("PHONE");
				
				if (null != PHONE && !"".equals(PHONE)) {
					PHONE = PHONE.trim();
					pd11.put("PHONE", PHONE);
				}
				
				String AGENTAREA = pd.getString("AGENTAREA");

				if (null != AGENTAREA && !"".equals(AGENTAREA)) {
					AGENTAREA = AGENTAREA.trim();
					pd11.put("AGENTAREA", AGENTAREA);
				}
				String lastLoginStart = pd.getString("lastLoginStart");
				String lastLoginEnd = pd.getString("lastLoginEnd");

				if (lastLoginStart != null && !"".equals(lastLoginStart)) {
					lastLoginStart = lastLoginStart + " 00:00:00";
					pd.put("lastLoginStart", lastLoginStart);
				}
				if (lastLoginEnd != null && !"".equals(lastLoginEnd)) {
					lastLoginEnd = lastLoginEnd + " 00:00:00";
					pd.put("lastLoginEnd", lastLoginEnd);
				}
				
			}
			
			PageData pd14 = new PageData();
			pd14 = this.getPageData();
			String XQ=pd14.getString("XQ");
			if(null!=XQ&&!"".equals(XQ)&&"XQ".equals(XQ)){
				String SALE1=pd14.getString("SALE");
				String idString=pd14.getString("AGENTMANGER_ID");
				if (null!=SALE1 && !"".equals(SALE1)) {
					String[] SALEs = SALE1.split(";");
					agentbusinessService.deleteAgent(pd14);
					for(int i=0;i<SALEs.length;i++){
						String idStringq= this.get32UUID();
						PageData pd1 = new PageData();
						PageData pd2 = new PageData();
						pd2.put("AGENTBUSINESS_ID",  idStringq);//zhujian关系
						pd2.put("BUSINESS_ID",  SALEs[i]);
						pd1.put("BUSINESS_ID", SALEs[i]);
						PageData busData=businessService.findById(pd1);
						pd2.put("BUSINESSNAME", busData.getString("BUSINESS_NAME"));
						pd2.put("FLAG", "0");
						pd2.put("AGENTMANGER_ID", idString);
						BigDecimal a;
						BigDecimal b;
						a = new BigDecimal(pd.getString("SAL"+SALEs[i]));
						b = new BigDecimal(10);
						System.out.print(a.divide(b, 2, RoundingMode.HALF_UP));
						String q=a.divide(b, 2, RoundingMode.HALF_UP).toString();
						pd2.put("SALE", q);
						pd2.put("BUSINESS_NUM", "0");
						pd2.put("HAS_SALE", "0");
						pd2.put("UNIT_PRICE", "0.00");
						agentbusinessService.save(pd2);
					}
				}
				PageData pd1 = agentmangerService.findById(pd);
				String PWD=pd.getString("PWD");
				if (null!=PWD&&!"".equals(PWD)) {
					PWD=MD5.md5(PWD);
					pd14.put("PWD", PWD);
				}else {
					pd14.put("PWD", pd1.getString("PWD"));
				}
				pd14.put("CREATETIME", (Date)pd1.get("CREATETIME"));
				pd14.put("AGENTMANGER_ID", pd1.getString("AGENTMANGER_ID"));
				agentmangerService.edit(pd14);
			}
			
			
			
			page.setPd(pd11);
			List<PageData>	varList = agentmangerService.list(page);	//列出AgentManger列表
			List<PageData>	nameList=new ArrayList<PageData>();
			List<String>	usernameList=new ArrayList<String>();
			for (int i = 0; i < varList.size(); i++) {
				String nameString="";
				PageData pd1 = new PageData();
				PageData pd2 = new PageData();
				PageData pd3 = new PageData();
				PageData pData=varList.get(i);
				pd2.put("USER_ID", pData.getString("USERID"));
				
				PageData user=userService.findByUiId(pd2);
				String username = "";
				if (null!=user) {
					username=user.getString("USERNAME");
				}
				pd3.put("AGENTMANGER_ID", pData.getString("AGENTMANGER_ID"));
				PageData ACCOUNT=agentaccountService.findByIdAgent(pd3);
				String ACCOUNT_MONEY="0.00";
				if (null!=ACCOUNT.getString("ACCOUNT_MONEY")) {
					ACCOUNT_MONEY=ACCOUNT.getString("ACCOUNT_MONEY");
				}
				 
				//String xx=FormatFloat("##.##",aa);
				usernameList.add(username);
				List<PageData>	List=agentbusinessService.listAll(pData);
				if (null!=List&& List.size()>0) {
					for (int j = 0; j < List.size(); j++) {
						if(nameString==""){
							nameString = nameString + List.get(j).getString("BUSINESSNAME");
				    	}else{
				    		nameString = nameString +"<br/>"+ List.get(j).getString("BUSINESSNAME");
				    	}
					}
				}
				//nameList.add(nameString);
				
				pd1.put("ACCOUNT_MONEY", ACCOUNT_MONEY);
				pd1.put("nameString", nameString);
				pd1.put("username", username);
				pd1.put("varList",varList.get(i));
				nameList.add(pd1);
			}
			mv.setViewName("admin/agentmanger/agentmanger_list");
			mv.addObject("varList", varList);
			mv.addObject("nameList", nameList);
			mv.addObject("usernameList", usernameList);
			mv.addObject("pd", pd11);
			mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**
	 * 去新增页面
	 */
	@RequestMapping(value="/goAdd")
	public ModelAndView goAdd(){
		logBefore(logger, "去新增AgentManger页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			PageData pd1 = new PageData();
			List<PageData>	busList = businessService.listAll(pd1);
			List<PageData>	proList = provinceService.listAll(pd1);	
			mv.setViewName("admin/agentmanger/agentmanger_edit");
			mv.addObject("msg", "save");
			mv.addObject("busList", busList);
			mv.addObject("proList", proList);
			mv.addObject("pd", pd);
			mv.addObject("msg3", "0");
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	
	
	/**
	 * 去折扣页面
	 */
	@RequestMapping(value="/goZK")
	public ModelAndView goZK(){
		logBefore(logger, "去折扣AgentManger页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			PageData pd1 = new PageData();
			List<PageData>	busList = businessService.listAll(pd1);
			List<PageData>	proList = provinceService.listAll(pd1);	
			mv.setViewName("admin/agentmanger/agentmanger_edit");
			mv.addObject("msg", "save");
			mv.addObject("busList", busList);
			mv.addObject("proList", proList);
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	
	
	/**
	 * 去修改页面
	 */
	@RequestMapping(value="/goEdit")
	public ModelAndView goEdit(){
		logBefore(logger, "去修改AgentManger页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String AGENTMANGER_ID=pd.getString("AGENTMANGER_ID");
		try {
			List<String> list= new ArrayList<String>();
			List<String> list1= new ArrayList<String>();
			List<String> list2= new ArrayList<String>();
			List<String> list3= new ArrayList<String>();
			PageData pd2 = new PageData();
			List<PageData>	busList = businessService.listAll(pd2);
			List<PageData>	List=agentbusinessService.listAll(pd);
			List<PageData>	jiaoList = new ArrayList<PageData>();
			List<PageData>	chaList = new ArrayList<PageData>();
			if (null!=List&& List.size()>0) {
				for (int j = 0; j < List.size(); j++) {
					list.add(List.get(j).getString("BUSINESS_ID"));
					list2.add(List.get(j).getString("BUSINESS_ID"));
					
				}
			}
			if (null!=busList&& busList.size()>0) {
				for (int q = 0; q < busList.size(); q++) {
					list1.add(busList.get(q).getString("BUSINESS_ID"));
					list3.add(busList.get(q).getString("BUSINESS_ID"));
				}
			}
			list1.removeAll(list);//差集
			list3.retainAll(list2);//交集
			//差集
			for (int i = 0; i < list1.size(); i++) {
				PageData pd1 = new PageData();
				pd1.put("BUSINESS_ID", list1.get(i));
				PageData buData=businessService.findById(pd1);
				chaList.add(buData);
			}
			//交集
			String SALE="";
			for (int i = 0; i < list3.size(); i++) {
				PageData pd1 = new PageData();
				PageData pd4 = new PageData();
				PageData pd3 = new PageData();
				pd1.put("BUSINESS_ID", list3.get(i));
				if(SALE==""){
					SALE = SALE + list3.get(i);
		    	}else{
		    		SALE = SALE +";"+ list3.get(i);
		    	}
				PageData buData=businessService.findById(pd1);
				pd4.put("BUSINESS_ID", list3.get(i));
				pd4.put("AGENTMANGER_ID", AGENTMANGER_ID);
				PageData buDa=agentbusinessService.findById(pd4);
				pd3.put("BUSINESS_NAME", buData.getString("BUSINESS_NAME"));
				pd3.put("BUSINESS_ID", list3.get(i));
				BigDecimal b1 = new BigDecimal((buDa.getString("SALE")));   
				BigDecimal b2 = new BigDecimal(10);   
				Double saString=b1.multiply(b2).doubleValue();  
				pd3.put("SALE", saString.toString());
				pd3.put("SALE1", buDa.getString("SALE"));
				jiaoList.add(pd3);
			}
			pd = agentmangerService.findById(pd);	//根据ID读取
			
			mv.setViewName("admin/agentmanger/agentmanger_edit1");
			mv.addObject("msg", "edit");
			PageData pd1 = new PageData();
			List<PageData>	proList = provinceService.listAll(pd1);	
			mv.addObject("msg", "list");
			mv.addObject("proList", proList);
			mv.addObject("jiaoList", jiaoList);
			mv.addObject("chaList", chaList);
			mv.addObject("SALE", SALE);
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	
	
	/**
	 * 去详情修改页面
	 * @throws Exception 
	 */
	@RequestMapping(value="/goXQEdit")
	public ModelAndView goXQEdit(){
		logBefore(logger, "去详情修改AgentManger页面");
		
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String AGENTMANGER_ID=pd.getString("AGENTMANGER_ID");
		try {
			
			
			List<String> list= new ArrayList<String>();
			List<String> list1= new ArrayList<String>();
			List<String> list2= new ArrayList<String>();
			List<String> list3= new ArrayList<String>();
			PageData pd2 = new PageData();
			List<PageData>	busList = businessService.listAll(pd2);
			List<PageData>	List=agentbusinessService.listAll(pd);
			List<PageData>	jiaoList = new ArrayList<PageData>();
			List<PageData>	chaList = new ArrayList<PageData>();
			if (null!=List&& List.size()>0) {
				for (int j = 0; j < List.size(); j++) {
					list.add(List.get(j).getString("BUSINESS_ID"));
					list2.add(List.get(j).getString("BUSINESS_ID"));
					
				}
			}
			if (null!=busList&& busList.size()>0) {
				for (int q = 0; q < busList.size(); q++) {
					list1.add(busList.get(q).getString("BUSINESS_ID"));
					list3.add(busList.get(q).getString("BUSINESS_ID"));
				}
			}
			list1.removeAll(list);//差集
			list3.retainAll(list2);//交集
			//差集
			for (int i = 0; i < list1.size(); i++) {
				PageData pd1 = new PageData();
				pd1.put("BUSINESS_ID", list1.get(i));
				PageData buData=businessService.findById(pd1);
				chaList.add(buData);
			}
			//交集
			String SALE="";
			for (int i = 0; i < list3.size(); i++) {
				PageData pd1 = new PageData();
				PageData pd4 = new PageData();
				PageData pd3 = new PageData();
				pd1.put("BUSINESS_ID", list3.get(i));
				if(SALE==""){
					SALE = SALE + list3.get(i);
		    	}else{
		    		SALE = SALE +";"+ list3.get(i);
		    	}
				PageData buData=businessService.findById(pd1);
				pd4.put("BUSINESS_ID", list3.get(i));
				pd4.put("AGENTMANGER_ID", AGENTMANGER_ID);
				PageData buDa=agentbusinessService.findById(pd4);
				pd3.put("BUSINESS_NAME", buData.getString("BUSINESS_NAME"));
				pd3.put("BUSINESS_ID", list3.get(i));
				BigDecimal b1 = new BigDecimal((buDa.getString("SALE")));   
				BigDecimal b2 = new BigDecimal(10);   
				Double saString=b1.multiply(b2).doubleValue();   
				pd3.put("SALE", saString.toString());
				pd3.put("SALE1", buDa.getString("SALE"));
				jiaoList.add(pd3);
			}
			pd = agentmangerService.findById(pd);	//根据ID读取
			
			mv.setViewName("admin/agentmanger/agentmanger_editXQ");
			mv.addObject("msg", "edit");
			PageData pd1 = new PageData();
			List<PageData>	proList = provinceService.listAll(pd1);	
			mv.addObject("msg", "goDatil");
			mv.addObject("proList", proList);
			mv.addObject("jiaoList", jiaoList);
			mv.addObject("chaList", chaList);
			mv.addObject("SALE", SALE);
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	
	
	/**
	 * 去详情页面
	 */
	@RequestMapping(value="/goDatil")
	public ModelAndView goDatil(){
		logBefore(logger, "去详情AgentManger页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String nameString="";
		String AGENTMANGER_ID=pd.getString("AGENTMANGER_ID");
		
		try {
			String FLAG=pd.getString("FLAG");
			if (null!=AGENTMANGER_ID&&!"".equals(AGENTMANGER_ID)&&null!=FLAG&&!"".equals(FLAG)) {
				PageData pd1 = agentmangerService.findById(pd);
				pd1.put("AGENTMANGER_ID", pd.getString("AGENTMANGER_ID"));
				pd1.put("FLAG", FLAG);
				agentmangerService.edit(pd1);
				
			}
			
			
			PageData pd14 = new PageData();
			pd14 = this.getPageData();
			String XQ=pd14.getString("XQ");
			if(null!=XQ&&!"".equals(XQ)&&"XQ".equals(XQ)){
				String SALE1=pd14.getString("SALE");
				String idString=pd14.getString("AGENTMANGER_ID");
				if (null!=SALE1 && !"".equals(SALE1)) {
					String[] SALEs = SALE1.split(";");
					agentbusinessService.deleteAgent(pd14);
					for(int i=0;i<SALEs.length;i++){
						String idStringq= this.get32UUID();
						PageData pd1 = new PageData();
						PageData pd2 = new PageData();
						pd2.put("AGENTBUSINESS_ID",  idStringq);//zhujian关系
						pd2.put("BUSINESS_ID",  SALEs[i]);
						pd1.put("BUSINESS_ID", SALEs[i]);
						PageData busData=businessService.findById(pd1);
						pd2.put("BUSINESSNAME", busData.getString("BUSINESS_NAME"));
						pd2.put("FLAG", "0");
						pd2.put("AGENTMANGER_ID", idString);
						BigDecimal a;
						BigDecimal b;
						a = new BigDecimal(pd.getString("SAL"+SALEs[i]));
						b = new BigDecimal(10);
						System.out.print(a.divide(b, 2, RoundingMode.HALF_UP));
						String q=a.divide(b, 2, RoundingMode.HALF_UP).toString();
						pd2.put("SALE", q);
						pd2.put("BUSINESS_NUM", "0");
						pd2.put("HAS_SALE", "0");
						pd2.put("UNIT_PRICE", "0.00");
						agentbusinessService.save(pd2);
					}
				}
				PageData pd1 = agentmangerService.findById(pd);
				String PWD=pd.getString("PWD");
				if (null!=PWD&&!"".equals(PWD)) {
					PWD=MD5.md5(PWD);
					pd14.put("PWD", PWD);
				}else {
					pd14.put("PWD", pd1.getString("PWD"));
				}
				pd14.put("CREATETIME", (Date)pd1.get("CREATETIME"));
				pd14.put("AGENTMANGER_ID", pd1.getString("AGENTMANGER_ID"));
				agentmangerService.edit(pd14);
			}
			List<PageData>	ListCP=agentbusinessService.listAll(pd);
			if (null!=ListCP&& ListCP.size()>0) {
				for (int j = 0; j < ListCP.size(); j++) {
					if(nameString==""){
						nameString = nameString + ListCP.get(j).getString("BUSINESSNAME");
			    	}else{
			    		nameString = nameString +" "+ ListCP.get(j).getString("BUSINESSNAME");
			    	}
				}
			}
			
			List<String> list= new ArrayList<String>();
			List<String> list1= new ArrayList<String>();
			List<String> list2= new ArrayList<String>();
			List<String> list3= new ArrayList<String>();
			PageData pd2 = new PageData();
			List<PageData>	busList = businessService.listAll(pd2);
			List<PageData>	List=agentbusinessService.listAll(pd);
			List<PageData>	jiaoList = new ArrayList<PageData>();
			List<PageData>	chaList = new ArrayList<PageData>();
			if (null!=List&& List.size()>0) {
				for (int j = 0; j < List.size(); j++) {
					list.add(List.get(j).getString("BUSINESS_ID"));
					list2.add(List.get(j).getString("BUSINESS_ID"));
					
				}
			}
			if (null!=busList&& busList.size()>0) {
				for (int q = 0; q < busList.size(); q++) {
					list1.add(busList.get(q).getString("BUSINESS_ID"));
					list3.add(busList.get(q).getString("BUSINESS_ID"));
				}
			}
			list1.removeAll(list);//差集
			list3.retainAll(list2);//交集
			//差集
			for (int i = 0; i < list1.size(); i++) {
				PageData pd1 = new PageData();
				pd1.put("BUSINESS_ID", list1.get(i));
				PageData buData=businessService.findById(pd1);
				chaList.add(buData);
			}
			//交集
			String SALE="";
			for (int i = 0; i < list3.size(); i++) {
				PageData pd1 = new PageData();
				PageData pd4 = new PageData();
				PageData pd3 = new PageData();
				pd1.put("BUSINESS_ID", list3.get(i));
				if(SALE==""){
					SALE = SALE + list3.get(i);
		    	}else{
		    		SALE = SALE +";"+ list3.get(i);
		    	}
				PageData buData=businessService.findById(pd1);
				pd4.put("BUSINESS_ID", list3.get(i));
				pd4.put("AGENTMANGER_ID", AGENTMANGER_ID);
				PageData buDa=agentbusinessService.findById(pd4);
				pd3.put("BUSINESS_NAME", buData.getString("BUSINESS_NAME"));
				pd3.put("BUSINESS_ID", list3.get(i));
				BigDecimal b1 = new BigDecimal((buDa.getString("SALE")));   
				BigDecimal b2 = new BigDecimal(10);   
				Double saString=b1.multiply(b2).doubleValue();  
				pd3.put("SALE", saString.toString());
				pd3.put("SALE1", buDa.getString("SALE"));
				pd3.put("FLAG", buDa.getString("FLAG"));
				
				jiaoList.add(pd3);
			}
			pd = agentmangerService.findById(pd);	//根据ID读取
			
			mv.setViewName("admin/agentmanger/agentmanger_datil");
			mv.addObject("msg", "edit");
			PageData pd1 = new PageData();
			List<PageData>	proList = provinceService.listAll(pd1);	
			mv.addObject("msg", "editXQDJ");
			mv.addObject("proList", proList);
			mv.addObject("jiaoList", jiaoList);
			mv.addObject("nameString", nameString);
			mv.addObject("chaList", chaList);
			mv.addObject("SALE", SALE);
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	
	/**
	 * 批量删除
	 */
	@RequestMapping(value="/deleteAll")
	@ResponseBody
	public Object deleteAll() {
		logBefore(logger, "批量删除AgentManger");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "dell")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if(null != DATA_IDS && !"".equals(DATA_IDS)){
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				agentmangerService.deleteAll(ArrayDATA_IDS);
				pd.put("msg", "ok");
			}else{
				pd.put("msg", "no");
			}
			pdList.add(pd);
			map.put("list", pdList);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		} finally {
			logAfter(logger);
		}
		return AppUtil.returnObject(pd, map);
	}
	
	/*
	 * 导出到excel
	 * @return
	 */
	@RequestMapping(value="/excel")
	public ModelAndView exportExcel(){
		logBefore(logger, "导出AgentManger到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try{
			Map<String,Object> dataMap = new HashMap<String,Object>();
			List<String> titles = new ArrayList<String>();
			titles.add("代理商用户名");	//1
			titles.add("代理商登录密码");	//2
			titles.add("代理商名");	//3
			titles.add("代理商省份");	//4
			titles.add("代理商区域");	//5
			titles.add("联系人");	//6
			titles.add("联系电话");	//7
			titles.add("代理商负责人姓名");	//8
			titles.add("代理商负责人电话");	//9
			titles.add("代理商负责人身份证");	//10
			titles.add("代理商负责人身份证正面照片");	//11
			titles.add("代理商负责人身份证反面照片");	//12
			titles.add("代理商公司名");	//13
			titles.add("组织机构代码");	//14
			titles.add("代理商营业执照");	//15
			titles.add("创建时间");	//16
			dataMap.put("titles", titles);
			List<PageData> varOList = agentmangerService.listAll(pd);
			List<PageData> varList = new ArrayList<PageData>();
			for(int i=0;i<varOList.size();i++){
				PageData vpd = new PageData();
				vpd.put("var1", varOList.get(i).getString("USERNAME"));	//1
				vpd.put("var2", varOList.get(i).getString("PWD"));	//2
				vpd.put("var3", varOList.get(i).getString("AGENTNAME"));	//3
				vpd.put("var4", varOList.get(i).getString("AGENTPROVINCE"));	//4
				vpd.put("var5", varOList.get(i).getString("AGENTAREA"));	//5
				vpd.put("var6", varOList.get(i).getString("CONTACTS"));	//6
				vpd.put("var7", varOList.get(i).getString("PHONE"));	//7
				vpd.put("var8", varOList.get(i).getString("AGENTLEADNAME"));	//8
				vpd.put("var9", varOList.get(i).getString("AGENTLEADPHONE"));	//9
				vpd.put("var10", varOList.get(i).getString("CARDNO"));	//10
				vpd.put("var11", varOList.get(i).getString("CARDZHENGIMG"));	//11
				vpd.put("var12", varOList.get(i).getString("CARDFANIMG"));	//12
				vpd.put("var13", varOList.get(i).getString("AGENTCOMPANY"));	//13
				vpd.put("var14", varOList.get(i).getString("COMPANYNO"));	//14
				vpd.put("var15", varOList.get(i).getString("BUSINESSLICENCE"));	//15
				vpd.put("var16", varOList.get(i).getString("CREATETIME"));	//16
				varList.add(vpd);
			}
			dataMap.put("varList", varList);
			ObjectExcelView erv = new ObjectExcelView();
			mv = new ModelAndView(erv,dataMap);
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/* ===============================权限================================== */
	public Map<String, String> getHC(){
		Subject currentUser = SecurityUtils.getSubject();  //shiro管理的session
		Session session = currentUser.getSession();
		return (Map<String, String>)session.getAttribute(Const.SESSION_QX);
	}
	/* ===============================权限================================== */
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
}
