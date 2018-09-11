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

import org.apache.commons.lang.ArrayUtils;
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
import com.fh.service.backgroup.OrderMangerService;
import com.fh.service.backgroup.area.AreaService;
import com.fh.service.backgroup.bussinessactivity.BussinessActivityService;
import com.fh.service.backgroup.classificationrelation.ClassificationrelationService;
import com.fh.service.backgroup.commodity.CommodityService;
import com.fh.service.backgroup.commodityimg.CommodityimgService;
import com.fh.service.backgroup.commodityspecification.CommoditySpecificationService;
import com.fh.service.backgroup.logistics.LogisticsService;
import com.fh.service.backgroup.specificationproperties.SpecificationPropertiesService;
import com.fh.service.backgroup.specifications.SpecificationsService;
import com.fh.service.businessuser.BusinessuserService;
import com.fh.service.phasell.ClassificationService;
import com.fh.util.AppUtil;
import com.fh.util.ChangeUtil;
import com.fh.util.Const;
import com.fh.util.Jurisdiction;
import com.fh.util.ObjectExcelView;
import com.fh.util.PageData;
import com.fh.util.SendMsg;

/**
 * 类名称：CommodityController 创建人：FH 创建时间：2017-03-08
 */
@Controller
@RequestMapping(value = "/commodity")
public class CommodityController extends BaseController {

	String menuUrl = "commodity/list.do"; // 菜单地址(权限用)
	@Resource(name = "commodityService")
	private CommodityService commodityService;
	@Resource(name = "classificationService")
	private ClassificationService classificationService;
	@Resource(name = "areaService")
	private AreaService areaService;
	@Resource(name = "logisticsService")
	private LogisticsService logisticsService;
	@Resource(name = "specificationsService")
	private SpecificationsService specificationsService;
	@Resource(name = "specificationpropertiesService")
	private SpecificationPropertiesService specificationpropertiesService;
	@Resource(name="commodityspecificationService")
	private CommoditySpecificationService commodityspecificationService;
	@Resource(name="classificationrelationService")
	private ClassificationrelationService classificationrelationService;
	@Resource(name="bussinessactivityService")
	private BussinessActivityService bussinessactivityService;
	@Resource(name="businessuserService")
	private BusinessuserService businessuserService;
	@Resource(name="commodityimgService")
	private CommodityimgService commodityimgService;
	@Resource(name="ordermangerService")
	private OrderMangerService ordermangerService;

	
	

	/**
	 * 删除/下架
	 */
	@RequestMapping(value = "/delete")
	public void delete(PrintWriter out) {
		logBefore(logger, "下架Commodity");
		
		
		PageData pd = new PageData();
		try {
			
			pd = this.getPageData();
			
			PageData pd1 = commodityService.findById(pd); // 根据ID读取
			PageData pd2 = businessuserService.findById(pd1);	//根据ID读取
			
			String XJYY = (String)pd.get("XJYY");
			if (null!=XJYY||!"".equals(XJYY)) {
				SendMsg.httpSender(pd2.getString("TEL"),"尊敬的"+pd2.getString("SHOPNAME")+"，您的商品“"+pd1.getString("NAME")+"”由于“"+XJYY+"”已经下架，请及时登录查看!");
			}
			//commodityService.delete(pd);
			commodityService.editFlag(pd);
			out.write("success");
			out.close();
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}

	}

	
	
