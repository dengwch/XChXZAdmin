<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
String businessURL = "http://localhost:325/zlzq-business/";
String OSSUrl = application.getInitParameter("OSSUrl");
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
		if( $("#ZK option:selected").val()==""){
			$("#ZK").tips({
				side:3,
	            msg:'请输入代理商名',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#ZK").focus();
			return false;
		}else{
			var SALE=$("#ZK option:selected").val();
			var AGENTMANGER_ID=$("#AGENTMANGER_ID").val();
			
			var BUSINESS_ID=$("#BUSINESS_ID").val();
			$.ajax({
				type : "post",
				dataType: "json",
				data:{"SALE":SALE,"AGENTMANGER_ID":AGENTMANGER_ID,"BUSINESS_ID":BUSINESS_ID},
				url : "${pageContext.servletContext.contextPath}/agentmanger/editXQZK.do",
				success : function(data) {
					
				}
		  	});
		}
			
		
		
		
		
		
		
		/* $("#Form").submit(); */
		$("#zhongxin").hide();
		$("#zhongxin2").show();
	}
	
</script>
	</head>
<body>
	<form action="agentmanger/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="AGENTMANGER_ID" id="AGENTMANGER_ID" value="${pd.AGENTMANGER_ID}"/>
		<input type="hidden" name="SALE" id="SALE" value=""/>
		<input type="hidden" name="BUSINESS_ID" id="BUSINESS_ID" value="${pd.BUSINESS_ID}"/>
		<div id="zhongxin">
		<table id="table_report" class="table table-striped table-bordered table-hover">
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">折扣:</td>
					<td class="center">
						<select name="SAL${pd.BUSINESS_ID}" class="xla_k" id="ZK">
						    <option value="选择">选择</option>
							<option value="1折">1折</option>
							<option value="2折">2折</option>
							<option value="3折">3折</option>
							<option value="4折">4折</option>
							<option value="5折">5折</option>
							<option value="6折">6折</option>
							<option value="7折">7折</option>
							<option value="8折">8折</option>
							<option value="9折">9折</option>
					    </select>
					</td >
			</tr>
						
						
			<tr>
				<td style="text-align: center;" colspan="10">
					<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
					<!-- <a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a> -->
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
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/ajaxfileupload.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		$(function() {
			
			//单选框
			$(".chzn-select").chosen(); 
			$(".chzn-select-deselect").chosen({allow_single_deselect:true}); 
			
			//日期框
			$('.date-picker').datepicker();
			
		});
		var SALE="";
		function addbus(id){
			if(SALE==""){
				SALE = SALE + id;
	    	}else{
	    		SALE = SALE +";"+ id;
	    	}
			$("#SALE").val(SALE);
			$("#qe"+id).empty();
			$("#qe"+id).append("<a style='cursor:pointer;' title='添加' onclick='delbus(\""+id+"\");'>取消添加</a>");
		}
		function delbus(id){
			var r="";
			SALE= $("#SALE").val();
			var countrys = SALE.split(";");
	    	for(var i=0;i<countrys.length;i++){
	    		if(countrys[i]!=id){
	    			if(r==""){
	    	    		r = r + countrys[i];
	    	    	}else{
	    	    		r = r +";"+ countrys[i];
	    	    	}
	    		}
	    	};
	    	SALE=r;
			$("#SALE").val(r);
			$("#qe"+id).empty();
			$("#qe"+id).append("<a style='cursor:pointer;' title='添加' onclick='addbus(\""+id+"\");'>添加</a>");

		}
		function uploadphoto2(fileId){
			//alert("似懂非懂");
		       if(checkFile(fileId)){ 
		        	$.ajaxFileUpload({
		            	url:"${pageContext.servletContext.contextPath}/agentmanger/uploadPhoto1.do",
		            	secureuri:false,                       //是否启用安全提交,默认为false
		            	dataType:"json", 
		            	fileElementId:fileId,           	   //文件选择框的id属性
		            	success:function(data){   
		            	var msg=data.msg;
		            	//alert(data.msg);
		            		$("#BUSINESSLICENCE").val(data.msg);
		            		if(data.flag == 0){ 
		                		alert("上传失败");
		                	}else{
		                		$("#shareImg2").attr("src", "<%=OSSUrl %>"+msg+"?r="+Date.parse(new Date()));
		                	}
		            	},
		        	});
		       }
		    }
		function uploadphoto1(fileId){
			//alert("似懂非懂");
		       if(checkFile(fileId)){ 
		        	$.ajaxFileUpload({
		            	url:"${pageContext.servletContext.contextPath}/agentmanger/uploadPhoto1.do",
		            	secureuri:false,                       //是否启用安全提交,默认为false
		            	dataType:"json", 
		            	fileElementId:fileId,           	   //文件选择框的id属性
		            	success:function(data){   
		            	var msg=data.msg;
		            	//alert(data.msg);
		            		$("#CARDZHENGIMG").val(data.msg);
		            		if(data.flag == 0){ 
		                		alert("上传失败");
		                	}else{
		                		$("#shareImg1").attr("src", "<%=OSSUrl %>"+msg+"?r="+Date.parse(new Date()));
		                	}
		            	},
		        	});
		       }
		    }
		 function uploadphoto(fileId){
		       if(checkFile(fileId)){ 
		        	$.ajaxFileUpload({
		            	url:"${pageContext.servletContext.contextPath}/agentmanger/uploadPhoto1.do",
		            	secureuri:false,                       //是否启用安全提交,默认为false
		            	dataType:"json", 
		            	fileElementId:fileId,           	   //文件选择框的id属性
		            	success:function(data){   
		            	var msg=data.msg;
		            	//alert(msg);
		            		$("#CARDFANIMG").val(data.msg);
		            		if(data.flag == 0){ 
		                		alert("上传失败");
		                	}else{
		                		$("#shareImg").attr("src", "<%=OSSUrl %>"+msg+"?r="+Date.parse(new Date()));
		                	}
		            	},
		        	});
		       }
		    }
		    function checkFile(fileName) {
		       	var fileImg = document.getElementById(fileName);
		       	if (fileImg.files[0] == undefined) {
		       		alert("请选择文件！");
		       		return false;
		       	} else {
		       		return true;
		       	}
		       }
		</script>
</body>
</html>