package com.fh.controller.phasell;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
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
import com.fh.entity.Shop;
import com.fh.service.phasell.ShopService;
import com.fh.util.Const;
import com.fh.util.Jurisdiction;
import com.fh.util.OSSUtils1;
import com.fh.util.PageData;

/** 
 * 类名称：ShopController
 * 创建人：DWCH 
 * 创建时间：2018-09-03
 */
@Controller
@RequestMapping(value="/shop")
public class ShopController extends BaseController {
	
	String menuUrl = "shop/list.do"; //菜单地址(权限用)

	@Resource(name="shopService")
	private ShopService shopService;
	
	
	//***************************二期修改开始*****************************************
	/**
	 * 跳转新增商场页面
	 * <p>The goAddShop</p>
	 * @return
	 * @author:Administrator 2018年9月5日
	 * @update: [updatedate] [changer][change description]
	 */
	@RequestMapping(value="/goAddShop")
	public ModelAndView goAddShop(){
		HttpServletRequest request=this.getRequest();
		logBefore(logger, "去新增商场页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		//pd = this.getPageData();
		request.getSession().removeAttribute("SHOP_ID");
		String idString=this.get32UUID();
		request.getSession().setAttribute("SHOP_ID", idString);
		try {
			mv.setViewName("shop/shop_edit");			//跳转录入商场页面
			mv.addObject("msg", "saveShop");
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}
	
	/**
	 * 录入商场
	 * <p>The saveShop</p>
	 * @param shop
	 * @return
	 * @throws Exception
	 * @author:Administrator 2018年9月5日
	 * @update: [updatedate] [changer][change description]
	 */
	@RequestMapping(value="/saveShop")
	public ModelAndView saveShop(Shop shop) throws Exception{
		logBefore(logger, "录入商场");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		//HttpServletRequest request = this.getRequest();
		//String SHOP_ID=(String)request.getSession().getAttribute("SHOP_ID");
		//shop.setSHOP_ID(SHOP_ID);   //主键
		shopService.save(shop);
		mv.addObject("msg","success");
		mv.setViewName("redirect:/shop/list.do");
		return mv;
	}
	
	/**
	 * 商场列表
	 * <p>The shopList</p>
	 * @param page
	 * @return
	 * @author:Administrator 2018年9月5日
	 * @update: [updatedate] [changer][change description]
	 */
	@RequestMapping(value="/list")
	public ModelAndView shopList(Page page){
		logBefore(logger, "列表商场");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		try{
			List<PageData> list = shopService.list(page);		//商场列表
			mv.setViewName("shop/shop_list");		
			mv.addObject("list", list);
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**
	 * 删除商场
	 * <p>The deleteShop</p>
	 * @param out
	 * @author:Administrator 2018年9月5日
	 * @update: [updatedate] [changer][change description]
	 */
	@RequestMapping(value="/deleteShop")
	public void deleteShop(PrintWriter out){
		logBefore(logger, "删除Businessuser");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			String SHOP_ID = (String)pd.get("SHOP_ID");
			shopService.delete(SHOP_ID);
			out.write("success");
			out.close();
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
	}
	
	
	
	/**
	 * 获取商场详情
	 * <p>The getShop</p>
	 * @return
	 * @author:Administrator 2018年9月5日
	 * @update: [updatedate] [changer][change description]
	 */
	@RequestMapping(value="/getShop")
	public ModelAndView getShop(String SHOP_ID){
		logBefore(logger, "去详情页面");
		ModelAndView mv = this.getModelAndView();
		try {
			Shop shop = shopService.findById(SHOP_ID);
			mv.setViewName("shop/shop_xq");
			mv.addObject("msg", "edit");
			mv.addObject("shop", shop);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}
	
	
	/**
	 * 修改商场
	 * <p>The edit</p>
	 * @return
	 * @throws Exception
	 * @author:Administrator 2018年9月5日
	 * @update: [updatedate] [changer][change description]
	 */
	@RequestMapping(value="/editShop")
	public ModelAndView editShop(Shop shop) throws Exception{
		logBefore(logger, "修改商场信息");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		shopService.edit(shop);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	
	/**
	 * 上传logo
	 * <p>The uploadLogo</p>
	 * @param myfile
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 * @author:Administrator 2018年9月5日
	 * @update: [updatedate] [changer][change description]
	 */
	@RequestMapping("/uploadLogo")
	@ResponseBody
	public String  uploadLogo(@RequestParam MultipartFile myfile, HttpServletRequest request, HttpServletResponse response) throws IOException {
		Map<String, Object> result = new HashMap<String, Object>();
		try {
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
				String SHOP_ID=(String)request.getSession().getAttribute("SHOP_ID");
				String path = "upload/user/"+SHOP_ID+"/" +this.get32UUID() + "/";
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

	/* ===============================权限================================== */
	@SuppressWarnings("unchecked")
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
