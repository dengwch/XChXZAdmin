package com.fh.controller.businessPackage.businesspackage;

import java.io.IOException;
import java.io.PrintWriter;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.entity.system.User;
import com.fh.util.AppUtil;
import com.fh.util.HttpGetMap;
import com.fh.util.ObjectExcelView;
import com.fh.util.Const;
import com.fh.util.PageData;
import com.fh.util.Tools;
import com.fh.util.Jurisdiction;
import com.fh.service.businessPackage.businesspackage.BusinessPackageService;
import com.fh.service.distributor.business.BusinessService;
import com.sun.org.apache.bcel.internal.generic.NEW;

/** 
 * 类名称：BusinessPackageController
 * 创建人：FH 
 * 创建时间：2017-03-27
 */
@Controller
@RequestMapping(value="/businesspackage")
public class BusinessPackageController extends BaseController {
	
	String menuUrl = "businesspackage/list.do"; //菜单地址(权限用)
	@Resource(name="businesspackageService")
	private BusinessPackageService businesspackageService;
	@Resource(name="businessService")
	private BusinessService businessService;
	/**
	 * 新增
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, "新增BusinessPackage");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		Subject currentUser = SecurityUtils.getSubject();
		Session session = currentUser.getSession();
		User user;
		user= (User) session.getAttribute(Const.SESSION_USER);
		String USERID="";
		if(user!=null){
			USERID =user.getUSER_ID();
		}
		pd.put("BUSINESSPACKAGE_ID", this.get32UUID());	//主键
		pd.put("CREATETIME", new Date());
		pd.put("USERID",USERID);
		pd.put("FLAG","1");
		
		businesspackageService.save(pd);
		
		
		
		
		
		//pd = businessService.findById(pd);	//根据ID读取
		PageData pd1 = new PageData();
		pd1.put("BUSINESS_ID", pd.getString("BUSINESS_ID"));
		PageData pd2= businessService.findById(pd1);
		if (null!=pd2) {
			pd.put("BUSINESS_NAME", pd2.getString("BUSINESS_NAME"));
			pd.put("BUSINESS_DESCRIBE", pd2.getString("BUSINESS_DESCRIBE"));
			pd.put("FWF", pd2.getString("FWF"));
			
		}
		List<PageData>	varList = businesspackageService.listAll(pd1);
		mv.setViewName("distributor/business/business_add");
		mv.addObject("msg", "save");
		mv.addObject("varList", varList);
		
		mv.addObject("pd", pd);
		
		return mv;
	}
	
	/**
	 * 校验套餐名
	 * 
	 * @param myfile
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("/checkName")
	@ResponseBody
	public String  checkName(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> result = new HashMap<String, Object>();
		PageData pd = new PageData();
		Map<String, String> param=new HashMap<String, String>();
		HttpGetMap httpGetMap=new HttpGetMap();
		param= httpGetMap.requestGetMap(request);
		String PACKAGENAME=(String) param.get("PACKAGENAME");
		String BUSINESS_ID=(String) param.get("BUSINESS_ID");
		String BUSINESSPACKAGE_ID=(String) param.get("BUSINESSPACKAGE_ID");
		pd.put("PACKAGENAME", PACKAGENAME);
		pd.put("BUSINESS_ID", BUSINESS_ID);
		pd.put("BUSINESSPACKAGE_ID", BUSINESSPACKAGE_ID);
		try {
			if (null!=BUSINESSPACKAGE_ID&&!"".equals(BUSINESSPACKAGE_ID)&&null!=PACKAGENAME&&!"".equals(PACKAGENAME)) {
				PageData pd2= businesspackageService.findById(pd);
				if(pd2.getString("PACKAGENAME").equals(PACKAGENAME)){
					result.put("msg", "1");
				}else {
					PageData pd1= businesspackageService.findByName(pd);
					if (pd1 != null) {
						result.put("msg", "-1");
					}else{
						result.put("msg", "1");
					}
				}
			}else {
				PageData pd2= businesspackageService.findByName(pd);
				if (pd2 != null) {
					result.put("msg", "-1");
				}else{
					result.put("msg", "1");
				}
			}
			
			
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
		logBefore(logger, "删除BusinessPackage");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			businesspackageService.delete(pd);
			out.write("success");
			out.close();
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
	}
	
	/**
	 * 修改
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, "修改BusinessPackage");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String YW=pd.getString("YW");
		if (null!=YW&&!"".equals(YW)&&"YW".equals(YW.replaceAll(" ",""))) {
			PageData pd1 = businesspackageService.findById(pd);	//根据ID读取
			pd1.put("BUSINESS_ID", pd.getString("BUSINESS_ID"));
			pd.put("CREATETIME", (Date)pd1.get("CREATETIME"));
			pd.put("USERID", pd1.getString("USERID"));
			pd.put("FLAG", pd1.getString("FLAG"));
			pd.put("DAYS", pd1.getString("DAYS"));
			businesspackageService.edit(pd);
			PageData pd2 = new PageData();
			pd2.put("BUSINESS_ID", pd.getString("BUSINESS_ID"));
			PageData pd3= businessService.findById(pd2);
			if (null!=pd3) {
				pd.put("BUSINESS_NAME", pd3.getString("BUSINESS_NAME"));
				pd.put("BUSINESS_DESCRIBE", pd3.getString("BUSINESS_DESCRIBE"));
				pd.put("FWF", pd3.getString("FWF"));
			}
			List<PageData>	varList = businesspackageService.listAll(pd2);
			mv.addObject("varList", varList);
			mv.setViewName("distributor/business/business_add");
			mv.addObject("msg", "save");
			mv.addObject("pd", pd);
			
		}else {
			PageData pd1 = businesspackageService.findById(pd);	//根据ID读取
			pd1.put("BUSINESS_ID", pd.getString("BUSINESS_ID"));
			pd.put("CREATETIME", (Date)pd1.get("CREATETIME"));
			pd.put("USERID", pd1.getString("USERID"));
			pd.put("FLAG", pd1.getString("FLAG"));
			pd.put("DAYS", pd1.getString("DAYS"));
			businesspackageService.edit(pd);
			PageData pd2 = businesspackageService.findById(pd);
			PageData pd3= businessService.findById(pd1);
			if (null!=pd3) {
				pd2.put("BUSINESS_NAME", pd3.getString("BUSINESS_NAME"));
				pd2.put("BUSINESS_DESCRIBE", pd3.getString("BUSINESS_DESCRIBE"));
				pd2.put("FWF", pd3.getString("FWF"));
			}
			mv.setViewName("businessPackage/businesspackage/businesspackage_datil");
			mv.addObject("msg", "goDatil");
			mv.addObject("pd", pd2);
		}
		
		
		return mv;
	}
	
	/**
	 * 列表
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page){
		logBefore(logger, "列表BusinessPackage");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData>	varList = businesspackageService.list(page);	//列出BusinessPackage列表
			mv.setViewName("businessPackage/businesspackage/businesspackage_list");
			mv.addObject("varList", varList);
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**
	 * 去新增页面
	 */
	@RequestMapping(value="/goAdd2")
	public ModelAndView goAdd(){
		logBefore(logger, "去新增BusinessPackage页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			mv.setViewName("businessPackage/businesspackage/businesspackage_add");
			mv.addObject("msg", "save");
			PageData pd2= businessService.findById(pd);
			if (null!=pd2) {
				pd.put("BUSINESS_NAME", pd2.getString("BUSINESS_NAME"));
				pd.put("BUSINESS_DESCRIBE", pd2.getString("BUSINESS_DESCRIBE"));
				pd.put("FWF", pd2.getString("FWF"));
			}
			
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	/**
	 * 去业务套餐新增页面
	 */
	@RequestMapping(value="/goAddYW")
	public ModelAndView goAddYW(){
		logBefore(logger, "去新增goAddYW页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			mv.setViewName("businessPackage/businesspackage/businesspackage_YWadd");
			mv.addObject("msg", "save");
			PageData pd2= businessService.findById(pd);
			if (null!=pd2) {
				pd.put("BUSINESS_NAME", pd2.getString("BUSINESS_NAME"));
				pd.put("BUSINESS_DESCRIBE", pd2.getString("BUSINESS_DESCRIBE"));
				pd.put("FWF", pd2.getString("FWF"));
			}
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
		logBefore(logger, "去修改BusinessPackage页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String qw=pd.getString("qw");
		try {
			if (null!=qw&&!"".equals(qw)&&"1".equals(qw.replaceAll(" ", ""))) {
				PageData pd1 = businesspackageService.findById(pd);	//根据ID读取
				pd1.put("BUSINESS_ID", pd.getString("BUSINESS_ID"));
				
				pd1.put("BUSINESS_NAME", pd.getString("BUSINESS_NAME"));
				pd1.put("BUSINESS_DESCRIBE", pd.getString("BUSINESS_DESCRIBE"));
				pd1.put("FWF", pd.getString("FWF"));
				mv.setViewName("businessPackage/businesspackage/businesspackage_YWedit");
				mv.addObject("msg", "edit");
				mv.addObject("pd", pd1);
			}else {
				PageData pd1 = businesspackageService.findById(pd);	//根据ID读取
				pd1.put("BUSINESS_ID", pd.getString("BUSINESS_ID"));
				PageData pd2= businessService.findById(pd1);
				if (null!=pd2) {
					pd1.put("BUSINESS_NAME", pd2.getString("BUSINESS_NAME"));
					pd1.put("BUSINESS_DESCRIBE", pd2.getString("BUSINESS_DESCRIBE"));
					pd1.put("FWF", pd2.getString("FWF"));
				}
				
				mv.setViewName("businessPackage/businesspackage/businesspackage_edit");
				mv.addObject("msg", "edit");
				mv.addObject("pd", pd1);
			}
			
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
		logBefore(logger, "去详情BusinessPackage页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			
			PageData pd1 = businesspackageService.findById(pd);	//根据ID读取
			pd1.put("BUSINESS_ID", pd.getString("BUSINESS_ID"));
			PageData pd2= businessService.findById(pd1);
			if (null!=pd2) {
				pd1.put("BUSINESS_NAME", pd2.getString("BUSINESS_NAME"));
				pd1.put("BUSINESS_DESCRIBE", pd2.getString("BUSINESS_DESCRIBE"));
				pd1.put("FWF", pd2.getString("FWF"));
			}
			
			mv.setViewName("businessPackage/businesspackage/businesspackage_datil");
			mv.addObject("msg", "goDatil");
			mv.addObject("pd", pd1);
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
		logBefore(logger, "批量删除BusinessPackage");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "dell")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if(null != DATA_IDS && !"".equals(DATA_IDS)){
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				businesspackageService.deleteAll(ArrayDATA_IDS);
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
		logBefore(logger, "导出BusinessPackage到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try{
			Map<String,Object> dataMap = new HashMap<String,Object>();
			List<String> titles = new ArrayList<String>();
			titles.add("套餐ID");	//1
			titles.add("套餐名");	//2
			titles.add("套餐描述");	//3
			titles.add("数量");	//4
			titles.add("套餐定价");	//5
			titles.add("创建时间");	//6
			titles.add("创建人");	//7
			titles.add("0：不可用 1：可用");	//8
			dataMap.put("titles", titles);
			List<PageData> varOList = businesspackageService.listAll(pd);
			List<PageData> varList = new ArrayList<PageData>();
			for(int i=0;i<varOList.size();i++){
				PageData vpd = new PageData();
				vpd.put("var1", varOList.get(i).getString("PACKAGE_ID"));	//1
				vpd.put("var2", varOList.get(i).getString("PACKAGENAME"));	//2
				vpd.put("var3", varOList.get(i).getString("PACKAGE_DESCRIBE"));	//3
				vpd.put("var4", varOList.get(i).getString("COUNT"));	//4
				vpd.put("var5", varOList.get(i).getString("TOTALPRICE"));	//5
				vpd.put("var6", varOList.get(i).getString("CREATETIME"));	//6
				vpd.put("var7", varOList.get(i).getString("USERID"));	//7
				vpd.put("var8", varOList.get(i).getString("FLAG"));	//8
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
