package com.fh.controller.xchxu;

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

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.util.AppUtil;
import com.fh.util.DateUtil;
import com.fh.util.OSSUtils1;
import com.fh.util.ObjectExcelView;
import com.fh.util.Const;
import com.fh.util.PageData;
import com.fh.util.Tools;
import com.fh.util.Jurisdiction;
import com.fh.util.UuidUtil;
import com.fh.service.hotwork.HotworkService;
import com.fh.service.work.WorkService;

/** 
 * 类名称：HotworkController
 * 创建人：FH 
 * 创建时间：2017-05-15
 */
@Controller
@RequestMapping(value="/hotwork")
public class HotworkController extends BaseController {
	
	String menuUrl = "hotwork/list.do"; //菜单地址(权限用)
	@Resource(name="hotworkService")
	private HotworkService hotworkService;
	@Resource(name="workService")
	private WorkService workService;
	
	/**
	 * 新增
	 */
	@RequestMapping(value="/save")
	public ModelAndView save(HttpServletRequest request,@RequestParam("WORK_ID") String WORK_ID,@RequestParam MultipartFile HOTIMGURL) throws Exception{
		logBefore(logger, "新增Hotwork");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		if (null != HOTIMGURL && !HOTIMGURL.isEmpty()) {
			pd.put("WORK_ID", WORK_ID);
			pd = workService.findById(pd);	//根据ID读取
			String fileName = "upload/hoturl/"+ DateUtil.getDays()+"/"+UuidUtil.get32UUID()+".jpg"; // 文件上传路径
			OSSUtils1.uploadFileOfOSS(fileName, HOTIMGURL);
			pd.put("HOTIMGURL", fileName);
		}
		PageData findByWORK_ID = hotworkService.findByWORK_ID(pd);
		if(null!=findByWORK_ID){
			findByWORK_ID.put("HOTIMGURL", pd.getString("HOTIMGURL"));
			hotworkService.edit(findByWORK_ID);
		}else {
			PageData pd1 = workService.findById(pd);	//根据ID读取
			pd.put("WORKNAME", (String)pd1.get("WORKNAME"));	
			pd.put("CREATETIME", DateUtil.getTime().toString());
			pd.put("HOTWORK_ID", this.get32UUID());	//主键
			pd.put("WORK_ID", WORK_ID);	
			hotworkService.save(pd);
		}
		
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out){
		logBefore(logger, "删除Hotwork");
		try{
		
		}catch(Exception e){
			logger.error(e.toString(), e);
		}
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			hotworkService.delete(pd);
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
		logBefore(logger, "修改Hotwork");
		try{
		}catch(Exception e){
			logger.error(e.toString(), e);
		}
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		hotworkService.edit(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 列表
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page){
		logBefore(logger, "列表Hotwork");
		try{
		}catch(Exception e){
			logger.error(e.toString(), e);
		}
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData>	varList = hotworkService.list(page);	//列出Hotwork列表
			mv.setViewName("hotwork/hotwork_list");
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
		logBefore(logger, "去新增Hotwork页面");
		try{
		}catch(Exception e){
			logger.error(e.toString(), e);
		}
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			List<PageData>	workList = workService.listAll(pd);
			mv.addObject("workList", workList);
			mv.setViewName("hotwork/hotwork_edit");
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
		logBefore(logger, "去修改Hotwork页面");
		try{
		}catch(Exception e){
			logger.error(e.toString(), e);
		}
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			pd = hotworkService.findById(pd);	//根据ID读取
			mv.setViewName("hotwork/hotwork_edit");
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
		logBefore(logger, "批量删除Hotwork");
		try{
		}catch(Exception e){
			logger.error(e.toString(), e);
		}
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "dell")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if(null != DATA_IDS && !"".equals(DATA_IDS)){
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				hotworkService.deleteAll(ArrayDATA_IDS);
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
		logBefore(logger, "导出Hotwork到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try{
			Map<String,Object> dataMap = new HashMap<String,Object>();
			List<String> titles = new ArrayList<String>();
			titles.add("业务id");	//1
			titles.add("业务名称");	//2
			titles.add("时间");	//3
			titles.add("展示图");	//4
			dataMap.put("titles", titles);
			List<PageData> varOList = hotworkService.listAll(pd);
			List<PageData> varList = new ArrayList<PageData>();
			for(int i=0;i<varOList.size();i++){
				PageData vpd = new PageData();
				vpd.put("var1", varOList.get(i).getString("WORK_ID"));	//1
				vpd.put("var2", varOList.get(i).getString("WORKNAME"));	//2
				vpd.put("var3", varOList.get(i).getString("CREATETIME"));	//3
				vpd.put("var4", varOList.get(i).getString("HOTIMGURL"));	//4
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