	/**
	 * 列表
	 */
	@RequestMapping(value = "/list")
	public ModelAndView list(Page page,HttpServletRequest request) {
		logBefore(logger, "列表Commodity");
		/*try {
			PageData pageData = this.addLog("查看列表", "查看Commodity列表", "Commodity");
			String  BUSINESSUSER_ID=(String) request.getSession().getAttribute("BUSINESSUSER_ID");
			pageData.put("BUSINESSUSER_ID",BUSINESSUSER_ID);
			logService.save(pageData);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}*/
		// if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		// //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		String  BUSINESSUSER_ID=(String) request.getSession().getAttribute("BUSINESSUSER_ID");

		try {
			pd = this.getPageData();
			String CLASSIFICATION_ID = pd.getString("CLASSIFICATION_ID");
			if (null != CLASSIFICATION_ID && !"".equals(CLASSIFICATION_ID)) {
				CLASSIFICATION_ID = CLASSIFICATION_ID.trim();
				pd.put("CLASSIFICATION_ID", CLASSIFICATION_ID);
			}
			String SHOPNAME = pd.getString("SHOPNAME");
			if (null != SHOPNAME && !"".equals(SHOPNAME)) {
				SHOPNAME = SHOPNAME.trim();
				pd.put("SHOPNAME", SHOPNAME);
			}
			String NAME = pd.getString("NAME");
			if (null != NAME && !"".equals(NAME)) {
				NAME = NAME.trim();
				pd.put("NAME", NAME);
			}
			
			
			pd.put("BUSINESSUSER_ID", BUSINESSUSER_ID);
			
			page.setPd(pd);
			List<PageData> varList = commodityService.list(page); // 列出Commodity列表
			List<PageData> listClass = classificationService.listAllOne(pd);
			List<PageData>	DPList = businessuserService.listAll(pd);	//列出Businessuser列表
			mv.addObject("DPList", DPList);
			mv.addObject("listClass", listClass);
			mv.setViewName("commodity/commodity_list");
			mv.addObject("varList", varList);
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX, this.getHC()); // 按钮权限
			for (int i = 0; i < 5; i++) {
				String  IMGURL=(String) request.getSession().getAttribute("IMGURL1");
				if (null==IMGURL || "null".equals(IMGURL)) {
					IMGURL="";
				}
				//String IMGURL1=IMGURL+"#"+i+"#";
				String IMGURL1="";
				if("".equals(IMGURL1)){
					IMGURL1 = IMGURL1 + IMGURL+"#"+i;
		    	}else{
		    		IMGURL1 = IMGURL1 +"#"+ IMGURL+"#"+i;
		    	}
				request.getSession().setAttribute("IMGURL1", IMGURL1);
			}
			String  IMGURL=(String) request.getSession().getAttribute("IMGURL1");
			String[] ing=IMGURL.split("#");
			System.out.println(IMGURL);
			for (int i = 0; i < ing.length; i++) {
				//System.out.println(ing[i]);
			}
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		return mv;
	}
public static void main(String[] args) {
	String qString="hgsda";
	for (int i = 0; i < qString.length(); i++) {
		System.out.println(i);
		if (i==qString.length()-1) {
			System.out.println("sdhkjs");
		}
	}
}


