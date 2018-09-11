package com.fh.controller.distributor.business;

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
 * 类名称：BusinessController
 * 创建人：FH 
 * 创建时间：2017-03-27
 */
@Controller
@RequestMapping(value="/business")
public class BusinessController extends BaseController {
	
	String menuUrl = "business/list.do"; //菜单地址(权限用)
	@Resource(name="businessService")
	private BusinessService businessService;
	@Resource(name="businesspackageService")
	private BusinessPackageService businesspackageService;
	/**
	 * 新增
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, "新增Business");
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
			pd.put("CREATETIME", new Date());	//创建时间
			pd.put("USERID", USERID);	//创建人
			pd.put("FLAG", "1");	//1:正常 1：停售
			businessService.save(pd);
			mv.addObject("msg3","1");
			mv.setViewName("distributor/business/business_add");
			mv.addObject("msg", "save");
		
		return mv;
	}
	
	/**
	 * 校验业务名
	 * 
	 * @param myfile
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("/checkBusName")
	@ResponseBody
	public String  checkBusName(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> result = new HashMap<String, Object>();
		PageData pd = new PageData();
		Map<String, String> param=new HashMap<String, String>();
		HttpGetMap httpGetMap=new HttpGetMap();
		param= httpGetMap.requestGetMap(request);
		String BUSINESS_NAME=(String) param.get("BUSINESS_NAME");
		pd.put("BUSINESS_NAME", BUSINESS_NAME);
		try {
			PageData pd2= businessService.findByBUSINESS_NAME(pd);
			if (pd2 != null) {
				result.put("msg", "-1");
			}else{
				result.put("msg", "1");
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
		logBefore(logger, "删除Business");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
				businessService.delete(pd);
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
	public ModelAndView edit(Page page) throws Exception{
		logBefore(logger, "修改Business");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		PageData pd2 = businessService.findById(pd);
		pd2.put("CREATETIME", (Date)pd2.get("CREATETIME"));
		pd2.put("USERID", pd2.getString("USERID"));
		pd2.put("FLAG", pd2.getString("FLAG"));
		businessService.edit(pd2);
		pd = this.getPageData();
		
		String BUSINESS_ID=pd.getString("BUSINESS_ID");
		//操作正常和停售
		String FLAG=pd.getString("FLAG");
		if (null!=BUSINESS_ID&&!"".equals(BUSINESS_ID)&&null!=FLAG&&!"".equals(FLAG)) {
			PageData pd1 = businessService.findById(pd);
			pd1.put("BUSINESS_ID", pd.getString("BUSINESS_ID"));
			pd1.put("FLAG", FLAG);
			businessService.edit(pd1);
		}
		
		
		page.setPd(pd);
		List<PageData>	varList = businessService.list(page);	//列出Business列表
		mv.setViewName("distributor/business/business_list");
		mv.addObject("varList", varList);
		mv.addObject("pd", pd);
		mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 列表
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page){
		logBefore(logger, "列表Business");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			String edid=pd.getString("edid");
			if (null!=edid&&!"".equals(edid)&&"edid".equals(edid.replaceAll(" ", ""))) {
				PageData pd2 = businessService.findById(pd);
				PageData pd3 = new PageData();
				pd3.put("CREATETIME", (Date)pd2.get("CREATETIME"));
				pd3.put("USERID", pd2.getString("USERID"));
				pd3.put("FLAG", pd2.getString("FLAG"));
				
				pd3.put("FWF", pd.getString("FWF"));
				pd3.put("BUSINESS_DESCRIBE", pd.getString("BUSINESS_DESCRIBE"));
				pd3.put("BUSINESS_NAME", pd.getString("BUSINESS_NAME"));
				pd3.put("BUSINESS_ID", pd.getString("BUSINESS_ID"));
				businessService.edit(pd3);
				pd.put("BUSINESS_NAME", "");
			}
			String BUSINESS_ID=pd.getString("BUSINESS_ID");
			//操作正常和停售
			String FLAG=pd.getString("FLAG");
			if (null!=BUSINESS_ID&&!"".equals(BUSINESS_ID)&&null!=FLAG&&!"".equals(FLAG)) {
				PageData pd1 = businessService.findById(pd);
				pd1.put("BUSINESS_ID", pd.getString("BUSINESS_ID"));
				pd1.put("FLAG", FLAG);
				businessService.edit(pd1);
			}
			
			
			page.setPd(pd);
			List<PageData>	varList = businessService.list(page);	//列出Business列表
			mv.setViewName("distributor/business/business_list");
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
	@RequestMapping(value="/goAdd")
	public ModelAndView goAdd(){
		logBefore(logger, "去新增Business页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		if (null==pd.getString("BUSINESS_ID") || "".equals(pd.getString("BUSINESS_ID"))) {
			pd.put("BUSINESS_ID", this.get32UUID());
		}
		
		try {
			String BUSINESSPACKAGE_ID=pd.getString("BUSINESSPACKAGE_ID");
			String type=pd.getString("type");
			//删除新增页面套餐
			if (null!=BUSINESSPACKAGE_ID&&!"".equals(BUSINESSPACKAGE_ID)&&null!=type&&!"".equals(type)&&"del".equals(type.replaceAll(" ", ""))) {
				businesspackageService.delete(pd);
			}
			//新增页面点击取消删除套餐和业务
			if (null!=type&&!"".equals(type)&&"delYW".equals(type.replaceAll(" ", ""))) {
				businesspackageService.deleteYW(pd);
				businessService.delete(pd);
			}
			PageData pd1 = new PageData();
			pd1.put("BUSINESS_ID", pd.getString("BUSINESS_ID"));
			List<PageData>	varList = businesspackageService.listAll(pd1);
			mv.addObject("varList", varList);
			mv.setViewName("distributor/business/business_add");
			mv.addObject("msg", "save");
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
		logBefore(logger, "去修改Business页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			pd = businessService.findById(pd);	//根据ID读取
			mv.setViewName("distributor/business/business_edit");
			mv.addObject("msg", "list");
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
		logBefore(logger, "去修改Business页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			String FLAG=pd.getString("FLAG");
			String BUSINESS_ID=pd.getString("BUSINESS_ID");
			String BUSINESSPACKAGE_ID=pd.getString("BUSINESSPACKAGE_ID");
			//业务详情页面套餐的停售修改
			if (null!=BUSINESSPACKAGE_ID&&!"".equals(BUSINESSPACKAGE_ID)&&null!=FLAG&&!"".equals(FLAG)&&null!=BUSINESS_ID&&!"".equals(BUSINESS_ID)) {
				PageData pd1 = businesspackageService.findById(pd);
				pd1.put("BUSINESSPACKAGE_ID", pd.getString("BUSINESSPACKAGE_ID"));
				pd1.put("FLAG", FLAG);
				businesspackageService.edit(pd1);
				
			}
			pd = businessService.findById(pd);	//根据ID读取
			PageData pd1 = new PageData();
			pd1.put("BUSINESS_ID", pd.getString("BUSINESS_ID"));
			List<PageData>	varList = businesspackageService.listAll(pd1);
			mv.setViewName("distributor/business/business_datil");
			mv.addObject("msg", "goDatil");
			mv.addObject("varList", varList);
			
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
		logBefore(logger, "批量删除Business");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "dell")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if(null != DATA_IDS && !"".equals(DATA_IDS)){
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				businessService.deleteAll(ArrayDATA_IDS);
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
		logBefore(logger, "导出Business到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try{
			Map<String,Object> dataMap = new HashMap<String,Object>();
			List<String> titles = new ArrayList<String>();
			titles.add("业务产品主键");	//1
			titles.add("业务名");	//2
			titles.add("描述");	//3
			titles.add("创建时间");	//4
			titles.add("创建人");	//5
			titles.add("0:失效 1：有效");	//6
			dataMap.put("titles", titles);
			List<PageData> varOList = businessService.listAll(pd);
			List<PageData> varList = new ArrayList<PageData>();
			for(int i=0;i<varOList.size();i++){
				PageData vpd = new PageData();
				vpd.put("var1", varOList.get(i).getString("BUSINESS_ID"));	//1
				vpd.put("var2", varOList.get(i).getString("BUSINESS_NAME"));	//2
				vpd.put("var3", varOList.get(i).getString("BUSINESS_DESCRIBE"));	//3
				vpd.put("var4", (Date)varOList.get(i).get("CREATETIME"));	//4
				vpd.put("var5", varOList.get(i).getString("USERID"));	//5
				vpd.put("var6", varOList.get(i).getString("FLAG"));	//6
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
