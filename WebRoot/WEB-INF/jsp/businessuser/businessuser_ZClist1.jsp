<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String OSSUrl = application.getInitParameter("OSSUrl");
	String OSSUrl1 = application.getInitParameter("OSSUrl1");
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<!-- jsp文件头和头部 -->
<%@ include file="../system/admin/top.jsp"%>
</head>
<body>

<div class="container-fluid" id="main-container">


<div id="page-content" class="clearfix">

<div class="row-fluid">

<div class="row-fluid"><!-- 检索  -->
<form action="businessuser/ZClist1.do" method="post" name="Form" id="Form">
<table>
	
</table>
<!-- 检索  -->


<table id="table_report"
	class="table table-striped table-bordered 

table-hover">

	<thead>
		<tr>
			
			<th class="center">店铺地址</th>
			<th class="center">店铺名称</th>
			<th class="center">店铺logo</th>
			<th class="center">联系方式</th>
			<th class="center">主营业务</th>
			<th class="center">状态</th>
			<th class="center">处理</th>
		</tr>
	</thead>

	<tbody>

		<!-- 开始循环 -->
		<c:choose>
			<c:when test="${not empty nameList}">
					<c:forEach items="${nameList}" var="var" varStatus="vs">
						<tr>
							<td class='center' style="vertical-align: middle;">${var.varList.SHOPADDRESS}</td>
							<td class='center' style="vertical-align: middle;">${var.varList.SHOPNAME}</td>
							<td class='center' style="vertical-align: middle;">
								<c:if test="${fn:substring(var.varList.SHOPLOGO, 0, 3)=='gzh'}">
						        	<img src="<%=OSSUrl1%>${var.varList.SHOPLOGO}" style="width: 200px">
						        </c:if>
						        <c:if test="${fn:substring(var.varList.SHOPLOGO, 0, 3)!='gzh'}">
						        	<img src="<%=OSSUrl%>${var.varList.SHOPLOGO}" style="width: 200px">
						        </c:if>
							</td>
							<td class='center' style="vertical-align: middle;">${var.varList.TEL}</td>
							<td class='center' style="width: 30px; vertical-align: middle;">${var.nameString}</td>
							<c:if test="${var.varList.ZCFLAG==1}">
								<td class='center' style="vertical-align: middle;">待审核</td>
							</c:if>
							<c:if test="${var.varList.ZCFLAG==2}">
								<td class='center' style="vertical-align: middle;">审核通过</td>
							</c:if>
							<c:if test="${var.varList.ZCFLAG==3}">
								<td class='center' style="vertical-align: middle;">审核失败</td>
							</c:if>
							<c:if test="${var.varList.ZCFLAG==4}">
								<td class='center' style="vertical-align: middle;">未填写审核信息</td>
							</c:if>
							
							
							<td style="width: 350px; vertical-align: middle;" class="center">

							<c:if test="${QX.edit != 1 && QX.del != 1 }">
								<span
									class="label label-large label-grey arrowed-in-right arrowed-in"><i
									class="icon-lock" title="无权限"></i></span>
							</c:if> <c:if test="${QX.edit == 1}">
								<c:if test="${var.varList.ZCFLAG==1}">
									<a class="btn btn-small btn-danger"
										onclick="gFlag('${var.varList.BUSINESSUSER_ID}','2');">审核通过</a>
									<a class="btn btn-small btn-danger"
										onclick="gFlag('${var.varList.BUSINESSUSER_ID}','3');">审核失败</a>
								</c:if>
								<c:if test="${var.varList.ZCFLAG==2}">
								已处理
								</c:if>
								<c:if test="${var.varList.ZCFLAG==3}">
								已处理
								</c:if>
								<c:if test="${var.varList.ZCFLAG==4}">
								未填写审核信息不可处理
								</c:if>
							</c:if> 
							</td>
							
							
						</tr>

					</c:forEach>
				<c:if test="${QX.cha == 0 }">
					<tr>
						<td colspan="100" class="center">您无权查看</td>
					</tr>
				</c:if>
			</c:when>
			<c:otherwise>
				<tr class="main_info">
					<td colspan="100" class="center">没有相关数据</td>
				</tr>
			</c:otherwise>
		</c:choose>


	</tbody>
</table>

<div class="page-header position-relative">
<table style="width: 100%;">
	<tr>
		<td style="vertical-align: top;">
		<div class="pagination"
			style="float: right; padding-top: 0px; margin-top: 0px;">${page.pageStr}</div>
		</td>
	</tr>
</table>
</div>
</form>
</div>




<!-- PAGE CONTENT ENDS HERE --></div>
<!--/row--></div>
<!--/#page-content--></div>
<!--/.fluid-container#main-container-->

<!-- 返回顶部  -->
<a href="#" id="btn-scroll-up" class="btn btn-small btn-inverse"> <i
	class="icon-double-angle-up icon-only"></i> </a>

<!-- 引入 -->
<script type="text/javascript">window.jQuery || document.write("<script src='static/js/jquery-1.9.1.min.js'>\x3C/script>");</script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/ace-elements.min.js"></script>
<script src="static/js/ace.min.js"></script>

<script type="text/javascript" src="static/js/chosen.jquery.min.js"></script>
<!-- 下拉框 -->
<script type="text/javascript"
	src="static/js/bootstrap-datepicker.min.js"></script>
<!-- 日期框 -->
<script type="text/javascript" src="static/js/bootbox.min.js"></script>
<!-- 确认窗口 -->
<!-- 引入 -->
<script type="text/javascript" src="static/js/jquery.tips.js"></script>
<!--提示框-->
<script type="text/javascript">
		
		$(top.hangge());
		
		//检索
		function search(){
			top.jzts();
			$("#Form").submit();
		}
		
		//新增
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
			var url = "<%=basePath%>businessuser/ZClist1.do?BUSINESSUSER_ID="+Id+"&ZCFLAG2="+flag;
				window.location.href=url;
		}
		
		</script>

</body>
</html>

