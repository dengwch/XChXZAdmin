<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%> 
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
	<form action="business/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="BUSINESS_ID" id="BUSINESS_ID" value="${pd.BUSINESS_ID}"/>
		<input type="hidden" name="FLAG" id="FLAG" value=""/>
		<input type="hidden" name="BUSINESSPACKAGE_ID" id="BUSINESSPACKAGE_ID" value=""/>
		<div id="zhongxin">
		<table id="table_report" class="table table-striped table-bordered table-hover">
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">业务名:</td>
				<td><input readonly="readonly" type="text" name="BUSINESS_NAME" id="BUSINESS_NAME" value="${pd.BUSINESS_NAME}" maxlength="32" placeholder="这里输入业务名" title="业务名"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">描述:</td>
				<td><textarea readonly="readonly" name="BUSINESS_DESCRIBE" id="BUSINESS_DESCRIBE" placeholder="这里输入描述" title="描述">${pd.BUSINESS_DESCRIBE}</textarea></td>
			</tr>
			<tr>
				<td style="width:150px;text-align: right;padding-top: 13px;">服务费:</td>
				<td><input readonly="readonly" type="text" name="FWF" id="FWF" value="${pd.FWF}" maxlength="32" placeholder="这里输入服务费" title="服务费"/></td>
			</tr>
			<tr>
				<td colspan="2" style="width:70px;text-align: right;padding-top: 13px; margin-right: 10px;">
				<a style="margin-bottom:10px;" class="btn btn-small btn-success" onclick="addbus('${pd.BUSINESS_ID}','${pd.BUSINESS_NAME}','${pd.BUSINESS_DESCRIBE}');">新增套餐</a>
				</td>
			</tr>
			
			<tr>
				
					<td colspan="2" style="width:50%;text-align:left;padding-top: 13px;">
					<table id="table_report" class="table table-striped table-bordered table-hover">
				
				<thead>
					<tr>
						<th class="center">套餐名</th>
						<th class="center">定价</th>
						<th class="center">描述</th>
						<th class="center">状态</th>
						<th class="center">操作</th>
					</tr>
				</thead>
										
					
				<!-- 开始循环 -->	
				
						<c:forEach items="${varList}" var="var" varStatus="vs1">
							<tr>
								
								<td class="center">${var.PACKAGENAME}</td>
								<td class="center">${var.TOTALPRICE}</td >
								<td class="center">${var.PACKAGE_DESCRIBE}</td>
									<c:if test="${var.FLAG=='1'}">
										<td class="center">在售</td>
									</c:if>
									<c:if test="${var.FLAG=='2'}">
										<td class="center">停售</td>
									</c:if>
										
							<td class="center" id="qe${var.BUSINESS_ID}">
									<c:if test="${var.FLAG=='1'}">
										<a class="btn btn-small btn-success" onclick="dlbus('${pd.BUSINESS_ID}','${var.BUSINESSPACKAGE_ID}','2');">停售</a>
									</c:if>
									<c:if test="${var.FLAG=='2'}">
										<a class="btn btn-small btn-success" onclick="dlbus('${pd.BUSINESS_ID}','${var.BUSINESSPACKAGE_ID}','1');">在售</a>
										
									</c:if>
									
									<a class="btn btn-small btn-success" onclick="buspdatil('${pd.BUSINESS_ID}','${var.BUSINESSPACKAGE_ID}');">查看详情</a>
								
								</td>
							</tr>
						
						</c:forEach>
					
					
						
					<c:if test="${varList==null || fn:length(varList) == 0}">
					<tr class="main_info">
							<td colspan="100" class="center" >没有相关数据</td>
						</tr>
					
					</c:if>
			</table>
				
				</td>
			</tr>
			
			
			
			<tr>
				<td style="text-align: center;" colspan="10">
					<a class="btn btn-mini btn-danger" href="${pageContext.request.contextPath }/business/list.do">返回列表 </a>
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
		//修改套餐
		function dlbus(BUSINESS_ID,BUSINESSPACKAGE_ID,flag) {
			$("#FLAG").val(flag);
			$("#BUSINESSPACKAGE_ID").val(BUSINESSPACKAGE_ID);
			if($("#BUSINESS_ID").val()!=''&&$("#BUSINESS_ID").val()!=null&&$("#FLAG").val()!=''&&$("#FLAG").val()!=null && $("#BUSINESSPACKAGE_ID").val()!=''&&$("#BUSINESSPACKAGE_ID").val()!=null){
				top.jzts();
				$("#Form").submit();
			}
		}
		//查看套餐详情
		function buspdatil(BUSINESS_ID,BUSINESSPACKAGE_ID){
			
			 window.location.href=window.location.href='${pageContext.request.contextPath}/businesspackage/goDatil.do?BUSINESS_ID='+BUSINESS_ID+'&BUSINESSPACKAGE_ID='+BUSINESSPACKAGE_ID;
		}
		
		function addbus(BUSINESS_ID,BUSINESS_NAME,BUSINESS_DESCRIBE){
			window.location.href='${pageContext.request.contextPath}/businesspackage/goAdd2.do?BUSINESS_ID='+BUSINESS_ID+'&BUSINESS_NAME='+BUSINESS_NAME+'&BUSINESS_DESCRIBE='+BUSINESS_DESCRIBE;
		}
		
		</script>
</body>
</html>