	/**
	 * 去修改页面
	 */
	@RequestMapping(value = "/goEdit")
	public ModelAndView goEdit(HttpServletRequest request) {
		logBefore(logger, "去修改Commodity页面");
		/*try {
			PageData pageData = this.addLog("去修改", "去修改Commodity页面", "Commodity");
			String  BUSINESSUSER_ID=(String) request.getSession().getAttribute("BUSINESSUSER_ID");
			pageData.put("BUSINESSUSER_ID",BUSINESSUSER_ID);
			logService.save(pageData);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}*/
		String  BUSINESSUSER_ID=(String) request.getSession().getAttribute("BUSINESSUSER_ID");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		
		try {
			pd = commodityService.findById(pd); // 根据ID读取
			
			List<PageData> listClass = classificationService.listAllTwo(getPageData());
			mv.addObject("listClass", listClass);
			List<PageData> listArea = areaService.listAllOne(getPageData());
			mv.addObject("listArea", listArea);
			pd.put("BUSINESSUSER_ID", BUSINESSUSER_ID);
			List<PageData> listLogistics = logisticsService.listAll(pd);
			List<PageData> listActivity = bussinessactivityService.listAll(null);
			mv.addObject("listActivity", listActivity);
			mv.addObject("listLogistics", listLogistics);
			mv.setViewName("backgroup/commodity/commodity_edit");
			mv.addObject("msg", "edit");
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		return mv;
	}
	/**
	 * 去XQ页面
	 */
	@RequestMapping(value = "/goXQ")
	public ModelAndView goXQ(HttpServletRequest request) {
		logBefore(logger, "去goXQ页面");
		/*try {
			PageData pageData = this.addLog("去修改", "去修改Commodity页面", "Commodity");
			String  BUSINESSUSER_ID=(String) request.getSession().getAttribute("BUSINESSUSER_ID");
			pageData.put("BUSINESSUSER_ID",BUSINESSUSER_ID);
			logService.save(pageData);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}*/
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		
		try {
			pd = commodityService.findById(pd); // 根据ID读取
			PageData pd2 =new PageData();
			pd2.put("BUSINESSUSER_ID", pd.getString("BUSINESSUSER_ID"));
			mv.addObject("BUSINESSUSER_ID", pd.getString("BUSINESSUSER_ID"));
			pd2.put("COMMODITY_ID", pd.getString("COMMODITY_ID"));
			pd.put("CLASSIFICATION_ID", pd.getString("CLASSIFICATION_ID"));
			PageData pd1 =classificationService.findById(pd);
			if(null!=pd1){
				pd.put("SUPERIOR", pd1.getString("SUPERIOR"));
			}
			
			List<PageData> varOList = commodityimgService.listAll(pd2);
			mv.addObject("varOList", varOList);
			//List<PageData> listClass = classificationService.listAllTwo(getPageData());
			List<PageData> listClass = classificationService.listAllOne(getPageData());
			mv.addObject("listClass", listClass);
			List<PageData> listActivity = bussinessactivityService.listAll(null);
			List<PageData> deIMGList = ordermangerService.listAllDEIMG(pd2);
			mv.addObject("deIMGList", deIMGList);
			mv.addObject("listActivity", listActivity);
			mv.setViewName("commodity/commodity_XQ");
			mv.addObject("msg", "edit");
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		return mv;
	}
	/**
	 * 查找规格
	 */
	@RequestMapping("findGuige")
	@ResponseBody
	public Map<String, Object> findGuige(String id) {
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			PageData pd = getPageData();
			if (id == null || "".equals(id)) {
				id = "0";
			}
			pd.put("id", id);
			HttpServletRequest request=this.getRequest();
			String  BUSINESSUSER_ID=request.getParameter("BUSINESSUSER_ID");
			pd.put("BUSINESSUSER_ID", BUSINESSUSER_ID);
			List<PageData> listSpe = specificationsService.listById(pd);
			result.put("listSpe", listSpe);
			Map<String, Object> mapList = new HashMap<String, Object>();
			if (listSpe != null) {
				for (PageData pageData : listSpe) {
					pageData.put("BUSINESSUSER_ID", BUSINESSUSER_ID);
					List<PageData> listPerties = specificationpropertiesService.listById(pageData);
					mapList.put(pageData.getString("SPECIFICATIONS_ID"), listPerties);
				}
				result.put("mapList", mapList);
			}
			result.put("flag", 1);
		} catch (Exception e) {
			result.put("flag", 0);
		}

		return result;
	}

	/**
	 * 生成表格
	 */
	@RequestMapping("findBiaoGe")
	@ResponseBody
	public Map<String, Object> findBiaoGe(String id, String pausedCause) {
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			PageData pd = getPageData();
			if (id == null || "".equals(id)) {
				id = "0";
			}
			String[] pausedCauseS = pausedCause.split(",");
			pd.put("id", id);
			HttpServletRequest request = this.getRequest();
			String  BUSINESSUSER_ID= request.getParameter("BUSINESSUSER_ID");
			pd.put("BUSINESSUSER_ID",BUSINESSUSER_ID);
			List<PageData> listSpe = specificationsService.listById(pd);
			result.put("listSpe", listSpe);
			Map<String, Object> mapList = new HashMap<String, Object>();
			List<String[]> listStr = new ArrayList<String[]>();
			if (listSpe != null) {
				toData(pausedCauseS, listSpe, listStr,BUSINESSUSER_ID);
			}
			List<List<String>> list = new ArrayList();
			Integer num=1;
			if(listStr!=null&&listStr.size()>0){
				for(String [] strs:listStr){
					num*=strs.length;
				}
				result.put("num",num);
			}
			if (listStr.size() < 2) {
				if (listStr != null&&listStr.size()>0) {
					String[] strS = listStr.get(0);
					if (strS != null) {
						for (String str : strS) {
							List<String> s=new ArrayList<String>();
							s.add(str);
							list.add(s);
						}
					}
				}
			} else {
				list = ChangeUtil.doExchange(listStr);
			}
			List<List<Map<String,Object>>> listAllMap=new ArrayList<List<Map<String,Object>>>(); 
			if(list!=null){
				for(List<String> strs:list){
					List<Map<String,Object>> listMap=new ArrayList<Map<String,Object>>();
					PageData pageData=new PageData();
					if(strs!=null){
						for(String str:strs){
							pageData.put("SPECIFICATIONPROPERTIES_ID",str);
							pageData.put("BUSINESSUSER_ID",BUSINESSUSER_ID);
							pageData=specificationpropertiesService.findById(pageData);
							listMap.add(pageData);
						}
						listAllMap.add(listMap);
					}
				}
			}
			result.put("list", listAllMap);
			result.put("flag", 1);
		} catch (Exception e) {
			result.put("flag", 0);
			e.printStackTrace();
		}

		return result;
	}

