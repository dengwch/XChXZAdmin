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
		<%@ include file="../../system/admin/top.jsp"%> 
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
	.goodsLogo{
    float:left;
    width:30%;
    height:100%;

}

.goodsLogo img{
    width:1.6rem;

    display: block;
    margin:auto;

}
	</style>
	
	<style type="text/css">
#main { 
height:600px; 
padding-top:90px; 
text-align:left; 
display:none; 
} 
#fullbg { 
background-color:gray; 
left:0; 
opacity:0.5; 
position:absolute; 
top:0; 
z-index:3; 
filter:alpha(opacity=50); 
-moz-opacity:0.5; 
-khtml-opacity:0.5; 
} 
#dialog { 
background-color:#fff; 
border:5px solid rgba(0,0,0, 0.4); 
height:200px; 
left:30%; 
margin:-200px 0 0 -200px; 
padding:1px; 
position:fixed !important; /* 浮动对话框 */ 
position:absolute; 
top:50%; 
width:900px; 
z-index:5; 
border-radius:5px; 
display:none; 
} 
#dialog p { 
margin:0 0 12px; 
height:24px; 
line-height:24px; 
background:#030303; 
} 
#dialog p.close { 
text-align:right; 
padding-right:10px; 
} 
#dialog p.close a { 
color:#fff; 
text-decoration:none; 
}

.aui ul, .aui ol {
    margin: 0;
    padding: 0;
}
.select2-container--default .select2-search--dropdown .select2-search__field {
  border: 1px solid #aaa; 
  width:200px;
}

</style>
	
<script type="text/javascript">
	
	
	//冻结
	function save1(flag){

		
		$("#FLAG").val(flag);
		if($("#AGENTMANGER_ID").val()!=''&&$("#AGENTMANGER_ID").val()!=null&&$("#FLAG").val()!=''&&$("#FLAG").val()!=null){
			 window.location.href=window.location.href='${pageContext.request.contextPath}/agentmanger/goDatil.do?AGENTMANGER_ID='+$("#AGENTMANGER_ID").val()+'&FLAG='+$("#FLAG").val();
		}
		
	}
	
</script>
	</head>
