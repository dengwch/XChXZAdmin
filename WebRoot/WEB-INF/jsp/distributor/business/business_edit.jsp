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
<script type="text/javascript">
	
	
	//保存
	function save(){
			if($("#BUSINESS_NAME").val()==""){
			$("#BUSINESS_NAME").tips({
				side:3,
	            msg:'请输入业务名',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#BUSINESS_NAME").focus();
			return false;
		}
		if($("#BUSINESS_DESCRIBE").val()==""){
			$("#BUSINESS_DESCRIBE").tips({
				side:3,
	            msg:'请输入描述',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#BUSINESS_DESCRIBE").focus();
			return false;
		}
		if($("#FWF").val()==""){
			$("#FWF").tips({
				side:3,
	            msg:'请输入描述',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#FWF").focus();
			return false;
		}else{
			var r = /^\d+(\.\d+)?$/;
			 if (!r.test($("#FWF").val())){
			    	$("#FWF").tips({
						side:3,
			            msg:'请输入正确服务费(整数或小数)',
			            bg:'#AE81FF',
			            time:2
			        });
					$("#FWF").focus();
					return false;
			    }
			
		}
		$("#Form").submit();
		$("#zhongxin").hide();
		$("#zhongxin2").show();
	}
	
</script>
	</head>
<body>
	<form action="business/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="BUSINESS_ID" id="BUSINESS_ID" value="${pd.BUSINESS_ID}"/>
		<input type="hidden" name="edid" id="edid" value="edid"/>
		<div id="zhongxin">
		<table id="table_report" class="table table-striped table-bordered table-hover">
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">业务名:</td>
				<td><input type="text" name="BUSINESS_NAME" id="BUSINESS_NAME" value="${pd.BUSINESS_NAME}" maxlength="32" placeholder="这里输入业务名" title="业务名"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">描述:</td>
				<td><input type="text" name="BUSINESS_DESCRIBE" id="BUSINESS_DESCRIBE" value="${pd.BUSINESS_DESCRIBE}" maxlength="32" placeholder="这里输入描述" title="描述"/></td>
			</tr>
			<tr>
				<td style="width:40%;text-align: right;padding-top: 13px;">服务费:</td>
				<td><input type="text" name="FWF" id="FWF" value="${pd.FWF}" maxlength="32" placeholder="这里输入服务费" title="服务费"/></td>
			</tr>
			<tr>
				<td style="text-align: center;" colspan="10">
					<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
					<a class="btn btn-mini btn-danger" onclick="fan();">取消</a>
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
		//取消
		function fan(){
			 window.location.href='${pageContext.request.contextPath}/business/list.do';
		}
		</script>
</body>
</html>