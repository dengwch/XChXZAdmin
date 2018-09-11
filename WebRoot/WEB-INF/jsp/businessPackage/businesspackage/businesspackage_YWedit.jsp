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
		
<script type="text/javascript">
	
	
	//保存
	function save(){
		if($("#PACKAGENAME").val()==""){
			$("#PACKAGENAME").tips({
				side:3,
	            msg:'请输入套餐名',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#PACKAGENAME").focus();
			return false;
		}
		if($("#PACKAGE_DESCRIBE").val()==""){
			$("#PACKAGE_DESCRIBE").tips({
				side:3,
	            msg:'请输入套餐描述',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#PACKAGE_DESCRIBE").focus();
			return false;
		}else{
			$.ajax({
				type : "post",
				dataType: "json",
				data:{"PACKAGENAME":$("#PACKAGENAME").val(),
					  "BUSINESS_ID":$("#BUSINESS_ID").val(),
					  "BUSINESSPACKAGE_ID":$("#BUSINESSPACKAGE_ID").val()
				},
				url : "${pageContext.servletContext.contextPath}/businesspackage/checkName.do",
				success : function(data) {
					if(data.msg=='0'){
						alert("修改失败");
					}else if(data.msg=='-1'){
						alert("套餐名已存在");
						
					}else{
						if($("#PACKAGE_DESCRIBE").val()==""){
							$("#PACKAGE_DESCRIBE").tips({
								side:3,
					            msg:'请输入套餐描述',
					            bg:'#AE81FF',
					            time:2
					        });
							$("#PACKAGE_DESCRIBE").focus();
							return false;
						}
						if($("#COUNT").val()==""){
							$("#COUNT").tips({
								side:3,
					            msg:'请输入数量',
					            bg:'#AE81FF',
					            time:2
					        });
							$("#COUNT").focus();
							return false;
						}else{
							var re = /^[1-9]*[1-9][0-9]*$/;
						    if (!re.test($("#COUNT").val())){
						    	$("#COUNT").tips({
									side:3,
						            msg:'请输入正确数量(整数)',
						            bg:'#AE81FF',
						            time:2
						        });
								$("#COUNT").focus();
								return false;
						    }
						}
						if($("#TOTALPRICE").val()==""){
							$("#TOTALPRICE").tips({
								side:3,
					            msg:'请输入套餐定价',
					            bg:'#AE81FF',
					            time:2
					        });
							$("#TOTALPRICE").focus();
							return false;
						}else{
							var re = /^[0-9]+\.?[0-9]*$/;
							 if (!re.test($("#TOTALPRICE").val())) 
							    {
							    	$("#TOTALPRICE").tips({
										side:3,
							            msg:'请输入正确定价(正数或者小数)',
							            bg:'#AE81FF',
							            time:2
							        });
									$("#TOTALPRICE").focus();
									return false;
							    } 
						}
						if($("#DAYS").val()==""){
							$("#DAYS").tips({
								side:3,
					            msg:'请输入有效期天数',
					            bg:'#AE81FF',
					            time:2
					        });
							$("#DAYS").focus();
							return false;
						}else{
							var re = /^[1-9]*[1-9][0-9]*$/;
						    if (!re.test($("#DAYS").val())){
						    	$("#DAYS").tips({
									side:3,
						            msg:'请输入正确有效期天数(整数)',
						            bg:'#AE81FF',
						            time:2
						        });
								$("#DAYS").focus();
								return false;
						    }
						}
						$("#Form").submit();
						$("#zhongxin").hide();
						$("#zhongxin2").show();
					}
				}
		  	});
		}
	}
	
</script>
<style type="text/css">
	td.center,th.center{text-align:center;vertical-align: middle;}
	
	</style>
	</head>
<body>
	<form action="businesspackage/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="BUSINESSPACKAGE_ID" id="BUSINESSPACKAGE_ID" value="${pd.BUSINESSPACKAGE_ID}"/>
		<input type="hidden" name="BUSINESS_ID" id="BUSINESS_ID" value="${pd.BUSINESS_ID}"/>
		<input type="hidden" name="BUSINESS_NAME" id="BUSINESS_NAME" value="${pd.BUSINESS_NAME}"/>
		<input type="hidden" name="BUSINESS_DESCRIBE" id="BUSINESS_DESCRIBE" value="${pd.BUSINESS_DESCRIBE}"/>
		<input type="hidden" name="YW" id="YW" value="YW"/>
		<div id="zhongxin">
		<table id="table_report" class="table table-striped table-bordered table-hover">
			<tr>
				<td style="width:520px;text-align: right;padding-top: 13px;">套餐名:</td>
				<td><input type="text" name="PACKAGENAME" id="PACKAGENAME" value="${pd.PACKAGENAME}" maxlength="32" placeholder="这里输入套餐名" title="套餐名"/></td>
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
				<td><textarea name="PACKAGE_DESCRIBE" id="PACKAGE_DESCRIBE" maxlength="255" placeholder="这里输入套餐描述" title="套餐描述">${pd.PACKAGE_DESCRIBE}</textarea></td>
			</tr>
			<tr>
				<td style="width:520px;text-align: right;padding-top: 13px;">数量:</td>
				<td><input type="text" name="COUNT" id="COUNT" value="${pd.COUNT}" maxlength="32" placeholder="这里输入数量" title="数量"/></td>
			</tr>
			<tr>
				<td style="width:520px;text-align: right;padding-top: 13px;">套餐定价:</td>
				<td><input type="text" name="TOTALPRICE" id="TOTALPRICE" value="${pd.TOTALPRICE}" maxlength="32" placeholder="这里输入套餐定价" title="套餐定价"/></td>
			</tr>
			<tr>
				<td style="width:520px;text-align: right;padding-top: 13px;">有效期天数:</td>
				<td><input type="text" name="DAYS" id="DAYS" value="${pd.DAYS}" maxlength="32" placeholder="这里输入有效期天数" title="有效期天数"/></td>
			</tr>
			<tr>
				<td style="text-align: center;" colspan="10">
					<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
					<a class="btn btn-mini btn-danger" onclick="buspdatil('${pd.BUSINESS_ID}','${pd.BUSINESSPACKAGE_ID}','${pd.BUSINESS_NAME}','${pd.BUSINESS_DESCRIBE}');">取消</a>
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
		function buspdatil(BUSINESS_ID,BUSINESSPACKAGE_ID,BUSINESS_NAME,BUSINESS_DESCRIBE){
			
			 window.location.href=window.location.href='${pageContext.request.contextPath}/business/goAdd.do?BUSINESS_ID='+BUSINESS_ID+'&BUSINESSPACKAGE_ID='+BUSINESSPACKAGE_ID+'&BUSINESS_NAME='+BUSINESS_NAME+'&BUSINESS_DESCRIBE='+BUSINESS_DESCRIBE;
		}
		</script>
</body>
</html>