<body>
	<form action="agentmanger/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="AGENTMANGER_ID" id="AGENTMANGER_ID" value="${pd.AGENTMANGER_ID}"/>
		<input type="hidden" name="USERID" id="USERID" value="${pd.USERID}"/>
		<input type="hidden" name="FLAG" id="FLAG" value=""/>
		<%-- <input type="hidden" id="PHONE" name="PHONE" value="${pd.PHONE }" />
		<input type="hidden" id="AGENTAREA" name="AGENTAREA" value="${pd.AGENTAREA }" /> --%>
							
		
		<%-- <input type="hidden" name="CREATETIME" id="CREATETIME" value="${pd.CREATETIME}"/> --%>
		<input type="hidden" name="SALE" id="SALE" value="${SALE }"/>
		<input type="hidden" name="BUSINESS_ID" id="BUSINESS_ID" value=""/>
		<div id="zhongxin">
		<table id="table_report" class="table table-striped table-bordered table-hover">
			<tr>
				<th colspan="2" style="width:100px;text-align:center;padding-top: 13px;background:#eeeeee;">代理商基本信息</th>
			</tr>
			<tr>
				<td style="width:300px;text-align: right;padding-top: 13px;">代理商用户名:</td>
				<td><input readonly="readonly" type="text" name="USERNAME" id="USERNAME" value="${pd.USERNAME}" maxlength="32" placeholder="这里输入代理商用户名" title="代理商用户名" /></td>
			</tr>
			<%-- <tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">代理商登录密码:</td>
				<td><input type="text" name="PWD" id="PWD" value="${pd.PWD}" maxlength="32" placeholder="这里输入代理商登录密码" title="代理商登录密码"/></td>
			</tr> --%>
			<tr>
				<td style="width:300px;text-align: right;padding-top: 13px;">代理商名:</td>
				<td><input readonly="readonly" type="text" name="AGENTNAME" id="AGENTNAME" value="${pd.AGENTNAME}" maxlength="32" placeholder="这里输入代理商名" title="代理商名"/></td>
			</tr>
			<%-- <tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">代理商省份:</td>
				<td><input type="text" name="AGENTPROVINCE" id="AGENTPROVINCE" value="${pd.AGENTPROVINCE}" maxlength="32" placeholder="这里输入代理商省份" title="代理商省份"/></td>
			</tr> --%>
			<tr>
				<td style="width:300px;text-align: right;padding-top: 13px;">代理商区域:</td>
				<td>
				 <input readonly="readonly" type="text" name="AGENTAREA" id="AGENTAREA" value="${pd.AGENTAREA}" maxlength="32" placeholder="这里输入代理商区域" title="代理商区域"/>
				</td>
			</tr>
			
			<tr>
				<td style="width:300px;text-align: right;padding-top: 13px;">代理产品:</td>
				<td><input readonly="readonly" type="text" name="nameString" id="nameString" value="${nameString}" maxlength="32" placeholder="这里输入联系人" title="联系人"/></td>
			</tr>
			
			<tr>
				<td style="width:300px;text-align: right;padding-top: 13px;">联系人:</td>
				<td><input readonly="readonly" type="text" name="CONTACTS" id="CONTACTS" value="${pd.CONTACTS}" maxlength="32" placeholder="这里输入联系人" title="联系人"/></td>
			</tr>
			<tr>
				<td style="width:300px;text-align: right;padding-top: 13px;">联系电话:</td>
				<td><input readonly="readonly" type="text" name="PHONE" id="PHONE" value="${pd.PHONE}" maxlength="32" placeholder="这里输入联系电话" title="联系电话"/></td>
			</tr>
			
			<tr>
				<th colspan="2" style="width:100px;text-align:center;padding-top: 13px;background:#eeeeee;">代理商负责人信息</th>
			</tr>
			
			<tr>
				<td style="width:300px;text-align: right;padding-top: 13px;">代理商负责人姓名:</td>
				<td><input readonly="readonly" type="text" name="AGENTLEADNAME" id="AGENTLEADNAME" value="${pd.AGENTLEADNAME}" maxlength="32" placeholder="这里输入代理商负责人姓名" title="代理商负责人姓名"/></td>
			</tr>
			<tr>
				<td style="width:300px;text-align: right;padding-top: 13px;">代理商负责人电话:</td>
				<td><input readonly="readonly" type="text" name="AGENTLEADPHONE" id="AGENTLEADPHONE" value="${pd.AGENTLEADPHONE}" maxlength="32" placeholder="这里输入代理商负责人电话" title="代理商负责人电话"/></td>
			</tr>
			<tr>
				<td style="width:300px;text-align: right;padding-top: 13px;">代理商负责人身份证:</td>
				<td><input readonly="readonly" type="text" name="CARDNO" id="CARDNO" value="${pd.CARDNO}" maxlength="32" placeholder="这里输入代理商负责人身份证" title="代理商负责人身份证"/></td>
			</tr>
			<tr>
				<td style="width:300px;text-align: right;padding-top: 13px;">代理商负责人身份证正面照片:</td>
				<td><%-- <input type="text" name="CARDZHENGIMG" id="CARDZHENGIMG" value="${pd.CARDZHENGIMG}" maxlength="32" placeholder="这里输入代理商负责人身份证正面照片" title="代理商负责人身份证正面照片"/> --%>
	        		<input name="CARDZHENGIMG" id="CARDZHENGIMG" value="${pd.CARDZHENGIMG}" type="hidden"/>
		        	<!--<div class="goodsLogo">
		        	-->
		        	<c:if test="${pd.CARDZHENGIMG=='' || pd.CARDZHENGIMG==null}">
			        <img  id="shareImg1" src="${pageContext.request.contextPath }/plugins/webuploader/image.png"/>
			        </c:if>
			        <c:if test="${pd.CARDZHENGIMG!='' && pd.CARDZHENGIMG!=null}">
			        <img  id="shareImg1" src="<%=OSSUrl %>${pd.CARDZHENGIMG}"/>
			        </c:if>
			        <!--</div>
				-->
					</td>
			</tr>
			<tr>
				<td style="width:300px;text-align: right;padding-top: 13px;">代理商负责人身份证反面照片:</td>
				<td><%-- <input type="text" name="CARDFANIMG" id="CARDFANIMG" value="${pd.CARDFANIMG}" maxlength="32" placeholder="这里输入代理商负责人身份证反面照片" title="代理商负责人身份证反面照片"/> --%>
	        	<input name="CARDFANIMG" id="CARDFANIMG" value="${pd.CARDFANIMG}" type="hidden"/>
		        	<c:if test="${pd.CARDFANIMG=='' || pd.CARDFANIMG==null}">
			        <img class="touXiang" id="shareImg" src="${pageContext.request.contextPath }/plugins/webuploader/image.png"/>
			        </c:if>
			        <c:if test="${pd.CARDFANIMG!='' && pd.CARDFANIMG!=null}">
			        <img class="touXiang" id="shareImg" src="<%=OSSUrl %>${pd.CARDFANIMG}"/>
			        </c:if>
				</td>
			</tr>
			
			<tr>
				<th colspan="2" style="width:100px;text-align:center;padding-top: 13px;background:#eeeeee;">代理商信息</th>
			</tr>
			
			<tr>
				<td style="width:300px;text-align: right;padding-top: 13px;">代理商公司名:</td>
				<td><input readonly="readonly" type="text" name="AGENTCOMPANY" id="AGENTCOMPANY" value="${pd.AGENTCOMPANY}" maxlength="32" placeholder="这里输入代理商公司名" title="代理商公司名"/></td>
			</tr>
			<tr>
				<td style="width:300px;text-align: right;padding-top: 13px;">组织机构代码:</td>
				<td><input readonly="readonly" type="text" name="COMPANYNO" id="COMPANYNO" value="${pd.COMPANYNO}" maxlength="32" placeholder="这里输入组织机构代码" title="组织机构代码"/></td>
			</tr>
			<tr>
				<td style="width:300px;text-align: right;padding-top: 13px;">代理商营业执照:</td>
				<td>
				<%-- <input type="text" name="BUSINESSLICENCE" id="BUSINESSLICENCE" value="${pd.BUSINESSLICENCE}" maxlength="32" placeholder="这里输入代理商营业执照" title="代理商营业执照"/>
				 --%>
	        		<input name="BUSINESSLICENCE" id="BUSINESSLICENCE" value="${pd.BUSINESSLICENCE}" type="hidden"/>
		        	<c:if test="${pd.BUSINESSLICENCE=='' || pd.BUSINESSLICENCE==null}">
			        <img class="touXiang" id="shareImg2" src="${pageContext.request.contextPath }/plugins/webuploader/image.png"/>
			        </c:if>
			        <c:if test="${pd.BUSINESSLICENCE!='' && pd.BUSINESSLICENCE!=null}">
			        <img class="touXiang" id="shareImg2" src="<%=OSSUrl %>${pd.BUSINESSLICENCE}"/>
			        </c:if>
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
				
						<%-- <c:forEach items="${chaList}" var="var" varStatus="vs1">
							<tr>
								
								<td class="center">${var.BUSINESS_NAME}</td>
								<td class="center">
									<select name="SAL${var.BUSINESS_ID}" class="xla_k">
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
								<td class="center" id="qe${var.BUSINESS_ID}">
									<a class="btn btn-small btn-success" onclick="addbus('${var.BUSINESS_ID}');">添加</a>
								</td>
							</tr>
						
						</c:forEach> --%>
					
					
						<c:forEach items="${jiaoList}" var="var1" varStatus="vs">
							<tr>
								
								<td class="center">${var1.BUSINESS_NAME}</td>
								<td class="center" id="SALE${var1.BUSINESS_ID}">
								${var1.SALE }
								</td >
								<td class="center" id="qe${var1.BUSINESS_ID}">
									<span id="dl${var1.BUSINESS_ID}">
									<c:if test="${var1.FLAG=='3' || var1.FLAG=='0'|| var1.FLAG=='1'}">
										<a class="btn btn-small btn-danger" onclick="dlbus('${var1.BUSINESS_ID}','${pd.AGENTMANGER_ID}','2');">暂停代理</a>
									</c:if>
									<c:if test="${var1.FLAG=='2'}">
										<a class="btn btn-small btn-success" onclick="dlbus('${var1.BUSINESS_ID}','${pd.AGENTMANGER_ID}','3');">取消暂停代理</a>
										
									</c:if>
									</span>
									<span>
									<!--<select style="margin-top:10px;margin-right:10px;margin-left:10px;" name="SAL${var1.BUSINESS_ID}" id="SAL${var1.BUSINESS_ID}" onchange="setValue('${var1.BUSINESS_ID}','${pd.AGENTMANGER_ID}',this.selectedIndex);" >
									    <option value="${var1.SALE1 }">修改折扣</option>
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
									<a class="btn btn-small btn-danger" onclick="daochu('${var1.BUSINESS_ID}','${pd.AGENTMANGER_ID}','${var1.SALE}');">修改折扣</a>
									<a class="btn btn-small btn-success" onclick="yjbus('${var1.BUSINESS_ID}','${pd.AGENTMANGER_ID}');">查看业绩</a>
								</span>
								</td>
							</tr>
						
						</c:forEach>
					<c:if test="${jiaoList==null && chaList==null }">
					<tr class="main_info">
							<td colspan="100" class="center" >没有相关数据</td>
						</tr>
					
					</c:if>
						<!-- <tr class="main_info">
							<td colspan="100" class="center" >没有相关数据</td>
						</tr> -->
					
				
			</table>
				</td>
			</tr>
			<tr>
				<td style="text-align: center;" colspan="10">
				<a class="btn btn-mini btn-primary" onclick="edit('${pd.AGENTMANGER_ID}');">编辑</a>
				<c:if test="${pd.FLAG!='' && pd.FLAG!=null && pd.FLAG=='1'}">
					<a class="btn btn-mini btn-danger" onclick="save1('2');">冻结</a>
				</c:if>
				<c:if test="${pd.FLAG!='' && pd.FLAG!=null && pd.FLAG=='2'}">
					<a class="btn btn-mini btn-danger" onclick="save1('1');">解冻</a>
				</c:if>
					<a class="btn btn-mini btn-primary" onclick="datilYJ('${pd.AGENTMANGER_ID}');">查看业绩统计</a>
					<a class="btn btn-mini btn-danger" onclick="datilCZ('${pd.AGENTMANGER_ID}');">充值记录</a>
					<a class="btn btn-mini btn-danger" href="${pageContext.request.contextPath }/agentmanger/list.do">返回</a>
				</td>
			</tr>
		</table>
		</div>
		
		<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green">提交中...</h4></div>
	</form>
	<div id="main">
