<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
String OSSUrl = application.getInitParameter("OSSUrl");
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
		
<script type="text/javascript">
	
	
	//保存
	function save(){
			
		if($("#BUSINESSPWD").val()==""){
			$("#BUSINESSPWD").tips({
				side:3,
	            msg:'请输入登录密码',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#BUSINESSPWD").focus();
			return false;
		}
		
		if($("#BUSINESSPWD1").val()==""){
			$("#BUSINESSPWD1").tips({
				side:3,
	            msg:'请输入确认登录密码',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#BUSINESSPWD1").focus();
			return false;
		}
		if($("#BUSINESSPWD").val()!="" && $("#BUSINESSPWD1").val()!=""){
			if($("#BUSINESSPWD").val()!=$("#BUSINESSPWD1").val()){
				$("#BUSINESSPWD1").tips({
					side:3,
		            msg:'确认登录密码错误',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#BUSINESSPWD1").focus();
				return false;
			}
		}
		
		
		$("#Form").submit();
		$("#zhongxin").hide();
		$("#zhongxin2").show();
	}
	//检验手机格式
	function checkMobile(str) {
	   var re = /^1\d{10}$/;
	   if (re.test(str)) {
		   return true;
	   } else {
		   return false;
	   }
	}
</script>
	</head>
<body>
	<form action="businessuser/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="BUSINESSUSER_ID" id="BUSINESSUSER_ID" value="${pd.BUSINESSUSER_ID}"/>
		<input type="hidden" name="msg" id="msg" value="${pd.msg}"/>
		<div id="zhongxin">
		<table id="table_report" class="table table-striped table-bordered table-hover">
			
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">登录密码:</td>
				<td><input type="password" name="BUSINESSPWD" id="BUSINESSPWD" value="" maxlength="32" placeholder="这里输入登录密码" title="登录密码"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">确认密码登录密码:</td>
				<td><input type="password" name="BUSINESSPWD1" id="BUSINESSPWD1" value="" maxlength="32" placeholder="这里输入登录密码" title="登录密码"/></td>
			</tr>
			<tr>
				<td style="text-align: center;" colspan="10">
					<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
					<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
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
		<script type="text/javascript" src="static/js/ajaxfileupload.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		$(function() {
			
			//单选框
			$(".chzn-select").chosen(); 
			$(".chzn-select-deselect").chosen({allow_single_deselect:true}); 
			
			//日期框
			$('.date-picker').datepicker();
			
		});
		</script>
</body>
</html>