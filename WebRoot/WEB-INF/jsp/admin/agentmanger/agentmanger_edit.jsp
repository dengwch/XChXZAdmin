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
		<style type="text/css">
	td.center,th.center{text-align:center;vertical-align: middle;}
	
	</style>
<script type="text/javascript">
var msg3='${msg3}';
	if(msg3=='1'){
		alert("新增代理商成功,请转到代理商列表查看或刷新代理商列表");
		
	}
	
	//保存
	function save(){
		
			if($("#USERNAME").val()==""){
			$("#USERNAME").tips({
				side:3,
	            msg:'请输入代理商用户名',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#USERNAME").focus();
			return false;
		}
		 if($("#PWD").val()==""){
			$("#PWD").tips({
				side:3,
	            msg:'请输入代理商登录密码',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#PWD").focus();
			return false;
		}else{
			var regex=/^[0-9A-Za-z_@]{6,20}$/;
			if (!regex.test($("#PWD").val())) {
				$("#PWD").tips({
					side:3,
		            msg:'密码只能为6-20位数字字母下划线',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#PWD").focus();
				return false;
			}
		}
		if($("#AGENTNAME").val()==""){
			$("#AGENTNAME").tips({
				side:3,
	            msg:'请输入代理商名',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#AGENTNAME").focus();
			return false;
		}
		/* if($("#AGENTPROVINCE").val()==""){
			$("#AGENTPROVINCE").tips({
				side:3,
	            msg:'请输入代理商省份',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#AGENTPROVINCE").focus();
			return false;
		} */
		if($("#AGENTAREA").val()==""){
			$("#AGENTAREA").tips({
				side:3,
	            msg:'请输入代理商区域',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#AGENTAREA").focus();
			return false;
		}
		if($("#CONTACTS").val()==""){
			$("#CONTACTS").tips({
				side:3,
	            msg:'请输入联系人',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#CONTACTS").focus();
			return false;
		}
		if($("#PHONE").val()==""){
			$("#PHONE").tips({
				side:3,
	            msg:'请输入联系电话',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#PHONE").focus();
			return false;
		}else{
			//var myreg = /^(1+\d{10})$/;
			var qw=/^\d{8,}$/; 
			 if(!qw.test($("#PHONE").val())) {
				 $("#PHONE").tips({
						side:3,
			            msg:'请输入正确联系电话',
			            bg:'#AE81FF',
			            time:2
		         });
					$("#PHONE").focus();
					return false;
		     }
		}
		if($("#AGENTLEADNAME").val()==""){
			$("#AGENTLEADNAME").tips({
				side:3,
	            msg:'请输入代理商负责人姓名',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#AGENTLEADNAME").focus();
			return false;
		}
		if($("#AGENTLEADPHONE").val()==""){
			$("#AGENTLEADPHONE").tips({
				side:3,
	            msg:'请输入代理商负责人电话',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#AGENTLEADPHONE").focus();
			return false;
		}else{
			//var myreg = /^(1+\d{10})$/;
			var qw=/^\d{8,}$/; 
			 if(!qw.test($("#AGENTLEADPHONE").val())) {
				 $("#AGENTLEADPHONE").tips({
						side:3,
			            msg:'请输入正确代理商负责人电话',
			            bg:'#AE81FF',
			            time:2
		         });
					$("#AGENTLEADPHONE").focus();
					return false;
		     }
		}
		if($("#CARDNO").val()==""){
			$("#CARDNO").tips({
				side:3,
	            msg:'请输入代理商负责人身份证',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#CARDNO").focus();
			return false;
		}else{
			var myreg =/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
			 if(!myreg.test($("#CARDNO").val())) {
				 $("#CARDNO").tips({
						side:3,
			            msg:'请输入正确代理商负责人身份证',
			            bg:'#AE81FF',
			            time:2
		         });
					$("#CARDNO").focus();
					return false;
		     }
		}
		if($("#CARDZHENGIMG").val()==""){
			$("#CARDZHENGIMG").tips({
				side:3,
	            msg:'请上传代理商负责人身份证正面照片',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#CARDZHENGIMG").focus();
			return false;
		}
		if($("#CARDFANIMG").val()==""){
			$("#CARDFANIMG").tips({
				side:3,
	            msg:'请上传代理商负责人身份证反面照片',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#CARDFANIMG").focus();
			return false;
		}
		if($("#AGENTCOMPANY").val()==""){
			$("#AGENTCOMPANY").tips({
				side:3,
	            msg:'请输入代理商公司名',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#AGENTCOMPANY").focus();
			return false;
		}
		if($("#COMPANYNO").val()==""){
			$("#COMPANYNO").tips({
				side:3,
	            msg:'请输入组织机构代码',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#COMPANYNO").focus();
			return false;
		}else{
			 var reg = /[\u4E00-\u9FA5\uF900-\uFA2D]/; 
			 if(reg.test($("#COMPANYNO").val())) {
				 $("#COMPANYNO").tips({
						side:3,
			            msg:'请输入正确组织机构代码',
			            bg:'#AE81FF',
			            time:2
		         });
					$("#COMPANYNO").focus();
					return false;
		     }
		}
		if($("#BUSINESSLICENCE").val()==""){
			$("#BUSINESSLICENCE").tips({
				side:3,
	            msg:'请上传代理商营业执照',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#BUSINESSLICENCE").focus();
			return false;
		}
		/* if($("#CREATETIME").val()==""){
			$("#CREATETIME").tips({
				side:3,
	            msg:'请输入创建时间',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#CREATETIME").focus();
			return false;
		} */
		$("#Form").submit();
		$("#zhongxin").hide();
		$("#zhongxin2").show();
	}
	
</script>
	</head>
<body>
	<form action="agentmanger/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="AGENTMANGER_ID" id="AGENTMANGER_ID" value="${pd.AGENTMANGER_ID}"/>
		<input type="hidden" name="SALE" id="SALE" value=""/>
		<input type="hidden" name="BUSINESS_ID" id="BUSINESS_ID" value=""/>
		<div id="zhongxin">
		<table id="table_report" class="table table-striped table-bordered table-hover">
			<tr>
				<th colspan="2" style="width:100px;text-align:center;padding-top: 13px;background:#eeeeee;">代理商基本信息</th>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">代理商用户名:</td>
				<td><input type="text" name="USERNAME" id="USERNAME" value="${pd.USERNAME}" maxlength="32" placeholder="这里输入代理商用户名" title="代理商用户名"/></td>
			</tr>
			 <tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">代理商登录密码:</td>
				<td><input type="text" name="PWD" id="PWD" value="${pd.PWD}" maxlength="32" placeholder="这里输入代理商登录密码" title="代理商登录密码"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">代理商名:</td>
				<td><input type="text" name="AGENTNAME" id="AGENTNAME" value="${pd.AGENTNAME}" maxlength="32" placeholder="这里输入代理商名" title="代理商名"/></td>
			</tr>
			<%-- <tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">代理商省份:</td>
				<td><input type="text" name="AGENTPROVINCE" id="AGENTPROVINCE" value="${pd.AGENTPROVINCE}" maxlength="32" placeholder="这里输入代理商省份" title="代理商省份"/></td>
			</tr> --%>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">代理商区域:</td>
				<td>
				<%-- <input type="text" name="AGENTAREA" id="AGENTAREA" value="${pd.AGENTAREA}" maxlength="32" placeholder="这里输入代理商区域" title="代理商区域"/>
				 --%>
				 	<select name="AGENTAREA" id="AGENTAREA" >
				<c:if test="${pd.AGENTAREA!=null && pd.AGENTAREA!='' && pd.AGENTAREA!=undefined}">
					<option value="${pd.AGENTAREA }">${pd.AGENTAREA }</option>
					<c:forEach items="${proList }" var="Lb" varStatus="status">
					<c:if test="${pd.AGENTAREA!=Lb.PRO_NAME }">
						<option value="${Lb.PRO_NAME }">${Lb.PRO_NAME }</option>
					</c:if>
					</c:forEach>
				</c:if>
				<c:if test="${pd.AGENTAREA==null || pd.AGENTAREA=='' || pd.AGENTAREA==undefined}">
					<option value="">请选择</option>
					<c:forEach items="${proList }" var="Lb" varStatus="status">
						<option value="${Lb.PRO_NAME }">${Lb.PRO_NAME }</option>
					</c:forEach>
				</c:if>
				</select>
				 
				 
				</td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">联系人:</td>
				<td><input type="text" name="CONTACTS" id="CONTACTS" value="${pd.CONTACTS}" maxlength="32" placeholder="这里输入联系人" title="联系人"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">联系电话:</td>
				<td><input type="text" name="PHONE" id="PHONE" value="${pd.PHONE}" maxlength="32" placeholder="这里输入联系电话" title="联系电话"/></td>
			</tr>
			
			<tr>
				<th colspan="2" style="width:100px;text-align:center;padding-top: 13px;background:#eeeeee;">代理商负责人信息</th>
			</tr>
			
			<tr>
				<td style="width:150px;text-align: right;padding-top: 13px;">代理商负责人姓名:</td>
				<td><input type="text" name="AGENTLEADNAME" id="AGENTLEADNAME" value="${pd.AGENTLEADNAME}" maxlength="32" placeholder="这里输入代理商负责人姓名" title="代理商负责人姓名"/></td>
			</tr>
			<tr>
				<td style="width:150px;text-align: right;padding-top: 13px;">代理商负责人电话:</td>
				<td><input type="text" name="AGENTLEADPHONE" id="AGENTLEADPHONE" value="${pd.AGENTLEADPHONE}" maxlength="32" placeholder="这里输入代理商负责人电话" title="代理商负责人电话"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">代理商负责人身份证:</td>
				<td><input type="text" name="CARDNO" id="CARDNO" value="${pd.CARDNO}" maxlength="32" placeholder="这里输入代理商负责人身份证" title="代理商负责人身份证"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">代理商负责人身份证正面照片:</td>
				<td><%-- <input type="text" name="CARDZHENGIMG" id="CARDZHENGIMG" value="${pd.CARDZHENGIMG}" maxlength="32" placeholder="这里输入代理商负责人身份证正面照片" title="代理商负责人身份证正面照片"/> --%>
					<label style="display:block;width:100%;height:100%;">
	        		<input name="CARDZHENGIMG" id="CARDZHENGIMG" type="hidden"/>
		        	<input id="uploadImg1" name="myfile" type="file" onchange="uploadphoto1('uploadImg1')" style="display:none;"/> 
		        	<c:if test="${pd.CARDZHENGIMG=='' || pd.CARDZHENGIMG==null}">
			        <img class="touXiang" id="shareImg1" src="${pageContext.request.contextPath }/plugins/webuploader/image.png"/>
			        </c:if>
			        <c:if test="${pd.CARDZHENGIMG!='' && pd.CARDZHENGIMG!=null}">
			        <img class="touXiang" id="shareImg1" src="<%=OSSUrl %>${pd.CARDZHENGIMG}"/>
			        </c:if>
		        	
		        	 <b class="gotoLogo"></b>
	             </label>
				</td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">代理商负责人身份证反面照片:</td>
				<td><%-- <input type="text" name="CARDFANIMG" id="CARDFANIMG" value="${pd.CARDFANIMG}" maxlength="32" placeholder="这里输入代理商负责人身份证反面照片" title="代理商负责人身份证反面照片"/> --%>
				<label style="display:block;width:100%;height:100%;">
	        	<input name="CARDFANIMG" id="CARDFANIMG" type="hidden"/>
		        	<input id="uploadImg" name="myfile" type="file" onchange="uploadphoto('uploadImg')" style="display:none;"/> 
		        	<c:if test="${pd.CARDFANIMG=='' || pd.CARDFANIMG==null}">
			        <img class="touXiang" id="shareImg" src="${pageContext.request.contextPath }/plugins/webuploader/image.png"/>
			        </c:if>
			        <c:if test="${pd.CARDFANIMG!='' && pd.CARDFANIMG!=null}">
			        <img class="touXiang" id="shareImg" src="<%=OSSUrl %>${pd.CARDFANIMG}"/>
			        </c:if>
		        	
		        	 <b class="gotoLogo"></b>
	             </label>
				
				</td>
			</tr>
			
			<tr>
				<th colspan="2" style="width:100px;text-align:center;padding-top: 13px;background:#eeeeee;">代理商信息</th>
			</tr>
			
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">代理商公司名:</td>
				<td><input type="text" name="AGENTCOMPANY" id="AGENTCOMPANY" value="${pd.AGENTCOMPANY}" maxlength="32" placeholder="这里输入代理商公司名" title="代理商公司名"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">组织机构代码:</td>
				<td><input type="text" name="COMPANYNO" id="COMPANYNO" value="${pd.COMPANYNO}" maxlength="32" placeholder="这里输入组织机构代码" title="组织机构代码"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">代理商营业执照:</td>
				<td>
				<%-- <input type="text" name="BUSINESSLICENCE" id="BUSINESSLICENCE" value="${pd.BUSINESSLICENCE}" maxlength="32" placeholder="这里输入代理商营业执照" title="代理商营业执照"/>
				 --%>
				 <label style="display:block;width:100%;height:100%;">
	        		<input name="BUSINESSLICENCE" id="BUSINESSLICENCE" type="hidden"/>
		        	<input id="uploadImg2" name="myfile" type="file" onchange="uploadphoto2('uploadImg2')" style="display:none;"/> 
		        	<c:if test="${pd.BUSINESSLICENCE=='' || pd.BUSINESSLICENCE==null}">
			        <img class="touXiang" id="shareImg2" src="${pageContext.request.contextPath }/plugins/webuploader/image.png"/>
			        </c:if>
			        <c:if test="${pd.BUSINESSLICENCE!='' && pd.BUSINESSLICENCE!=null}">
			        <img class="touXiang" id="shareImg2" src="<%=OSSUrl %>${pd.BUSINESSLICENCE}"/>
			        </c:if>
		        	
		        	 <b class="gotoLogo"></b>
	             </label>
				</td>
			</tr>
			<tr>
				<th colspan="2" style="width:100px;text-align:center;padding-top: 13px;background:#eeeeee;">代理产品信息</th>
			</tr>
			<tr>
				<td colspan="2" style="width:50%;text-align:left;padding-top: 13px;">
					<table id="table_report" class="table table-striped table-bordered table-hover">
				
				<thead>
					<tr>
						<th class="center">代理产品</th>
						<th class="center">折扣</th>
						<th class="center">操作</th>
					</tr>
				</thead>
										
					
				<!-- 开始循环 -->	
				<c:choose>
					<c:when test="${not empty busList}">
						<c:forEach items="${busList}" var="var1" varStatus="vs">
							<tr>
								
								<td class="center">${var1.BUSINESS_NAME}</td>
								<td class="center">
									<!--<select name="SAL${var1.BUSINESS_ID}" class="xla_k">
									    <option value="选择">选择</option>
										<option value="0.1">1折</option>
										<option value="0.2">2折</option>
										<option value="0.3">3折</option>
										<option value="0.4">4折</option>
										<option value="0.5">5折</option>
										<option value="0.6">6折</option>
										<option value="0.7">7折</option>
										<option value="0.8">8折</option>
										<option value="0.9">9折</option>
								    </select>
								-->
								<input onblur="tive('${var1.BUSINESS_ID}');" type="text" name="SAL${var1.BUSINESS_ID}" id="SAL${var1.BUSINESS_ID}" value="" maxlength="32" placeholder="这里输入折扣" title="折扣"/>
								</td >
								<td class="center" id="qe${var1.BUSINESS_ID}">
									<a style="cursor:pointer;" title="添加" onclick="addbus('${var1.BUSINESS_ID}');">添加</a>
								</td>
							</tr>
						
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr class="main_info">
							<td colspan="100" class="center" >没有相关数据</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</table>
				</td>
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
		
		function tive(obj){  
			var NUMBERP=$("#SAL"+obj).val();
			var myreg =/^[1-9]([.]{1}[1-9])?$/;
			if (NUMBERP == '' ) {
				alert("折扣不能为空");
				return;
			}else if(!myreg.test(NUMBERP)) {
				alert("请输入正确的折扣");
				NUMBERP=$("#SAL"+obj).val("");
				return;
			}
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