<input name="" id="didian" type="hidden"></input>
<input name="" id="con" type="hidden"></input>
<input name="" id="xuhao" type="hidden"></input>
	<div id="fullbg"></div> 
	<div id="dialog"> 
		<p class="close"><a onclick="closeBg();">关闭</a></p> 
		<div>
			<h4 style="text-align: center;margin-top: 40px;">选择折扣</h4>
				<table id="table_report" class="table table-striped table-bordered table-hover">
					<tr>
						<td class="center">折扣</td>
						<td class="center" id="SALE${var1.BUSINESS_ID}">
						<input onblur="tive();" type="text"  id="SAL" value="" maxlength="32" placeholder="这里输入折扣" title="折扣"/>
						</td>
					</tr>
					<tr>
					<td style="text-align: center;" colspan="10">
						<a class="btn btn-mini btn-primary" onclick="setValue('${pd.AGENTMANGER_ID}');">确定</a>
					</td>
					</tr>		
				</table>
		</div> 
	</div> 
</div>
	
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
		//校验折扣
		function tive(obj){  
			var NUMBERP=$("#SAL").val();
			var myreg =/^[1-9]([.]{1}[1-9])?$/;
			if (NUMBERP == '' ) {
				alert("折扣不能为空");
				return;
			}else if(!myreg.test(NUMBERP)) {
				alert("请输入正确的折扣");
				var BUSINESS_ID=$("#BUSINESS_ID").val();
				$("#SAL").val((document.getElementById("SALE"+BUSINESS_ID).innerHTML).replace(/\s/g, ""));
				return;
			}
		} 
		//修改折扣
		function setValue(AGENTMANGER_ID) {
			var BUSINESS_ID=$("#BUSINESS_ID").val();
			var AGENTMANGER_ID=$("#AGENTMANGER_ID").val();
			var Value=$("#SAL").val();
		    if( Value=="" || null==Value){
		    	ddl.tips({
					side:3,
		            msg:'请输入折扣',
		            bg:'#AE81FF',
		            time:2
		        });
		    	ddl.focus();
				return false;
			}else{
				$.ajax({
					type : "post",
					dataType: "json",
					data:{"SALE":Value,"AGENTMANGER_ID":AGENTMANGER_ID,"BUSINESS_ID":BUSINESS_ID},
					url : "${pageContext.servletContext.contextPath}/agentmanger/editXQZK.do",
					success : function(data) {
						if(data.msg=='0'){
							alert("修改失败");
						}else{
							$("#fullbg,#dialog,#main").hide(); 
							document.getElementById("SALE"+BUSINESS_ID).innerHTML = data.SALE;
						}
					}
			  	});
			}
		}
		//修改折扣
		function daochu(BUSINESS_ID,AGENTMANGER_ID,SALE){
			$("#BUSINESS_ID").val(BUSINESS_ID);
			$("#AGENTMANGER_ID").val(AGENTMANGER_ID);
			$("#SAL").val(SALE);
			showBg();
		}