	/**
	 * 转换成数组元素
	 * 
	 * @param pausedCauseS
	 * @param listSpe
	 * @param listStr
	 * @throws Exception
	 */
	private void toData(String[] pausedCauseS, List<PageData> listSpe, List<String[]> listStr,String  BUSINESSUSER_ID) throws Exception {
		for (PageData pageData : listSpe) {
			HttpServletRequest request = this.getRequest();
			pageData.put("BUSINESSUSER_ID",BUSINESSUSER_ID);
			List<PageData> listPerties = specificationpropertiesService.listById(pageData);
			if (listPerties != null) {
				List<String> pertiesList = new ArrayList<String>();
				Integer count = 0;
				for (PageData perties : listPerties) {
					String SPECIFICATIONPROPERTIES_ID = perties.getString("SPECIFICATIONPROPERTIES_ID");
					if (ArrayUtils.contains(pausedCauseS, SPECIFICATIONPROPERTIES_ID)) {
						pertiesList.add(SPECIFICATIONPROPERTIES_ID);
						count++;
					}
				}

				pageData.put("count", count);
				if (pertiesList.size() > 0) {
					String[] s = new String[pertiesList.size()];
					if (pertiesList != null) {
						for (int i = 0; i < pertiesList.size(); i++) {
							s[i] = pertiesList.get(i);
						}
					}
					listStr.add(s);
				}
			}
		}
	}

	/**
	 * 批量删除
	 */
	@RequestMapping(value = "/deleteAll")
	@ResponseBody
	public Object deleteAll() {
		logBefore(logger, "批量删除Commodity");
		/**/
		PageData pd = new PageData();
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if (null != DATA_IDS && !"".equals(DATA_IDS)) {
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				commodityService.deleteAll(ArrayDATA_IDS);
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

	/*
	 * 导出到excel
	 * 
	 * @return
	 */
	@RequestMapping(value = "/excel")
	public ModelAndView exportExcel() {
		logBefore(logger, "导出Commodity到excel");
		if (!Jurisdiction.buttonJurisdiction(menuUrl, "cha")) {
			return null;
		}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			Map<String, Object> dataMap = new HashMap<String, Object>();
			List<String> titles = new ArrayList<String>();
			titles.add("分类ID"); // 1
			titles.add("商品名称"); // 2
			titles.add("商品货号"); // 3
			titles.add("售价"); // 4
			titles.add("库存"); // 5
			titles.add("重量"); // 6
			titles.add("体积"); // 7
			titles.add("商品图片"); // 8
			titles.add("所在地"); // 9
			titles.add("运费模板"); // 10
			titles.add("分佣比例"); // 11
			titles.add("上架模式"); // 12
			dataMap.put("titles", titles);
			List<PageData> varOList = commodityService.listAll(pd);
			List<PageData> varList = new ArrayList<PageData>();
			for (int i = 0; i < varOList.size(); i++) {
				PageData vpd = new PageData();
				vpd.put("var1", varOList.get(i).getString("CLASSIFICATION_ID")); // 1
				vpd.put("var2", varOList.get(i).getString("NAME")); // 2
				vpd.put("var3", varOList.get(i).get("NUMBER").toString()); // 3
				vpd.put("var4", varOList.get(i).get("PRICE").toString()); // 4
				vpd.put("var5", varOList.get(i).get("STOCK").toString()); // 5
				vpd.put("var6", varOList.get(i).get("WEIGHT").toString()); // 6
				vpd.put("var7", varOList.get(i).getString("VOLUME")); // 7
				vpd.put("var8", varOList.get(i).getString("IMG")); // 8
				vpd.put("var9", varOList.get(i).getString("LOCATION")); // 9
				vpd.put("var10", varOList.get(i).getString("FREIGHTTEMPLATE")); // 10
				vpd.put("var11", varOList.get(i).getString("PERCENTAGECOMMISSION")); // 11
				vpd.put("var12", varOList.get(i).get("TYPE").toString()); // 12
				varList.add(vpd);
			}
			dataMap.put("varList", varList);
			ObjectExcelView erv = new ObjectExcelView();
			mv = new ModelAndView(erv, dataMap);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		return mv;
	}

	/* ===============================权限================================== */
	public Map<String, String> getHC() {
		Subject currentUser = SecurityUtils.getSubject(); // shiro管理的session
		Session session = currentUser.getSession();
		return (Map<String, String>) session.getAttribute(Const.SESSION_QX);
	}

	/* ===============================权限================================== */

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format, true));
	}
}
