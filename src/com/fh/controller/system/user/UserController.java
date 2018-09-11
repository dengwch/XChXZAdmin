package com.fh.controller.system.user;

import java.io.File;
import java.io.FileInputStream;
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
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.SimpleHash;
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
import com.fh.entity.system.Role;
import com.fh.service.system.menu.MenuService;
import com.fh.service.system.role.RoleService;
import com.fh.service.system.user.UserService;
import com.fh.util.AppUtil;
import com.fh.util.Const;
import com.fh.util.DateUtil;
import com.fh.util.FileDownload;
import com.fh.util.FileUpload;
import com.fh.util.GetPinyin;
import com.fh.util.Jurisdiction;
import com.fh.util.ObjectExcelRead;
import com.fh.util.ObjectExcelView;
import com.fh.util.PageData;
import com.fh.util.PathUtil;
import com.fh.util.Tools;

/**
 * 类名称：UserController 创建人：FH 创建时间：2014年6月28日
 * @version
 */
@Controller
@RequestMapping(value = "/user")
public class UserController extends BaseController {

	String menuUrl = "user/listUsers.do"; // 菜单地址(权限用)
	@Resource(name = "userService")
	private UserService userService;
	@Resource(name = "roleService")
	private RoleService roleService;
	@Resource(name = "menuService")
	private MenuService menuService;

	/**
	 * 保存用户
	 */
	@RequestMapping(value = "/saveU")
	public ModelAndView saveU(PrintWriter out) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		Role rOLEMap=roleService.getRoleById(pd.getString("ROLE_ID"));
		pd.put("USER_ID", this.get32UUID()); // ID
		pd.put("RIGHTS", ""); // 权限
		pd.put("LAST_LOGIN", ""); // 最后登录时间
		pd.put("IP", ""); // IP
		pd.put("NAME",rOLEMap.getROLE_NAME());
		pd.put("STATUS", "0"); // 状态
		pd.put("SKIN", "default"); // 默认皮肤
		pd.put("CREATETIME", DateUtil.getTime().toString());
		pd.put("PASSWORD", new SimpleHash("SHA-1", pd.getString("USERNAME"), pd.getString("PASSWORD")).toString());

