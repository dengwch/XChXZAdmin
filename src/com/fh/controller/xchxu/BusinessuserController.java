package com.fh.controller.xchxu;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
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
import com.fh.controller.system.user.ExcelUtil;
import com.fh.entity.Page;
import com.fh.entity.Shop;
import com.fh.service.backgroup.bussinessactivity.BussinessActivityService;
import com.fh.service.backgroup.commodity.CommodityService;
import com.fh.service.businessuser.BusinessuserService;
import com.fh.service.membershipcard.MembershipcardService;
import com.fh.service.phasell.ShopService;
import com.fh.service.work.WorkService;
import com.fh.util.AddressUtils;
import com.fh.util.AppUtil;
import com.fh.util.Const;
import com.fh.util.DateUtil;
import com.fh.util.Jurisdiction;
import com.fh.util.MD5;
import com.fh.util.OSSUtils1;
import com.fh.util.PageData;

/** 
 * 类名称：BusinessuserController
 * 创建人：FH 
 * 创建时间：2017-05-12
 */
@Controller
@RequestMapping(value="/businessuser")
public class BusinessuserController extends BaseController {
	
	String menuUrl = "businessuser/list.do"; //菜单地址(权限用)
	@Resource(name="businessuserService")
	private BusinessuserService businessuserService;
	@Resource(name="shopService")
	private ShopService shopService;
	@Resource(name = "commodityService")
	private CommodityService commodityService;
	@Resource(name="workService")
	private WorkService workService;
	@Resource(name="membershipcardService")
	private MembershipcardService membershipcardService;
	@Resource(name="bussinessactivityService")
	private BussinessActivityService bussinessactivityService;
	/**
	 * 从EXCEL导入到数据库
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value = "/readExcelqw")
	public ModelAndView readExcel(@RequestParam(value = "excel", required = false) MultipartFile file) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		if (!Jurisdiction.buttonJurisdiction(menuUrl, "add")) {
			return null;
		}
		if (null != file && !file.isEmpty()) {
			List<Map<String,?>> sfList=null;
	    	String iphoneCol="";
	    	 try { 
				if (file != null) {
									//手机号是第几列如果没有写999
			        if(StringUtils.isEmpty(iphoneCol)){
			        	iphoneCol="999";
			        }
			        
			        //in.insert(file,"F_EXPERT");
			        InputStream input = file.getInputStream();
		            XSSFWorkbook workBook = new XSSFWorkbook(input);
		            sfList = ExcelUtil.exportListFromExcel(workBook, 0,Integer.parseInt(iphoneCol));
						            
					}
	        }catch (Exception e){   
	        	InputStream input = file.getInputStream(); 
	        	//excel2007以前的版本xls
		   	 	HSSFWorkbook hssWB = new HSSFWorkbook(input);
		   	 	sfList =ExcelUtil.exportListFromExcel(hssWB, 0,Integer.parseInt(iphoneCol));
	   	 		
	        }
	    	 if(sfList!=null && sfList.size()>0){
		    		
			    	
			    	for(int i=0;i<sfList.size();i++){
			    		Map map1=sfList.get(i);
			    		Map<String, String> map=new HashMap<String, String>();
			    		Iterator it = map1.keySet().iterator();
			    		while (it.hasNext()) {
				    		String key = (String)it.next();
				    		boolean result0=((String)map1.get(key)).replaceAll(",","").matches("[0-9]+");
				    		if (result0 == true) {
				    			map.put(key, ((String)map1.get(key)).replaceAll(",",""));
				    		}else {
				    			map.put(key, (String)map1.get(key));
							}
				    		
			    		}
			    		pd.put("codename", (String)map.get("col0").trim()); // 姓名
						if (businessuserService.findBycodenameds(pd) == null) { // 邮箱已存在就跳过
							pd.put("codeid", this.get32UUID()); // ID
							
							pd.put("flag", "1"); // 编号已存在就跳过
							pd.put("createtime",new Date()); 
							businessuserService.saveCode(pd);
						}
						
			    	}
	    	 }
			/*String filePath = PathUtil.getClasspath() + Const.FILEPATHFILE; // 文件上传路径
			String fileName = FileUpload.fileUp(file, filePath, "userexcel"); // 执行上传

			List<PageData> listPd = (List) ObjectExcelRead.readExcel(filePath, fileName, 2, 0, 0); // 执行读EXCEL操作,读出的数据导入List 2:从第3行开始；0:从第A列开始；0:第0个sheet

			 存入数据库操作====================================== 
			
			*//**
			 * var0 :编号 var1 :姓名 var2 :手机 var3 :邮箱 var4 :备注
			 *//*
			for (int i = 0; i < listPd.size(); i++) {
				pd.put("codeid", this.get32UUID()); // ID
				pd.put("codename", listPd.get(i).getString("var0")); // 姓名
				if (userService.findBycodename(pd) != null) { // 邮箱已存在就跳过
					continue;
				}
				pd.put("flag", "1"); // 编号已存在就跳过
				pd.put("createtime",new Date()); 
				userService.saveCode(pd);
			}*/
			/* 存入数据库操作====================================== */