//显示灰色 jQuery 遮罩层 
function showBg() { 
	var bh = $("body").height(); 
	var bw = $("body").width(); 
	$("#main").show(); 
	$("#fullbg").css({ 
		height:bh, 
		width:bw, 
		display:"block" 
	}); 
	$("#dialog").show(); 
} 
//关闭灰色 jQuery 遮罩 
function closeBg() { 
	$("#fullbg,#dialog,#main").hide();  
} 
		
		
		
		//跳转修改
		function edit(Id){
			
			 window.location.href=window.location.href='${pageContext.request.contextPath}/agentmanger/goXQEdit.do?AGENTMANGER_ID='+Id;
			
		}
		//查看业绩
		function yjbus(BUSINESS_ID,AGENTMANGER_ID){
			var type="1";
			 window.location.href=window.location.href='${pageContext.request.contextPath}/transactionrecord/list.do?AGENTMANGER_ID='+AGENTMANGER_ID+'&BUSINESS_ID='+BUSINESS_ID+'&type='+type;
		}
		//查看业绩统计
		function datilYJ(AGENTMANGER_ID){
			var type="1";
			 window.location.href=window.location.href='${pageContext.request.contextPath}/transactionrecord/list.do?type='+type+'&AGENTMANGER_ID='+AGENTMANGER_ID;
		}
		function datilCZ(AGENTMANGER_ID){
			var type="1";
			 window.location.href=window.location.href='${pageContext.request.contextPath}/transactionrecord/listCZ.do?type='+type+'&AGENTMANGER_ID='+AGENTMANGER_ID;
		}
		
		var SALE="";
		function addbus(id){
			SALE= $("#SALE").val();
			if(SALE=="" || null==SALE){
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
		//修改代理
		function dlbus(BUSINESS_ID,AGENTMANGER_ID,flag) {
				$.ajax({
					type : "post",
					dataType: "json",
					data:{"FLAG":flag,"AGENTMANGER_ID":AGENTMANGER_ID,"BUSINESS_ID":BUSINESS_ID},
					url : "${pageContext.servletContext.contextPath}/agentmanger/editXQZT.do",
					success : function(data) {
						if(data.msg=='0'){
							alert("修改失败");
						}else{
							$("#dl"+BUSINESS_ID).empty();
							if(data.FLAG=='3' || data.FLAG=='0' || data.FLAG=='1'){
								$("#dl"+BUSINESS_ID).append("<a class='btn btn-small btn-danger' onclick='dlbus(\""+BUSINESS_ID+"\",\""+AGENTMANGER_ID+"\",2);'>暂停代理</a>");
							}else if(data.FLAG=='2'){
								$("#dl"+BUSINESS_ID).append("<a class='btn btn-small btn-success' onclick='dlbus(\""+BUSINESS_ID+"\",\""+AGENTMANGER_ID+"\",3);'>取消暂停代理</a>");
							}
						}
					}
			  	});
			}
		//新增
		function add(){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="新增";
			 diag.URL = '<%=basePath%>agentmanger/goZK.do';
			 diag.Width = 450;
			 diag.Height = 355;
			 diag.CancelEvent = function(){ //关闭事件
				 if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
					 if('${page.currentPage}' == '0'){
						 top.jzts();
						 setTimeout("self.location=self.location",100);
					 }else{
						 nextPage(${page.currentPage});
					 }
				}
				diag.close();
			 };
			 diag.show();
		}
		</script>
</body>
</html>