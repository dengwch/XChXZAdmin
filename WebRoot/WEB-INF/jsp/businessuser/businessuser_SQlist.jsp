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
	<base href="<%=basePath%>"><!-- jsp文件头和头部 -->
	<%@ include file="../system/admin/top.jsp"%> 
	<style type="text/css">
	body {
font-family:Arial, Helvetica, sans-serif;
font-size:12px;
margin:0;
}
#main {
height:1800px;
padding-top:90px;
text-align:center;
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
height:300px;
left:50%;
margin:-200px 0 0 -200px;
padding:1px;
position:fixed !important; /* 浮动对话框 */
position:absolute;
top:50%;
width:400px;
z-index:5;
border-radius:5px;
display:none;
}
#dialog p {
margin:0 0 12px;
height:24px;
line-height:24px;
background:#CCCCCC;
}
#dialog p.close {
text-align:right;
padding-right:10px;
}
#dialog p.close a {
color:#fff;
text-decoration:none;
}
	
	
	
	
	
	</style>
	</head>
<body>
		
<div class="container-fluid" id="main-container">


<div id="page-content" class="clearfix">
						
  <div class="row-fluid">

	<div class="row-fluid">
	
			<!-- 检索  -->
			<form action="businessuser/SQlist.do" method="post" name="Form" id="Form">
			<table>
				<tr>
					<td>
						<span class="input-icon">
							<input autocomplete="off" id="BUSINESSUSERNAME" type="text" name="BUSINESSUSERNAME" value="${pd.BUSINESSUSERNAME}" placeholder="商家名称" />
							<i id="nav-search-icon" class="icon-search"></i>
						</span>
					</td>
					<td style="vertical-align:top;"> 
					 	<select class="chzn-select" name="SQFLAG1" id="SQFLAG1" data-placeholder="请选择" style="vertical-align:top;width: 120px;">
							<option value="">全部</option>
							<option value="1" <c:if test="${pd.SQFLAG1=='1'}">selected</c:if>>待处理</option>
							<option value="2" <c:if test="${pd.SQFLAG1=='2'}">selected</c:if>>已处理</option>
					  	</select>
					</td>
					<td style="vertical-align:top;"><button class="btn btn-mini btn-light" onclick="search();"  title="检索"><i id="nav-search-icon" class="icon-search"></i></button></td>
				</tr>
			</table>
			<!-- 检索  -->
		
		
			<table id="table_report" class="table table-striped table-bordered table-hover">
				
				<thead>
					<tr>
						<th class="center">
						<label><input type="checkbox" id="zcheckbox" /><span class="lbl"></span></label>
						</th>
						<th class="center">序号</th>
						<th class="center">商家名称</th>
						<th class="center">公司地址</th>
						<th class="center">主营业务</th>
						<th class="center">联系方式</th>
						<!--
						<th class="center">公司名称</th>
						<th class="center">营业执照</th>
						<th class="center">店铺名称</th>
						<th class="center">店铺地址</th>
						<th class="center">店铺logo</th>
						<th class="center">详情</th>
						<th class="center">入驻时间</th>-->
						<th class="center">状态</th>
						<th class="center">处理结果</th>
						<th class="center">操作</th>
					</tr>
				</thead>
										
				<tbody>
					
				<!-- 开始循环 -->	
				<c:choose>
					<c:when test="${not empty nameList}">
						<c:if test="${QX.cha == 1 }">
						<c:forEach items="${nameList}" var="var" varStatus="vs">
							<tr>
								<td class='center' style="width: 30px;">
									<label><input type='checkbox' name='ids' value="${var.varList.BUSINESSUSER_ID}" /><span class="lbl"></span></label>
								</td>
								<td class='center' style="width: 30px;">${vs.index+1}</td>
										<td class='center' style="vertical-align: middle;">${var.varList.BUSINESSUSERNAME}</td>
										<td class='center' style="vertical-align: middle;">${var.varList.COMPANYADDRESS}</td>
										<td class='center' style="width: 30px;vertical-align: middle;">${var.nameString}</td>
										<td class='center' style="vertical-align: middle;">${var.varList.COMPANYNAME}</br>${var.varList.TEL}</td>
										
										<!--<td class='center' style="vertical-align: middle;">${var.varList.TEL}</td>
										
										<td class='center' style="vertical-align: middle;">${var.varList.COMPANYNAME}</td>
										<td class='center' style="vertical-align: middle;">
										<img src="<%=OSSUrl%>${var.varList.BUSINESSLICENSEURL}" style="width: 200px">
										</td>
										<td class='center' style="vertical-align: middle;">${var.varList.SHOPNAME}</td>
										<!--<td class='center' style="vertical-align: middle;">${var.varList.SHOPADDRESS}</td>
										<td class='center' style="vertical-align: middle;">
										<img src="<%=OSSUrl%>${var.varList.SHOPLOGO}" style="width: 200px">
										</td>
										
										
										<td class='center' style="vertical-align: middle;"><a class="btn btn-small btn-success" onclick="xq('${var.varList.BUSINESSUSER_ID}');">点击查看</a></td>
										<td class='center' style="vertical-align: middle;">${var.varList.CREATIME}</td>
										<c:if test="${var.varList.FLAG==1}">
											<td class='center' style="vertical-align: middle;">正常</td>
										</c:if>
										<c:if test="${var.varList.FLAG==2}">
											<td class='center' style="vertical-align: middle;">禁用</td>
										</c:if>
										<c:if test="${var.varList.FLAG==3}">
											<td class='center' style="vertical-align: middle;">下架</td>
										</c:if>-->
										<c:if test="${var.varList.SQFLAG==1}">
											<td class='center' style="vertical-align: middle;">待处理</td>
										</c:if>
										<c:if test="${var.varList.SQFLAG==2}">
											<td class='center' style="vertical-align: middle;">已处理</td>
										</c:if>
										<c:if test="${var.varList.CLJG==null || var.varList.CLJG==''}">
											<td class='center' style="vertical-align: middle;">没有填写</td>
										</c:if>
										<c:if test="${var.varList.CLJG!=null && var.varList.CLJG!=''}">
											<td class='center' style="vertical-align: middle;">${var.varList.CLJG}</td>
										</c:if>
										
								<td style="width: 260px;vertical-align: middle;" class="center" >
										<c:if test="${QX.edit == 1}">
											<a class="btn btn-small btn-success" onclick="edit('${var.varList.BUSINESSUSER_ID}');">编辑</a>
										
										<c:if test="${var.varList.SQFLAG==1}">
											<a class="btn btn-small btn-danger" onclick="gFlag('${var.varList.BUSINESSUSER_ID}','2');" >处理</a>
										</c:if>
										<c:if test="${var.varList.SQFLAG==2}">
											
										</c:if>
										</c:if>
										
										<c:if test="${QX.del == 1 }">
											<a class="btn btn-small btn-danger" onclick="del('${var.varList.BUSINESSUSER_ID}');" >删除</a>
										</c:if>
								</td>
							</tr>
						
						</c:forEach>
						</c:if>
						<c:if test="${QX.cha == 0 }">
							<tr>
								<td colspan="100" class="center">您无权查看</td>
							</tr>
						</c:if>
					</c:when>
					<c:otherwise>
						<tr class="main_info">
							<td colspan="100" class="center" >没有相关数据</td>
						</tr>
					</c:otherwise>
				</c:choose>
					
				
				</tbody>
			</table>
			
		<div class="page-header position-relative">
		<table style="width:100%;">
			<tr>
				<td style="vertical-align:top;">
					<c:if test="${QX.add == 1 }">
					<a class="btn btn-small btn-success" onclick="add();">新增</a>
					</c:if>
					<c:if test="${QX.del == 1 }">
					<a class="btn btn-small btn-danger" onclick="makeAll('确定要删除选中的数据吗?');" title="批量删除" ><i class='icon-trash'></i></a>
					</c:if>
				</td>
				<td style="vertical-align:top;"><div class="pagination" style="float: right;padding-top: 0px;margin-top: 0px;">${page.pageStr}</div></td>
			</tr>
		</table>
		</div>
		<input type="hidden" value="" id="CLJG" name="CLJG2"/>
		<input type="hidden" value="" id="BUSINESSUSER_ID" name="BUSINESSUSER_ID"/>
		<input type="hidden" value="" id="SQFLAG" name="SQFLAG2"/>
		</form>
		
	</div>

