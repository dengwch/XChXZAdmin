package com.fh.controller.transactionrecord.transactionrecord;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

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

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.util.AppUtil;
import com.fh.util.ObjectExcelView;
import com.fh.util.Const;
import com.fh.util.HttpGetMap;
import com.fh.util.PageData;
import com.fh.util.Tools;
import com.fh.util.Jurisdiction;
import com.fh.service.admin.agentmanger.AgentMangerService;
import com.fh.service.agentaccount.agentaccount.AgentaccountService;
import com.fh.service.agentbusiness.agentbusiness.AgentbusinessService;
import com.fh.service.businessPackage.businesspackage.BusinessPackageService;
import com.fh.service.distributor.business.BusinessService;
import com.fh.service.system.user.UserService;
import com.fh.service.transactionrecord.transactionrecord.TransactionrecordService;

/** 
 * 类名称：TransactionrecordController
 * 创建人：FH 
 * 创建时间：2017-03-29
 */
@Controller
@RequestMapping(value="/transactionrecord")
public class TransactionrecordController extends BaseController {
	
	String menuUrl = "transactionrecord/list.do"; //菜单地址(权限用)
	@Resource(name="transactionrecordService")
	private TransactionrecordService transactionrecordService;
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
	@Resource(name="businesspackageService")
	private BusinessPackageService businesspackageService;
	/**
	 * 新增
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, "新增Transactionrecord");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("TRANSACTIONRECORD_ID", this.get32UUID());	//主键
		transactionrecordService.save(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out){
		logBefore(logger, "删除Transactionrecord");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			pd = transactionrecordService.findById(pd);	//根据ID读取
			pd.put("TRANSACTIONRECORD_ID", pd.getString("TRANSACTIONRECORD_ID"));
			
			transactionrecordService.delete(pd);
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
		logBefore(logger, "修改Transactionrecord");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		transactionrecordService.edit(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 业绩列表
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page){
		logBefore(logger, "列表Transactionrecord");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			pd.put("TYPE", "1");
			String PX=pd.getString("PX");
			String pxdesc=pd.getString("pxdesc");
			String px1desc=pd.getString("px1desc");
			String BUSINESS_NAME=pd.getString("BUSINESS_NAME");
			if (null!=pxdesc&&!"".equals(pxdesc)) {
				pd.put("pxdesc", pxdesc);
			}
			if (null!=px1desc&&!"".equals(px1desc)) {
				pd.put("px1desc", px1desc);
			}
			if (null!=PX&&!"".equals(PX)) {
				pd.put("PX", PX);
			}
			if (null!=BUSINESS_NAME&&!"".equals(BUSINESS_NAME)) {
				pd.put("BUSINESS_NAME", BUSINESS_NAME);
			}
			//if(null!=AGENTMANGER_ID&&!"".equals(AGENTMANGER_ID)&&null!=BUSINESS_ID&&!"".equals(BUSINESS_ID)){
				page.setPd(pd);
				List<PageData>	varList = transactionrecordService.list(page);	//列出Transactionrecord列表
				List<PageData> zDataList = new ArrayList<PageData>();
				if (null!=varList&&varList.size()>0) {
					for (int i = 0; i < varList.size(); i++) {
						PageData data=varList.get(i);
						PageData pd1 = new PageData();
						PageData pd2 = new PageData();
						PageData pd3 = new PageData();
						PageData pd4 = new PageData();
						pd1.put("AGENTMANGER_ID", data.getString("AGENTMANGER_ID"));
						pd2.put("BUSINESS_ID", data.getString("BUSINESS_ID"));
						pd3.put("BUSINESSPACKAGE_ID", data.getString("BUSINESSPACKAGE_ID"));
						PageData agentData = agentmangerService.findById(pd1);
						PageData busData=businessService.findById(pd2);
						PageData buspaData=businesspackageService.findById(pd3);
						pd4.put("TRANSACTIONRECORD_ID", data.getString("TRANSACTIONRECORD_ID"));
						if (null!=buspaData&&null!=busData.getString("BUSINESS_NAME")&&!"".equals(busData.getString("BUSINESS_NAME"))) {
							pd4.put("BUSINESS_NAME",busData.getString("BUSINESS_NAME"));//产品名称
						}
						if (null!=buspaData&&null!=buspaData.getString("PACKAGENAME")&&!"".equals(buspaData.getString("PACKAGENAME"))) {
							pd4.put("PACKAGENAME",buspaData.getString("PACKAGENAME"));//等级套餐名
						}
						if (null!=agentData&&null!=agentData.getString("USERNAME")&&!"".equals(agentData.getString("USERNAME"))) {
							pd4.put("USERNAME",agentData.getString("USERNAME"));//用户名
						}
						if (null!=agentData&&null!=agentData.getString("AGENTNAME")&&!"".equals(agentData.getString("AGENTNAME"))) {
							pd4.put("AGENTNAME",agentData.getString("AGENTNAME"));//商户名称
						}
						if (null!=agentData&&null!=agentData.getString("PHONE")&&!"".equals(agentData.getString("PHONE"))) {
							pd4.put("PHONE",agentData.getString("PHONE"));//商户联系方式
						}
						pd4.put("AMOUNT",data.getString("AMOUNT"));//售价
						pd4.put("DAYS",data.getString("DAYS"));//有效期
						pd4.put("CREATETIME",data.getString("CREATETIME"));//购买日期
						zDataList.add(pd4);
					}
					
					
				}
				
			//}
			/*page.setPd(pd);
			List<PageData>	varList = transactionrecordService.list(page);	//列出Transactionrecord列表
			*/mv.setViewName("transactionrecord/transactionrecord/transactionrecord_list");
			mv.addObject("varList", zDataList);
			mv.addObject("varListCZ", varList);
			
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	
	/**
	 * 充值列表
	 */
	@RequestMapping(value="/listCZ")
	public ModelAndView listCZ(Page page){
		logBefore(logger, "列表Transactionrecord");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			pd.put("TYPE", '0');
			String PX=pd.getString("PX");
			String PAYTYPE=pd.getString("PAYTYPE");
			if (null!=PX&&!"".equals(PX)) {
				pd.put("PX", PX);
			}
			if (null!=PAYTYPE&&!"".equals(PAYTYPE)) {
				pd.put("PAYTYPE", PAYTYPE);
			}
			page.setPd(pd);
			List<PageData>	varList = transactionrecordService.list(page);	//列出Transactionrecord列表
			mv.setViewName("transactionrecord/transactionrecord/transactionrecord_listCZ");
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
		logBefore(logger, "去新增Transactionrecord页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			mv.setViewName("transactionrecord/transactionrecord/transactionrecord_edit");
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
		logBefore(logger, "去修改Transactionrecord页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			pd = transactionrecordService.findById(pd);	//根据ID读取
			mv.setViewName("transactionrecord/transactionrecord/transactionrecord_edit");
			mv.addObject("msg", "edit");
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
		logBefore(logger, "批量删除Transactionrecord");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "dell")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if(null != DATA_IDS && !"".equals(DATA_IDS)){
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				transactionrecordService.deleteAll(ArrayDATA_IDS);
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
		logBefore(logger, "导出Transactionrecord到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try{
			Map<String,Object> dataMap = new HashMap<String,Object>();
			List<String> titles = new ArrayList<String>();
			titles.add("1");	//1
			titles.add("1");	//2
			titles.add("1");	//3
			titles.add("1");	//4
			titles.add("1");	//5
			titles.add("1");	//6
			titles.add("1");	//7
			titles.add("1");	//8
			titles.add("1");	//9
			titles.add("1");	//10
			dataMap.put("titles", titles);
			List<PageData> varOList = transactionrecordService.listAll(pd);
			List<PageData> varList = new ArrayList<PageData>();
			for(int i=0;i<varOList.size();i++){
				PageData vpd = new PageData();
				vpd.put("var1", varOList.get(i).getString("TYPE"));	//1
				vpd.put("var2", varOList.get(i).getString("FUNDDETAILS"));	//2
				vpd.put("var3", varOList.get(i).getString("AMOUNT"));	//3
				vpd.put("var4", varOList.get(i).getString("BALANCE"));	//4
				vpd.put("var5", varOList.get(i).getString("CREATETIME"));	//5
				vpd.put("var6", varOList.get(i).getString("AGENTMANGER_ID"));	//6
				vpd.put("var7", varOList.get(i).getString("FLAG"));	//7
				vpd.put("var8", varOList.get(i).getString("DAYS"));	//8
				vpd.put("var9", varOList.get(i).getString("BUSINESSPACKAGE_ID"));	//9
				vpd.put("var10", varOList.get(i).getString("BUSINESS_ID"));	//10
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