			mv.addObject("msg", "success");
		}
		/*Page page=new Page();
		pd = this.getPageData();
		page.setPd(pd);
		List<PageData> varList = businessuserService.datalistPagecode(page); // 列出code列表
		mv.setViewName("businessuser/code_list");
		mv.addObject("varList", varList);
		mv.addObject("pd", pd);*/
		mv.setViewName("redirect:/businessuser/listCodese.do");
		return mv;
	}
	@RequestMapping(value = "/goUploadExcel")
	public ModelAndView goUploadExcel() throws Exception {
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("businessuser/uploadexcel");
		return mv;
	}
	/**
	 * 显示红包码列表
	 */
	@RequestMapping(value = "/listCodese")
	public ModelAndView listCodes(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		List<PageData> varList = businessuserService.datalistPagecode(page); // 列出code列表
		mv.setViewName("businessuser/code_list");
		mv.addObject("varList", varList);
		mv.addObject("pd", pd);
		return mv;
	}
	/**
	 * 删除
	 */
	@RequestMapping(value="/deletecode")
	public void deletecode(PrintWriter out){
		logBefore(logger, "删除Businessuser");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			businessuserService.deleteCode(pd);
			out.write("success");
			out.close();
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
	}
	/**
	 * TEL
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/checkTEL")
	@ResponseBody
	public Map<String, Object> save(HttpServletRequest request) throws Exception{
		Map<String, Object> result=new HashMap<String, Object>();
		PageData pd = new PageData();
		pd = this.getPageData();
		List<PageData> list = businessuserService.listAll(pd);
		/** type=1:注册 type=2:忘记密码 */
		if ((list != null && list.size()>0)) {
			// 该用户不可用
			result.put("result", "-1");
			result.put("msg", "用户已存在");
		} else{ 
			result.put("result", "1");
		}
		return result;
	}
	
	
	/**
	 * 新增
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, "新增Businessuser");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		HttpServletRequest request = this.getRequest();
		String BUSINESSUSER_ID=(String)request.getSession().getAttribute("BUSINESSUSER_ID");
		String[] WORKList=request.getParameterValues("WORK");
		String WORK="";
		for (int i = 0; i < WORKList.length; i++) {
			 if(WORK==""){
				 WORK = WORK + WORKList[i];
		    	}else{
		    		WORK = WORK +"#"+ WORKList[i];
		    	}
		}
		pd.put("WORK", WORK);
		pd.put("BUSINESSUSER_ID", BUSINESSUSER_ID);	//主键
		pd.put("FLAG", "1"); // 状态
		pd.put("SQFLAG", "1"); // 状态
		pd.put("ZCFLAG", "1"); // 状态
		pd.put("CLJG", "");
		pd.put("VISITNUM", 0);
		pd.put("TYPE", "3");
		pd.put("FBUSINESSUSER_ID", "0");
		pd.put("FFLAG", "1");
		pd.put("ZUIFLAG", "1");
		pd.put("BUSINESSPWD", MD5.md5((String)pd.get("BUSINESSPWD")));
		pd.put("CREATIME", DateUtil.getTime().toString());
		
		if (null!=pd.get("SHOPADDRESS")) {
			Map<String, Double> json = AddressUtils.getLngAndLat((String) pd.get("SHOPADDRESS"));  
			if(null!=json){
				System.out.println("经度longitude : " + json.get("longitude"));  
	            System.out.println("纬度latitude : " + json.get("latitude"));  
				String longitude2 = String.valueOf(json.get("longitude"));
				String latitude2 = String.valueOf(json.get("latitude"));
				pd.put("LONGITUDE", longitude2);
				pd.put("LATITUDE", latitude2);
			}
			pd.put("COMPANYADDRESS", (String)pd.get("SHOPADDRESS"));
		}
		businessuserService.save(pd);
		mv.addObject("msg","success");
		mv.setViewName("redirect:/businessuser/list.do");
		return mv;
	}
	/**
	 * 新增最热
	 */
	@RequestMapping(value="/save1")
	public ModelAndView save1() throws Exception{
		logBefore(logger, "新增Businessuser");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("ZUIFLAG", "2");
		businessuserService.edit1(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
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
	@RequestMapping("/uploadBPhoto")
	@ResponseBody
	public String  uploadPhoto(@RequestParam MultipartFile myfile, HttpServletRequest request, HttpServletResponse response) throws IOException {
		Map<String, Object> result = new HashMap<String, Object>();
		//Subject currentUser = SecurityUtils.getSubject();
		//Session session = currentUser.getSession();
		try {
			/*User user;
			user= (User) session.getAttribute(Const.SESSION_USER);
			String userId="";
			if(user!=null){
				userId =user.getUSER_ID();
			}*/
			String fileNa = myfile.getOriginalFilename();  
	        // 获取上传文件扩展名  
	        String fileExt = fileNa.substring(fileNa.lastIndexOf(".") + 1, fileNa.length()); 
			if (myfile.isEmpty()) {
				result.put("flag", 1);
				result.put("msg", "请选择文件后上传");
			} else if (!"jpg".equalsIgnoreCase(fileExt) && !"jpeg".equalsIgnoreCase(fileExt) && !"png".equalsIgnoreCase(fileExt) && !"bmp".equalsIgnoreCase(fileExt)  
	                && !"gif".equalsIgnoreCase(fileExt)) { 
				result.put("flag", 2);
				result.put("msg", "上传文件格式不正确");
	        } else{
				// 定义图片存储路径
				String BUSINESSUSER_ID=(String)request.getSession().getAttribute("BUSINESSUSER_ID");
				String path = "upload/user/"+BUSINESSUSER_ID+"/" +this.get32UUID() + "/";
				String fileName = this.get32UUID();
				OSSUtils1.uploadFileOfOSS(path + fileName + ".jpg", myfile);
				result.put("msg", path + fileName + ".jpg");
				
			}
		} catch (Exception e) {
			e.printStackTrace();
			result.put("flag", 0);
			result.put("msg", "上传失败");
		}
		//return JSON.toJSONString(result,SerializerFeature.WriteDateUseDateFormat);
		return JSON.toJSONString(result,SerializerFeature.WriteDateUseDateFormat);
	}
	
	/**
	 * 上传logo
	 * 
	 * @param myfile
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("/uploadBPhoto1")
	@ResponseBody
	public String  uploadPhoto1(@RequestParam MultipartFile myfile, HttpServletRequest request, HttpServletResponse response) throws IOException {
		Map<String, Object> result = new HashMap<String, Object>();
		//Subject currentUser = SecurityUtils.getSubject();
		//Session session = currentUser.getSession();
		try {
			/*User user;
			user= (User) session.getAttribute(Const.SESSION_USER);
			String userId="";
			if(user!=null){
				userId =user.getUSER_ID();
			}*/
			String fileNa = myfile.getOriginalFilename();  
	        // 获取上传文件扩展名  
	        String fileExt = fileNa.substring(fileNa.lastIndexOf(".") + 1, fileNa.length()); 
			if (myfile.isEmpty()) {
				result.put("flag", 1);
				result.put("msg", "请选择文件后上传");
				return JSON.toJSONString(result,SerializerFeature.WriteDateUseDateFormat);
			} else if (!"jpg".equalsIgnoreCase(fileExt) && !"jpeg".equalsIgnoreCase(fileExt) && !"png".equalsIgnoreCase(fileExt) && !"bmp".equalsIgnoreCase(fileExt)  
	                && !"gif".equalsIgnoreCase(fileExt)) { 
				result.put("flag", 2);
				result.put("msg", "上传文件格式不正确");
				return JSON.toJSONString(result,SerializerFeature.WriteDateUseDateFormat);
	        } else{
					 BufferedImage bi =ImageIO.read(myfile.getInputStream());
					 int ruleWidth = 60;  
	                    int ruleHeight = 60;
					 	long fileSize = myfile.getSize();
			           int imgWidth = bi.getWidth();
			           int imgHeight = bi.getHeight();
			           System.out.println("imgWidth:"+imgWidth);
			           System.out.println("imgHeight:"+imgHeight);
			           if (fileSize <= 0) {  
			        	   result.put("flag", 1);
			        	   result.put("msg", "请选择文件后上传");
			        	   return JSON.toJSONString(result,SerializerFeature.WriteDateUseDateFormat);
			           } else if (fileSize > (100 * 1024)) {  
			        	   result.put("flag", 3);
			        	   result.put("msg", "文件大小不能超过100K");
			        	   return JSON.toJSONString(result,SerializerFeature.WriteDateUseDateFormat);
			           }else if (ruleWidth != imgWidth && ruleHeight != imgHeight) {
			        	   result.put("flag", 4);
			        	   result.put("msg", "上传失败:文件尺寸为60*60");
			        	   return JSON.toJSONString(result,SerializerFeature.WriteDateUseDateFormat);
			           }  
				// 定义图片存储路径
				String BUSINESSUSER_ID=(String)request.getSession().getAttribute("BUSINESSUSER_ID");
				String path = "upload/user/"+BUSINESSUSER_ID+"/" +this.get32UUID() + "/";
				String fileName = this.get32UUID();
				OSSUtils1.uploadFileOfOSS(path + fileName + ".jpg", myfile);
				result.put("msg", path + fileName + ".jpg");
				request.getSession().setAttribute("shareImg",path + fileName + ".jpg");
				
			}
		} catch (Exception e) {
			e.printStackTrace();
			result.put("flag", 0);
			result.put("msg", "上传失败");
		}
		return JSON.toJSONString(result,SerializerFeature.WriteDateUseDateFormat);
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out){
		logBefore(logger, "删除Businessuser");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			businessuserService.delete(pd);
			out.write("success");
			out.close();
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
	}
	/**
	 * 删除
	 */
	@RequestMapping(value="/delete1")
	public void delete1(PrintWriter out){
		logBefore(logger, "删除Businessuser");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			pd.put("ZUIFLAG", "1");
			businessuserService.edit1(pd);
			out.write("success");
			out.close();
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
	}
	/**
	 * 改变状态
	 */
	@RequestMapping(value="/gFlag")
	public void gFlag(PrintWriter out){
		logBefore(logger, "删除Businessuser");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			String flag=(String)pd.get("flag");
			PageData pd1 = businessuserService.findById(pd);
			if(null!=flag && !"".equals(flag)){
				pd1.put("FLAG", flag);
			}
			
			String SQFLAG=(String)pd.get("SQFLAG");
			if(null!=SQFLAG && !"".equals(SQFLAG)){
				pd1.put("SQFLAG", SQFLAG);
			}
			String ZCFLAG=(String)pd.get("ZCFLAG");
			if(null!=ZCFLAG && !"".equals(ZCFLAG)){
				pd1.put("ZCFLAG", ZCFLAG);
			}
			businessuserService.edit(pd1);
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
		logBefore(logger, "修改Businessuser");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		HttpServletRequest request=this.getRequest();
		PageData pd = new PageData();
		pd = this.getPageData();
		String[] WORKList=request.getParameterValues("WORK");
		PageData pd1 = businessuserService.findById(pd);
		if(null==WORKList ||WORKList.length<=0){
			pd.put("WORK", (String)pd1.get("WORK"));
		}else {
			String WORK="";
			for (int i = 0; i < WORKList.length; i++) {
				 if(WORK==""){
					 WORK = WORK + WORKList[i];
			    	}else{
			    		WORK = WORK +"#"+ WORKList[i];
			    	}
			}
			pd.put("WORK", WORK);
		}
		String BUSINESSPWD=(String)pd.get("BUSINESSPWD");
		if(null==BUSINESSPWD || "".equals(BUSINESSPWD)){
			pd.put("BUSINESSPWD", (String)pd1.get("BUSINESSPWD"));
		}else {
			pd.put("BUSINESSPWD", MD5.md5((String)pd.get("BUSINESSPWD")));
			
		}
		String FLAG=(String)pd.get("FLAG");
		if(null==FLAG || "".equals(FLAG)){
			pd.put("FLAG", (String)pd1.get("FLAG"));
		}
		String SQFLAG=(String)pd.get("SQFLAG");
		if(null==SQFLAG || "".equals(SQFLAG)){
			pd.put("SQFLAG", (String)pd1.get("SQFLAG"));
		}
		String ZCFLAG=(String)pd.get("ZCFLAG");
		if(null==ZCFLAG || "".equals(ZCFLAG)){
			pd.put("ZCFLAG", (String)pd1.get("ZCFLAG"));
		}
		String CLJG=(String)pd.get("CLJG");
		if(null==CLJG || "".equals(CLJG)){
			pd.put("CLJG", (String)pd1.get("CLJG"));
		}
		if (null!=pd.get("SHOPADDRESS")) {
			Map<String, Double> json = AddressUtils.getLngAndLat((String) pd.get("SHOPADDRESS"));  
			if(null!=json){
				System.out.println("经度longitude : " + json.get("longitude"));  
	            System.out.println("纬度latitude : " + json.get("latitude"));  
				String longitude2 = String.valueOf(json.get("longitude"));
				String latitude2 = String.valueOf(json.get("latitude"));
				pd.put("LONGITUDE", longitude2);
				pd.put("LATITUDE", latitude2);
			}
			pd.put("COMPANYADDRESS", (String)pd.get("SHOPADDRESS"));
		}
		businessuserService.edit(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	/**
	 * 最热列表
	 */
	@RequestMapping(value="/listzuire")
	public ModelAndView listzuire(Page page){
		logBefore(logger, "列表Businessuser");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			
			page.setPd(pd);
			
			List<PageData>	varList = businessuserService.list1(page);	//列出Businessuser列表
			mv.setViewName("businessuser/businessuser_zuirelist");
			
			mv.addObject("varList", varList);
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	/**
	 * 列表
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page){
		logBefore(logger, "列表Businessuser");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			String BUSINESSUSERNAME = pd.getString("BUSINESSUSERNAME");
			if (null != BUSINESSUSERNAME && !"".equals(BUSINESSUSERNAME)) {
				BUSINESSUSERNAME = BUSINESSUSERNAME.trim();
				pd.put("BUSINESSUSERNAME", BUSINESSUSERNAME);
			}
			String FLAG1 = pd.getString("FLAG1");
			if (null != FLAG1 && !"".equals(FLAG1)) {
				FLAG1 = FLAG1.trim();
				pd.put("FLAG", FLAG1);
			}
			pd.put("TYPE", "3");
			pd.put("TYPE1", "3");
			page.setPd(pd);
			
			List<PageData>	varList = businessuserService.list(page);	//列出Businessuser列表
			
			List<PageData>	nameList=new ArrayList<PageData>();
			List<String>	usernameList=new ArrayList<String>();
			for (int i = 0; i < varList.size(); i++) {
				String nameString="";
				PageData pd1 = new PageData();
				PageData workString=varList.get(i);
				String wString=workString.getString("WORK");
				if (null!=wString&&!"".equals(wString)) {
					String[] woStrings=wString.split("#");
					if (null!=woStrings&& woStrings.length>0) {
						for (int j = 0; j < woStrings.length; j++) {
							PageData pd2 = new PageData();
							pd2.put("WORK_ID", woStrings[j]);
							PageData namework=workService.findById(pd2);
							if(null!=namework){
								if(nameString==""){
									nameString = nameString + (String)namework.get("WORKNAME");
						    	}else{
						    		nameString = nameString +"</br>"+ namework.getString("WORKNAME");
						    	}
							}else {
								 Pattern p = Pattern.compile("[\u4e00-\u9fa5]");
							        Matcher m = p.matcher(woStrings[j]);
							        if (m.find()) {
							        	nameString=woStrings[j];
							        }else {
							        	nameString= "已删除业务请重新选择";
									}
							}
							
						}
					}
				}
				String ZCFLAG=workString.getString("ZCFLAG");
				String TYPE=workString.getString("TYPE");
				//nameList.add(nameString);
				/*if("2".equals(TYPE.trim()) && "2".equals(ZCFLAG.trim())){
					pd1.put("nameString", nameString);
					
					pd1.put("varList",varList.get(i));
				}
				if("3".equals(TYPE.trim())){
					pd1.put("nameString", nameString);
					
					pd1.put("varList",varList.get(i));
				}*/
				pd1.put("nameString", nameString);
				pd1.put("varList",varList.get(i));
				nameList.add(pd1);
			}
			mv.setViewName("businessuser/businessuser_list");
			
			mv.addObject("nameList", nameList);
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**
	 * 申请列表
	 */
	@RequestMapping(value="/SQlist")
	public ModelAndView SQlist(Page page){
		logBefore(logger, "列表Businessuser");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			
			String CLJG = pd.getString("CLJG2");
			String SQFLAG = pd.getString("SQFLAG2");
			String BUSINESSUSER_ID = pd.getString("BUSINESSUSER_ID");
			if(null != CLJG && !"".equals(CLJG.trim())&&null != SQFLAG && !"".equals(SQFLAG.trim())&&null != BUSINESSUSER_ID && !"".equals(BUSINESSUSER_ID.trim())){
				PageData pd1 = businessuserService.findById(pd);	//根据ID读取
				pd1.put("BUSINESSUSER_ID", BUSINESSUSER_ID);
				pd1.put("SQFLAG", SQFLAG);
				pd1.put("CLJG", CLJG);
				businessuserService.edit(pd1);
			}
			
			
			
			
			String BUSINESSUSERNAME = pd.getString("BUSINESSUSERNAME");
			if (null != BUSINESSUSERNAME && !"".equals(BUSINESSUSERNAME)) {
				BUSINESSUSERNAME = BUSINESSUSERNAME.trim();
				pd.put("BUSINESSUSERNAME", BUSINESSUSERNAME);
			}
			String SQFLAG1 = pd.getString("SQFLAG1");
			if (null != SQFLAG1 && !"".equals(SQFLAG1)) {
				SQFLAG1 = SQFLAG1.trim();
				pd.put("SQFLAG", SQFLAG1);
			}
			pd.put("TYPE", "1");
			page.setPd(pd);
			List<PageData>	varList = businessuserService.list(page);	//列出Businessuser列表
			List<PageData>	nameList=new ArrayList<PageData>();
			for (int i = 0; i < varList.size(); i++) {
				String nameString="";
				PageData pd1 = new PageData();
				PageData workString=varList.get(i);
				String wString=workString.getString("WORK");
				if (null!=wString&&!"".equals(wString)) {
					String[] woStrings=wString.split("#");
					if (null!=woStrings&& woStrings.length>0) {
						for (int j = 0; j < woStrings.length; j++) {
							PageData pd2 = new PageData();
							pd2.put("WORK_ID", woStrings[j]);
							PageData namework=workService.findById(pd2);
							if(null!=namework){
								if(nameString==""){
									nameString = nameString + (String)namework.get("WORKNAME");
						    	}else{
						    		nameString = nameString +"</br>"+ namework.getString("WORKNAME");
						    	}
							}else {
								 Pattern p = Pattern.compile("[\u4e00-\u9fa5]");
							        Matcher m = p.matcher(woStrings[j]);
							        if (m.find()) {
							        	nameString=woStrings[j];
							        }else {
							        	nameString= "已删除业务请重新选择";
									}
							}
							
						}
						
					}
				}
				
				//nameList.add(nameString);
				
				pd1.put("nameString", nameString);
				pd1.put("varList",varList.get(i));
				nameList.add(pd1);
			}
			mv.setViewName("businessuser/businessuser_SQlist");
			
			mv.addObject("nameList", nameList);
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**
	 * 注册审核列表
	 */
	@RequestMapping(value="/ZClist")
	public ModelAndView ZClist(Page page){
		logBefore(logger, "列表Businessuser");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			String COMPANYNAME = pd.getString("COMPANYNAME");
			if (null != COMPANYNAME && !"".equals(COMPANYNAME)) {
				COMPANYNAME = COMPANYNAME.trim();
				pd.put("COMPANYNAME", COMPANYNAME);
			}
			String ZCFLAG2 = pd.getString("ZCFLAG2");
			String BUSINESSUSER_ID = pd.getString("BUSINESSUSER_ID");
			if(null != ZCFLAG2 && !"".equals(ZCFLAG2.trim())&&null != BUSINESSUSER_ID && !"".equals(BUSINESSUSER_ID.trim())){
				PageData pd1 = businessuserService.findById(pd);	//根据ID读取
				pd1.put("BUSINESSUSER_ID", BUSINESSUSER_ID);
				pd1.put("ZCFLAG", ZCFLAG2);
				businessuserService.edit(pd1);
				pd1.put("STATUS", "1");
				businessuserService.editnotice(pd1);
			}
			String ZCFLAG1 = pd.getString("ZCFLAG1");
			if (null != ZCFLAG1 && !"".equals(ZCFLAG1)) {
				ZCFLAG1 = ZCFLAG1.trim();
				pd.put("ZCFLAG", "('"+ZCFLAG1+"')");
			}else {
				pd.put("ZCFLAG", "('1','3','4')");
			}
			pd.put("TYPE", "2");
			page.setPd(pd);
			List<PageData>	varList = businessuserService.list(page);	//列出Businessuser列表
			List<PageData>	nameList=new ArrayList<PageData>();
			for (int i = 0; i < varList.size(); i++) {
				String nameString="";
				PageData pd1 = new PageData();
				PageData workString=varList.get(i);
				String wString=workString.getString("WORK");
				
				if (null!=wString&&!"".equals(wString)) {
					String[] woStrings=wString.split("#");
					if (null!=woStrings&& woStrings.length>0) {
						for (int j = 0; j < woStrings.length; j++) {
							PageData pd2 = new PageData();
							pd2.put("WORK_ID", woStrings[j]);
							PageData namework=workService.findById(pd2);
							if(null!=namework){
								if(nameString==""){
									nameString = nameString + (String)namework.get("WORKNAME");
						    	}else{
						    		nameString = nameString +"</br>"+ namework.getString("WORKNAME");
						    	}
							}else {
								 Pattern p = Pattern.compile("[\u4e00-\u9fa5]");
							        Matcher m = p.matcher(woStrings[j]);
							        if (m.find()) {
							        	nameString=woStrings[j];
							        }else {
							        	nameString= "已删除业务请重新选择";
									}
							}
						}
					}
				}
				
				//nameList.add(nameString);
				
				pd1.put("nameString", nameString);
				pd1.put("varList",varList.get(i));
				nameList.add(pd1);
			}
			mv.setViewName("businessuser/businessuser_ZClist");
			
			mv.addObject("nameList", nameList);
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	/**
	 * 注册审核列表消息1
	 */
	@RequestMapping(value="/ZClist1")
	public ModelAndView ZClist1(Page page){
		logBefore(logger, "列表Businessuser");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			String COMPANYNAME = pd.getString("COMPANYNAME");
			if (null != COMPANYNAME && !"".equals(COMPANYNAME)) {
				COMPANYNAME = COMPANYNAME.trim();
				pd.put("COMPANYNAME", COMPANYNAME);
			}
			String ZCFLAG2 = pd.getString("ZCFLAG2");
			String BUSINESSUSER_ID = pd.getString("BUSINESSUSER_ID");
			if(null != ZCFLAG2 && !"".equals(ZCFLAG2.trim())&&null != BUSINESSUSER_ID && !"".equals(BUSINESSUSER_ID.trim())){
				PageData pd1 = businessuserService.findById(pd);	//根据ID读取
				pd1.put("BUSINESSUSER_ID", BUSINESSUSER_ID);
				pd1.put("ZCFLAG", ZCFLAG2);
				businessuserService.edit(pd1);
				pd1.put("STATUS", "1");
				businessuserService.editnotice(pd1);
				
			}
			String ZCFLAG1 = pd.getString("ZCFLAG1");
			if (null != ZCFLAG1 && !"".equals(ZCFLAG1)) {
				ZCFLAG1 = ZCFLAG1.trim();
				pd.put("ZCFLAG", ZCFLAG1);
			}
			pd.put("TYPE", "2");
			page.setPd(pd);
			List<PageData>	varList = businessuserService.list(page);	//列出Businessuser列表
			List<PageData>	nameList=new ArrayList<PageData>();
			for (int i = 0; i < varList.size(); i++) {
				String nameString="";
				PageData pd1 = new PageData();
				PageData workString=varList.get(i);
				String wString=workString.getString("WORK");
				if (null!=wString&&!"".equals(wString)) {
					String[] woStrings=wString.split("#");
					if (null!=woStrings&& woStrings.length>0) {
						for (int j = 0; j < woStrings.length; j++) {
							PageData pd2 = new PageData();
							pd2.put("WORK_ID", woStrings[j]);
							PageData namework=workService.findById(pd2);
							if(null!=namework){
								if(nameString==""){
									nameString = nameString + (String)namework.get("WORKNAME");
						    	}else{
						    		nameString = nameString +"</br>"+ namework.getString("WORKNAME");
						    	}
							}else {
								 Pattern p = Pattern.compile("[\u4e00-\u9fa5]");
							        Matcher m = p.matcher(woStrings[j]);
							        if (m.find()) {
							        	nameString=woStrings[j];
							        }else {
							        	nameString= "已删除业务请重新选择";
									}
							}
						}
					}
				}
				
				//nameList.add(nameString);
				
				pd1.put("nameString", nameString);
				pd1.put("varList",varList.get(i));
				nameList.add(pd1);
			}
			mv.setViewName("businessuser/businessuser_ZClist1");
			
			mv.addObject("nameList", nameList);
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	/**
	 * 去最热新增页面
	 */
	@RequestMapping(value="/goAddzui")
	public ModelAndView goAddzui(){
		HttpServletRequest request=this.getRequest();
		logBefore(logger, "去新增Businessuser页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		//pd = this.getPageData();
		
		try {
			List<PageData>	businessuserList = businessuserService.listAll1(pd);
			mv.addObject("businessuserList", businessuserList);
			mv.setViewName("businessuser/businessuser_zuiadd");
			mv.addObject("msg", "save1");
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	/**
	 * 去新增页面
	 */
	@RequestMapping(value="/goAdd")
	public ModelAndView goAdd(){
		HttpServletRequest request=this.getRequest();
		logBefore(logger, "去新增Businessuser页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		//pd = this.getPageData();
		request.getSession().removeAttribute("BUSINESSUSER_ID");
		String idString=this.get32UUID();
		request.getSession().setAttribute("BUSINESSUSER_ID", idString);
		try {
			List<PageData>	workList = workService.listAll(pd);
			mv.addObject("workList", workList);
			mv.setViewName("businessuser/businessuser_edit");
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
		logBefore(logger, "去修改Businessuser页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			List<PageData>	workList = workService.listAll(pd);
			mv.addObject("workList", workList);
			pd = businessuserService.findById(pd);	//根据ID读取
			String wString=pd.getString("WORK");
			String nameString="";
			if (null!=wString&&!"".equals(wString)) {
				String[] woStrings=wString.split("#");
				if (null!=woStrings&& woStrings.length>0) {
					for (int j = 0; j < woStrings.length; j++) {
						PageData pd2 = new PageData();
						pd2.put("WORK_ID", woStrings[j]);
						PageData namework=workService.findById(pd2);
						if(null!=namework){
							if(nameString==""){
								nameString = nameString + (String)namework.get("WORKNAME");
					    	}else{
					    		nameString = nameString +"</br>"+ namework.getString("WORKNAME");
					    	}
						}
					}
				}
			}
			mv.setViewName("businessuser/businessuser_edit1");
			mv.addObject("nameString", nameString);
			mv.addObject("msg", "edit");
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	/**
	 * 去注册商家修改页面
	 */
	@RequestMapping(value="/goEdit1")
	public ModelAndView goEdit1(){
		logBefore(logger, "去修改Businessuser页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			List<PageData>	workList = workService.listAll(pd);
			mv.addObject("workList", workList);
			pd = businessuserService.findById(pd);	//根据ID读取
			String wString=pd.getString("WORK");
			String nameString="";
			if (null!=wString&&!"".equals(wString)) {
				String[] woStrings=wString.split("#");
				if (null!=woStrings&& woStrings.length>0) {
					for (int j = 0; j < woStrings.length; j++) {
						PageData pd2 = new PageData();
						pd2.put("WORK_ID", woStrings[j]);
						PageData namework=workService.findById(pd2);
						if(null!=namework){
							if(nameString==""){
								nameString = nameString + (String)namework.get("WORKNAME");
					    	}else{
					    		nameString = nameString +"</br>"+ namework.getString("WORKNAME");
					    	}
						}
					}
				}
			}
			mv.setViewName("businessuser/businessuser_edit2");
			mv.addObject("nameString", nameString);
			mv.addObject("msg", "edit");
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	
	/**
	 * 去修改密码页面
	 */
	@RequestMapping(value="/goPassword")
	public ModelAndView goPassword(){
		logBefore(logger, "去修改Businessuser页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			mv.setViewName("businessuser/businessuser_editpassword");
			mv.addObject("msg", "editpassword");
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	/**
	 * 修改
	 */
	@RequestMapping(value="/editpassword")
	public ModelAndView editpassword() throws Exception{
		logBefore(logger, "修改Businessuser");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		PageData pd1 = businessuserService.findById(pd);
		String BUSINESSPWD=(String)pd.get("BUSINESSPWD");
		if(null==BUSINESSPWD || "".equals(BUSINESSPWD)){
			pd.put("BUSINESSPWD", (String)pd1.get("BUSINESSPWD"));
		}else {
			pd.put("BUSINESSPWD", MD5.md5((String)pd.get("BUSINESSPWD")));
			
		}
		businessuserService.editpassword(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 去详情页面
	 */
	@RequestMapping(value="/goXQing")
	public ModelAndView goXQing(){
		logBefore(logger, "去详情页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			List<PageData>	commList = commodityService.listAll(pd);
			mv.addObject("commList", commList);
			List<PageData>	cardList = membershipcardService.listAll(pd);	//列出Membershipcard列表
			mv.addObject("cardList", cardList);
			List<PageData>	activityList = bussinessactivityService.listAll(pd);	//列出BussinessActivity列表
			mv.addObject("activityList", activityList);
			List<PageData>	workList = workService.listAll(pd);
			mv.addObject("workList", workList);
			pd = businessuserService.findById(pd);	//根据ID读取
			String wString=pd.getString("WORK");
			String nameString="";
			if (null!=wString&&!"".equals(wString)) {
				String[] woStrings=wString.split("#");
				if (null!=woStrings&& woStrings.length>0) {
					for (int j = 0; j < woStrings.length; j++) {
						PageData pd2 = new PageData();
						pd2.put("WORK_ID", woStrings[j]);
						PageData namework=workService.findById(pd2);
						if(null!=namework){
							if(nameString==""){
								nameString = nameString + (String)namework.get("WORKNAME");
					    	}else{
					    		nameString = nameString +"</br>"+ namework.getString("WORKNAME");
					    	}
						}
					}
				}
			}
			mv.setViewName("businessuser/businessuser_xq");
			mv.addObject("nameString", nameString);
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
		logBefore(logger, "批量删除Businessuser");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "dell")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if(null != DATA_IDS && !"".equals(DATA_IDS)){
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				businessuserService.deleteAll(ArrayDATA_IDS);
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
	
	/**
	 * 消息管理
	 */
	@RequestMapping(value="/noticeindex")
	@ResponseBody
	public Map<String, Object> noticeindex(HttpServletRequest request) throws Exception{
		Map<String, Object> result=new HashMap<String, Object>();
		PageData pd = new PageData();
		pd = this.getPageData();
		//全部消息
		pd.put("STATUS", "2");
		List<PageData> list = businessuserService.listAllnotice(pd);
		List<Map<String, Object>> listcon = new ArrayList<Map<String, Object>>();
		for (int i = 0; i < list.size(); i++) {
			PageData pdnot = list.get(i);
			if (i<3) {
				Map<String, Object> pd1 = new HashMap<String, Object>();
				pd1.put("CONTENT", pdnot.getString("CONTENT"));
				pd1.put("BUSINESSUSER_ID", pdnot.getString("BUSINESSUSER_ID"));
				pd1.put("CREATETIME", pdnot.getString("CREATETIME"));
				pd1.put("STATUS", pdnot.getString("STATUS"));
				listcon.add(pd1);
			}
		}
		//未读
		pd.put("STATUS", "2");
		List<PageData> list2 = businessuserService.listAllnotice(pd);
		result.put("weidunum", list2.size());
		result.put("quanbunum", list.size());
		result.put("listcon", listcon);
		return result;
	}
	/**
	 * 消息列表
	 */
	@RequestMapping(value="/Noticelist")
	public ModelAndView Noticelist(Page page){
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			String ZCFLAG2 = pd.getString("ZCFLAG2");
			String BUSINESSUSER_ID = pd.getString("BUSINESSUSER_ID");
			if(null != ZCFLAG2 && !"".equals(ZCFLAG2.trim())&&null != BUSINESSUSER_ID && !"".equals(BUSINESSUSER_ID.trim())){
				PageData pd1 = businessuserService.findById(pd);	//根据ID读取
				pd1.put("BUSINESSUSER_ID", BUSINESSUSER_ID);
				pd1.put("ZCFLAG", ZCFLAG2);
				businessuserService.edit(pd1);
				pd1.put("STATUS", "1");
				businessuserService.editnotice(pd1);
				
			}
			pd.put("STATUS", "2");
			page.setPd(pd);
			List<PageData>	varList = businessuserService.listnoticepage(page);	//列出Businessuser列表
			for (int i = 0; i < varList.size(); i++) {
				PageData pd2=varList.get(i);
				PageData pd1 = businessuserService.findById(varList.get(i));
				if (null!=pd1) {
					pd2.put("ZCFLAG", pd1.get("ZCFLAG"));
				}
				
			}
			
			mv.addObject("nameList", varList);
			mv.setViewName("businessuser/notice_list");

			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
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