<div id="fullbg"></div>
<div id="dialog">
<p class="close"><a onclick="closeBg();">关闭</a></p>
<div>
		<table id="table_report" class="table table-striped table-bordered table-hover">
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">处理结果:</td>
				<td><input type="text" name="CLJG1" id="CLJG1" value="" maxlength="32" placeholder="这里输入处理结果" title="处理结果"/></td>
			</tr>
			<tr>
				<td style="text-align: center;" colspan="10">
					<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
					<a class="btn btn-mini btn-danger" onclick="closeBg();">取消</a>
				</td>
			</tr>
		</table>
</div>
</div>

 
 
 
	<!-- PAGE CONTENT ENDS HERE -->
  </div><!--/row-->
	
</div><!--/#page-content-->
</div><!--/.fluid-container#main-container-->
		
		<!-- 返回顶部  -->
		<a href="#" id="btn-scroll-up" class="btn btn-small btn-inverse">
			<i class="icon-double-angle-up icon-only"></i>
		</a>
		
		<!-- 引入 -->
		<script type="text/javascript">window.jQuery || document.write("<script src='static/js/jquery-1.9.1.min.js'>\x3C/script>");</script>
		<script src="static/js/bootstrap.min.js"></script>
		<script src="static/js/ace-elements.min.js"></script>
		<script src="static/js/ace.min.js"></script>
		
		<script type="text/javascript" src="static/js/chosen.jquery.min.js"></script><!-- 下拉框 -->
		<script type="text/javascript" src="static/js/bootstrap-datepicker.min.js"></script><!-- 日期框 -->
		<script type="text/javascript" src="static/js/bootbox.min.js"></script><!-- 确认窗口 -->
		<!-- 引入 -->
		<script type="text/javascript" src="static/js/jquery.tips.js"></script><!--提示框-->
		<script type="text/javascript">
		
		$(top.hangge());
		
		//检索
		function search(){
			top.jzts();
			$("#Form").submit();
		}
		function save() {
			if($("#CLJG1").val()=='' || $("#CLJG1").val()==null){
				alert("处理结果为空");
			}else{
				$("#CLJG").val($("#CLJG1").val());
				$("#Form").submit();
				$("#fullbg,#dialog").hide();
			}
			
		} 
		//显示灰色 jQuery 遮罩层
		function showBg() {
			var bh = $("body").height();
			var bw = $("body").width();
			$("#fullbg").css({
			height:bh,
			width:bw,
			display:"block"
			});
			$("#dialog").show();
		}
		//关闭灰色 jQuery 遮罩
		function closeBg() {
			$("#fullbg,#dialog").hide();
		} 
		//新增
		function add(){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="新增";
			 diag.URL = '<%=basePath%>businessuser/goAdd.do';
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
		//详情
		function xq(Id){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="详情";
			 diag.URL = '<%=basePath%>businessuser/goXQing.do?BUSINESSUSER_ID='+Id;
			 diag.Width = 500;
			 diag.Height = 355;
			 diag.CancelEvent = function(){ //关闭事件
				 if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
					 nextPage(${page.currentPage});
				}
				diag.close();
			 };
			 diag.show();
			//window.location.href='<%=basePath%>pictures/excel.do';
		}
		//删除
		function del(Id){
			bootbox.confirm("确定要删除吗?", function(result) {
				if(result) {
					top.jzts();
					var url = "<%=basePath%>businessuser/delete.do?BUSINESSUSER_ID="+Id+"&tm="+new Date().getTime();
					$.get(url,function(data){
						nextPage(${page.currentPage});
					});
				}
			});
		}
		//改变状态
		function gFlag(Id,flag){
			$("#BUSINESSUSER_ID").val(Id);
			$("#SQFLAG").val(flag);
			var bh = $("body").height();
			var bw = $("body").width();
			$("#fullbg").css({
			height:bh,
			width:bw,
			display:"block"
			});
			$("#dialog").show();
			//bootbox.confirm("确定要改变状态吗?", function(result) {
			//	if(result) {
					//top.jzts();
					//var url = "<%=basePath%>businessuser/gFlag.do?BUSINESSUSER_ID="+Id+"&tm="+new Date().getTime()+"&flag="+flag;
					//$.get(url,function(data){
						//nextPage(${page.currentPage});
					//});
			//	}
		//	});
		}
		//修改
		function edit(Id){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="编辑";
			 diag.URL = '<%=basePath%>businessuser/goEdit.do?BUSINESSUSER_ID='+Id;
			 diag.Width = 450;
			 diag.Height = 355;
			 diag.CancelEvent = function(){ //关闭事件
				 if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
					 nextPage(${page.currentPage});
				}
				diag.close();
			 };
			 diag.show();
		}
		</script>
		
		<script type="text/javascript">
		
		$(function() {
			
			//下拉框
			$(".chzn-select").chosen(); 
			$(".chzn-select-deselect").chosen({allow_single_deselect:true}); 
			
			//日期框
			$('.date-picker').datepicker();
			
			//复选框
			$('table th input:checkbox').on('click' , function(){
				var that = this;
				$(this).closest('table').find('tr > td:first-child input:checkbox')
				.each(function(){
					this.checked = that.checked;
					$(this).closest('tr').toggleClass('selected');
				});
					
			});
			
		});
		
		
		//批量操作
		function makeAll(msg){
			bootbox.confirm(msg, function(result) {
				if(result) {
					var str = '';
					for(var i=0;i < document.getElementsByName('ids').length;i++)
					{
						  if(document.getElementsByName('ids')[i].checked){
						  	if(str=='') str += document.getElementsByName('ids')[i].value;
						  	else str += ',' + document.getElementsByName('ids')[i].value;
						  }
					}
					if(str==''){
						bootbox.dialog("您没有选择任何内容!", 
							[
							  {
								"label" : "关闭",
								"class" : "btn-small btn-success",
								"callback": function() {
									//Example.show("great success");
									}
								}
							 ]
						);
						
						$("#zcheckbox").tips({
							side:3,
				            msg:'点这里全选',
				            bg:'#AE81FF',
				            time:8
				        });
						
						return;
					}else{
						if(msg == '确定要删除选中的数据吗?'){
							top.jzts();
							$.ajax({
								type: "POST",
								url: '<%=basePath%>businessuser/deleteAll.do?tm='+new Date().getTime(),
						    	data: {DATA_IDS:str},
								dataType:'json',
								//beforeSend: validateData,
								cache: false,
								success: function(data){
									 $.each(data.list, function(i, list){
											nextPage(${page.currentPage});
									 });
								}
							});
						}
					}
				}
			});
		}
		
		//导出excel
		function toExcel(){
			window.location.href='<%=basePath%>businessuser/excel.do';
		}
		</script>
		
	</body>
</html>

