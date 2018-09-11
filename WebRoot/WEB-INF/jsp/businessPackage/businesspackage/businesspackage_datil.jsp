<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<base href="<%=basePath%>">
		<meta charset="utf-8" />
		<title></title>
		<meta name="description" content="overview & stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link href="static/css/bootstrap.min.css" rel="stylesheet" />
		<link href="static/css/bootstrap-responsive.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="static/css/font-awesome.min.css" />
		<!-- 下拉框 -->
		<link rel="stylesheet" href="static/css/chosen.css" />
		
		<link rel="stylesheet" href="static/css/ace.min.css" />
		<link rel="stylesheet" href="static/css/ace-responsive.min.css" />
		<link rel="stylesheet" href="static/css/ace-skins.min.css" />
		
		<link rel="stylesheet" href="static/css/datepicker.css" /><!-- 日期框 -->
		<script type="text/javascript" src="static/js/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		<style type="text/css">
	td.center,th.center{text-align:center;vertical-align: middle;}
	
	</style>
	</head>
<body>
	<form action="businesspackage/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="BUSINESSPACKAGE_ID" id="BUSINESSPACKAGE_ID" value="${pd.BUSINESSPACKAGE_ID}"/>
		<div id="zhongxin">
		<table id="table_report" class="table table-striped table-bordered table-hover">
			<tr>
				<td style="width:520px;text-align: right;padding-top: 13px;">套餐名:</td>
				<td><input readonly="readonly" type="text" name="PACKAGENAME" id="PACKAGENAME" value="${pd.PACKAGENAME}" maxlength="32" placeholder="这里输入套餐名" title="套餐名"/></td>
			</tr>
			
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">业务名:</td>
				<td><input readonly="readonly" type="text" name="BUSINESS_NAME" id="BUSINESS_NAME" value="${pd.BUSINESS_NAME}" maxlength="32" placeholder="这里输入业务名" title="业务名"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">业务描述:</td>
				<td><textarea readonly="readonly" name="BUSINESS_DESCRIBE" id="BUSINESS_DESCRIBE" placeholder="这里输入描述" title="描述">${pd.BUSINESS_DESCRIBE}</textarea></td>
			</tr>
			<tr>
				<td style="width:150px;text-align: right;padding-top: 13px;">服务费:</td>
				<td><input readonly="readonly"  type="text" name="FWF" id="FWF" value="${pd.FWF}" maxlength="32" placeholder="这里输入服务费" title="服务费"/></td>
			</tr>
			<tr>
				<td style="width:520px;text-align: right;padding-top: 13px;">套餐描述:</td>
				<td><textarea readonly="readonly" name="PACKAGE_DESCRIBE" id="PACKAGE_DESCRIBE" placeholder="这里输入套餐描述" title="套餐描述">${pd.PACKAGE_DESCRIBE}</textarea></td>
			</tr>
			<tr>
				<td style="width:520px;text-align: right;padding-top: 13px;">数量:</td>
				<td><input readonly="readonly" type="text" name="COUNT" id="COUNT" value="${pd.COUNT}" maxlength="32" placeholder="这里输入数量" title="数量"/></td>
			</tr>
			<tr>
				<td style="width:520px;text-align: right;padding-top: 13px;">套餐定价:</td>
				<td><input readonly="readonly" type="text" name="TOTALPRICE" id="TOTALPRICE" value="${pd.TOTALPRICE}" maxlength="32" placeholder="这里输入套餐定价" title="套餐定价"/></td>
			</tr>
			
			<tr>
				<td style="text-align: center;" colspan="10">
					<a class="btn btn-mini btn-primary" onclick="buspdatil('${pd.BUSINESS_ID}','${pd.BUSINESSPACKAGE_ID}');">编辑</a>
					<a class="btn btn-mini btn-danger" onclick="datil('${pd.BUSINESS_ID}');">返回</a>
				</td>
			</tr>
		</table>
		</div>
		
		<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green">提交中...</h4></div>
		
	</form>
	
	
		<!-- 引入 -->
		<script type="text/javascript">window.jQuery || document.write("<script src='static/js/jquery-1.9.1.min.js'>\x3C/script>");</script>
		<script src="static/js/bootstrap.min.js"></script>
		<script src="static/js/ace-elements.min.js"></script>
		<script src="static/js/ace.min.js"></script>
		<script type="text/javascript" src="static/js/chosen.jquery.min.js"></script><!-- 下拉框 -->
		<script type="text/javascript" src="static/js/bootstrap-datepicker.min.js"></script><!-- 日期框 -->
		<script type="text/javascript">
		$(top.hangge());
		$(function() {
			
			//单选框
			$(".chzn-select").chosen(); 
			$(".chzn-select-deselect").chosen({allow_single_deselect:true}); 
			
			//日期框
			$('.date-picker').datepicker();
			
		});
		//返回
		function datil(Id){
			 window.location.href=window.location.href='${pageContext.request.contextPath}/business/goDatil.do?BUSINESS_ID='+Id;
		}
		//编辑
		function buspdatil(BUSINESS_ID,BUSINESSPACKAGE_ID){
			
			 window.location.href=window.location.href='${pageContext.request.contextPath}/businesspackage/goEdit.do?BUSINESS_ID='+BUSINESS_ID+'&BUSINESSPACKAGE_ID='+BUSINESSPACKAGE_ID;
		}
		</script>
</body>
</html>