		if (null == userService.findByUId(pd)) {
			if (Jurisdiction.buttonJurisdiction(menuUrl, "add")) {
				userService.saveU(pd);
			} // 判断新增权限
			mv.addObject("msg", "success");
		} else {
			mv.addObject("msg", "failed");
		}
		mv.setViewName("save_result");
		return mv;
	}

	/**
	 * 判断用户名是否存在
	 */
	@RequestMapping(value = "/hasU")
	@ResponseBody
	public Object hasU() {
		Map<String, String> map = new HashMap<String, String>();
		String errInfo = "success";
		PageData pd = new PageData();
		try {
			pd = this.getPageData();
			if (userService.findByUId(pd) != null) {
				errInfo = "error";
			}
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		map.put("result", errInfo); // 返回结果
		return AppUtil.returnObject(new PageData(), map);
	}

	/**
	 * 判断邮箱是否存在
	 */
	@RequestMapping(value = "/hasE")
	@ResponseBody
	public Object hasE() {
		Map<String, String> map = new HashMap<String, String>();
		String errInfo = "success";
		PageData pd = new PageData();
		try {
			pd = this.getPageData();

			if (userService.findByUE(pd) != null) {
				errInfo = "error";
			}
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		map.put("result", errInfo); // 返回结果
		return AppUtil.returnObject(new PageData(), map);
	}

	/**
	 * 判断编码是否存在
	 */
	@RequestMapping(value = "/hasN")
	@ResponseBody
	public Object hasN() {
		Map<String, String> map = new HashMap<String, String>();
		String errInfo = "success";
		PageData pd = new PageData();
		try {
			pd = this.getPageData();
			if (userService.findByUN(pd) != null) {
				errInfo = "error";
			}
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		map.put("result", errInfo); // 返回结果
		return AppUtil.returnObject(new PageData(), map);
	}

	/**
	 * 修改用户
	 */
	@RequestMapping(value = "/editU")
	public ModelAndView editU() throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		
		if (pd.getString("PASSWORD") != null && !"".equals(pd.getString("PASSWORD"))) {
			pd.put("PASSWORD", new SimpleHash("SHA-1", pd.getString("USERNAME"), pd.getString("PASSWORD")).toString());
		}
		
		Role rOLEMap=roleService.getRoleById(pd.getString("ROLE_ID"));
		pd.put("NAME",rOLEMap.getROLE_NAME());
		PageData pd1 =userService.findByUiId(pd);
		pd.put("BZ",pd1.getString("BZ"));
		pd.put("EMAIL",pd1.getString("EMAIL"));
		pd.put("NUMBER",pd1.getString("NUMBER"));
		pd.put("PHONE",pd1.getString("PHONE"));
		pd.put("STATUS",pd1.getString("STATUS"));
		if (Jurisdiction.buttonJurisdiction(menuUrl, "edit")) {
			userService.editU(pd);
		}
		mv.addObject("msg", "success");
		mv.setViewName("save_result");
		return mv;
	}

	/**
	 * 去修改用户页面
	 */
	@RequestMapping(value = "/goEditU")
	public ModelAndView goEditU() throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();

		// 顶部修改个人资料
		String fx = pd.getString("fx");

		// System.out.println(fx);

		if ("head".equals(fx)) {
			mv.addObject("fx", "head");
		} else {
			mv.addObject("fx", "user");
		}

		List<Role> roleList = roleService.listAllERRoles(); // 列出所有二级角色
		pd = userService.findByUiId(pd); // 根据ID读取
		mv.setViewName("system/user/user_edit");
		mv.addObject("msg", "editU");
		mv.addObject("pd", pd);
		mv.addObject("roleList", roleList);

		return mv;
	}

	/**
	 * 去新增用户页面
	 */
	@RequestMapping(value = "/goAddU")
	public ModelAndView goAddU() throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		List<Role> roleList;

		roleList = roleService.listAllERRoles(); // 列出所有二级角色

		mv.setViewName("system/user/user_edit");
		mv.addObject("msg", "saveU");
		mv.addObject("pd", pd);
		mv.addObject("roleList", roleList);

		return mv;
	}

	/**
	 * 显示用户列表(用户组)
	 */
	@RequestMapping(value = "/listUsers")
	public ModelAndView listUsers(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String USER_ID = pd.getString("USER_ID");
		String STATUS = pd.getString("STATUS");
		String USERNAME = pd.getString("USERNAME");
		System.out.println(USER_ID);
		System.out.println(STATUS);
		if (null != USER_ID && !"".equals(USER_ID.trim())&&null != STATUS && !"".equals(STATUS.trim())) {
			PageData pd1 = userService.findByUiId(pd);
			pd1.put("USER_ID", USER_ID);
			pd1.put("STATUS", STATUS);
			userService.editU(pd1);
		}
		if (pd.getString("PASSWORD") != null && !"".equals(pd.getString("PASSWORD").trim())) {
			PageData pd1 = userService.findByUiId(pd);
			pd1.put("PASSWORD", new SimpleHash("SHA-1", pd1.getString("USERNAME"), pd.getString("PASSWORD")).toString());
			userService.editU(pd);
		}
		
		
		if (null != USERNAME && !"".equals(USERNAME)) {
			USERNAME = USERNAME.trim();
			pd.put("USERNAME", USERNAME);
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

		page.setPd(pd);
		List<PageData> userList = userService.listPdPageUser(page); // 列出用户列表
		List<Role> roleList = roleService.listAllERRoles(); // 列出所有二级角色

		mv.setViewName("system/user/user_list");
		mv.addObject("userList", userList);
		mv.addObject("roleList", roleList);
		mv.addObject("pd", pd);
		mv.addObject(Const.SESSION_QX, this.getHC()); // 按钮权限
		return mv;
	}
	
	/**
	 * 显示用户列表(tab方式)
	 */
	@RequestMapping(value = "/listtabUsers")
	public ModelAndView listtabUsers(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		List<PageData> userList = userService.listAllUser(pd); // 列出用户列表
		mv.setViewName("system/user/user_tb_list");
		mv.addObject("userList", userList);
		mv.addObject("pd", pd);
		mv.addObject(Const.SESSION_QX, this.getHC()); // 按钮权限
		return mv;
	}

	/**
	 * 删除用户
	 */
	@RequestMapping(value = "/deleteU")
	public void deleteU(PrintWriter out) {
		PageData pd = new PageData();
		try {
			pd = this.getPageData();
			if (Jurisdiction.buttonJurisdiction(menuUrl, "del")) {
				userService.deleteU(pd);
			}
			out.write("success");
			out.close();
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}

	}

	/**
	 * 批量删除
	 */
	@RequestMapping(value = "/deleteAllU")
	@ResponseBody
	public Object deleteAllU() {
		PageData pd = new PageData();
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String USER_IDS = pd.getString("USER_IDS");

			if (null != USER_IDS && !"".equals(USER_IDS)) {
				String ArrayUSER_IDS[] = USER_IDS.split(",");
				if (Jurisdiction.buttonJurisdiction(menuUrl, "del")) {
					userService.deleteAllU(ArrayUSER_IDS);
				}
				pd.put("msg", "ok");
			} else {
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

	// ===================================================================================================

	/*
	 * 导出用户信息到EXCEL
	 * @return
	 */
	@RequestMapping(value = "/excel")
	public ModelAndView exportExcel() {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			if (Jurisdiction.buttonJurisdiction(menuUrl, "cha")) {
				// 检索条件===
				String USERNAME = pd.getString("USERNAME");
				if (null != USERNAME && !"".equals(USERNAME)) {
					USERNAME = USERNAME.trim();
					pd.put("USERNAME", USERNAME);
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
				// 检索条件===

				Map<String, Object> dataMap = new HashMap<String, Object>();
				List<String> titles = new ArrayList<String>();

				titles.add("用户名"); // 1
				titles.add("编号"); // 2
				titles.add("姓名"); // 3
				titles.add("职位"); // 4
				titles.add("手机"); // 5
				titles.add("邮箱"); // 6
				titles.add("最近登录"); // 7
				titles.add("上次登录IP"); // 8

				dataMap.put("titles", titles);

				List<PageData> userList = userService.listAllUser(pd);
				List<PageData> varList = new ArrayList<PageData>();
				for (int i = 0; i < userList.size(); i++) {
					PageData vpd = new PageData();
					vpd.put("var1", userList.get(i).getString("USERNAME")); // 1
					vpd.put("var2", userList.get(i).getString("NUMBER")); // 2
					vpd.put("var3", userList.get(i).getString("NAME")); // 3
					vpd.put("var4", userList.get(i).getString("ROLE_NAME")); // 4
					vpd.put("var5", userList.get(i).getString("PHONE")); // 5
					vpd.put("var6", userList.get(i).getString("EMAIL")); // 6
					vpd.put("var7", userList.get(i).getString("LAST_LOGIN")); // 7
					vpd.put("var8", userList.get(i).getString("IP")); // 8
					varList.add(vpd);
				}
				dataMap.put("varList", varList);
				ObjectExcelView erv = new ObjectExcelView(); // 执行excel操作
				mv = new ModelAndView(erv, dataMap);
			}
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		return mv;
	}

	/**
	 * 打开上传EXCEL页面
	 */
	@RequestMapping(value = "/goUploadExcel")
	public ModelAndView goUploadExcel() throws Exception {
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/user/uploadexcel");
		return mv;
	}

	/**
	 * 下载模版
	 */
	@RequestMapping(value = "/downExcel")
	public void downExcel(HttpServletResponse response) throws Exception {

		FileDownload.fileDownload(response, PathUtil.getClasspath() + Const.FILEPATHFILE + "Users.xls", "Users.xls");

	}

	/**
	 * 从EXCEL导入到数据库
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value = "/readExcel")
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
			    		pd.put("codeid", this.get32UUID()); // ID
						pd.put("codename", (String)map.get("col0")); // 姓名
						/*if (userService.findBycodename(pd) != null) { // 邮箱已存在就跳过
							continue;
						}
						pd.put("flag", "1"); // 编号已存在就跳过
						pd.put("createtime",new Date()); 
						userService.saveCode(pd);*/
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

		mv.setViewName("redirect:/user/listCodes.do");
		return mv;
	}
	/**
	 * 显示红包码列表
	 *//*
	@RequestMapping(value = "/listCodes")
	public ModelAndView listCodes(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		//List<PageData> varList = userService.listPageCode(page); // 列出code列表
		mv.setViewName("system/user/code_list");
		//mv.addObject("varList", varList);
		mv.addObject("pd", pd);
		mv.addObject(Const.SESSION_QX, this.getHC()); // 按钮权限
		return mv;
	}*/
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format, true));
	}

	/* ===============================权限================================== */
	@SuppressWarnings("unchecked")
	public Map<String, String> getHC() {
		Subject currentUser = SecurityUtils.getSubject(); // shiro管理的session
		Session session = currentUser.getSession();
		return (Map<String, String>) session.getAttribute(Const.SESSION_QX);
	}
	/* ===============================权限================================== */
}
