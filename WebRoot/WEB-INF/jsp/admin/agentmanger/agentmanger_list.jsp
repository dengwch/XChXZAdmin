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
	<base href="<%=basePath%>"><!-- jsp文件头和头部 -->
	<%@ include file="../../system/admin/top.jsp"%> 
	<style type="text/css">
	td.center,th.center{text-align:center;vertical-align: middle;}
	
	</style>
	</head>
<body>
		
<div class="container-fluid" id="main-container">


<div id="page-content" class="clearfix">
						
  <div class="row-fluid">

	<div class="row-fluid">
	
			<!-- 检索  -->
			<form action="agentmanger/list.do" method="post" name="Form" id="Form">
			<input type="hidden" name="AGENTMANGER_ID" id="AGENTMANGER_ID" value=""/>
			<input type="hidden" name="FLAG" id="FLAG" value=""/>
			<table>
				<tr>
					<td>
						<span class="input-icon">
							<input autocomplete="off" id="nav-search-input" type="text" id="PHONE" name="PHONE" value="${pd.PHONE }" placeholder="请输入手机号" />
							<i id="nav-search-icon" class="icon-search"></i>
						</span>
					</td>
					<td>
						<span class="input-icon">
							<input autocomplete="off" id="nav-search-input" type="text" id="AGENTAREA" name="AGENTAREA" value="${pd.AGENTAREA }" placeholder="请输入区域" />
							<i id="nav-search-icon" class="icon-search"></i>
						</span>
					</td>
					<%-- <td><input class="span10 date-picker" name="lastLoginStart" id="lastLoginStart" value="${pd.lastLoginStart}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:88px;" placeholder="开始日期"/></td>
					<td><input class="span10 date-picker" name="lastLoginEnd" id="lastLoginEnd" value="${pd.lastLoginEnd}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:88px;" placeholder="结束日期"/></td> --%>
					<!-- <td style="vertical-align:top;"> 
					 	<select class="chzn-select" name="field2" id="field2" data-placeholder="请选择" style="vertical-align:top;width: 120px;">
							<option value=""></option>
							<option value="">全部</option>
							<option value="">1</option>
							<option value="">2</option>
					  	</select>
					</td> -->
					<td style="vertical-align:top;"><button class="btn btn-mini btn-light" onclick="search();"  title="检索"><i id="nav-search-icon" class="icon-search"></i></button></td>
					<c:if test="${QX.cha == 1 }">
					<!--<td style="vertical-align:top;"><a class="btn btn-mini btn-light" onclick="toExcel();" title="导出到EXCEL"><i id="nav-search-icon" class="icon-download-alt"></i></a></td>
					-->
					</c:if>
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
						<th class="center">用户名</th>
						<!-- <th class="center">代理商用户名</th>
						<th class="center">代理商登录密码</th> -->
						<th class="center">代理商名</th>
						<!-- <th class="center">代理商省份</th> -->
						<th class="center">代理商区域</th>
						<!-- <th class="center">联系人</th> -->
						<th class="center">联系电话</th>
						<th class="center">代理产品</th>
						<th class="center">余额</th>
						<th class="center">状态</th>
						
						
						<!-- <th class="center">代理商负责人姓名</th>
						<th class="center">代理商负责人电话</th>
						<th class="center">代理商负责人身份证</th>
						<th class="center">代理商负责人身份证正面照片</th>
						<th class="center">代理商负责人身份证反面照片</th>
						<th class="center">代理商公司名</th>
						<th class="center">组织机构代码</th>
						<th class="center">代理商营业执照</th>
						<th class="center">创建时间</th> -->
						<th class="center">操作</th>
					</tr>
				</thead>
										
				<tbody>
					
				<!-- 开始循环 -->	
				<c:choose>
					<c:when test="${not empty varList}">
						<c:if test="${QX.cha == 1 }">
						<c:forEach items="${nameList}" var="var1" varStatus="vs">
						
						<%-- <c:forEach items="${varList}" var="var" varStatus="vs"> --%>
							<tr>
								<td class='center' style="width: 30px;">
									<label><input type='checkbox' name='ids' value="${var1.varList.AGENTMANGER_ID}" /><span class="lbl"></span></label>
								</td>
								<td class='center' style="width: 30px;">${vs.index+1}</td>
										<td class="center">${var1.varList.USERNAME}</td>
										<%-- <td>${var1.varList.USERNAME}</td>
										<td>${var1.varList.PWD}</td> --%>
										<td  class="center">${var1.varList.AGENTNAME}</td>
										<%-- <td>${var1.varList.AGENTPROVINCE}</td> --%>
										<td class="center">${var1.varList.AGENTAREA}</td>
										<%-- <td>${var1.varList.CONTACTS}</td> --%>
										<td class="center">${var1.varList.PHONE}</td>
										<td class="center">${var1.nameString}</td>
										<td class="center">${var1.ACCOUNT_MONEY}</td>
										<c:if test="${var1.varList.FLAG=='1'}">
											<td class="center">正常</td>
										</c:if>
										<c:if test="${var1.varList.FLAG=='2'}">
											<td class="center">冻结</td>
										</c:if>
										
										<%-- <td>${var1.varList.AGENTLEADNAME}</td>
										<td>${var1.varList.AGENTLEADPHONE}</td>
										<td>${var1.varList.CARDNO}</td>
										<td>${var1.varList.CARDZHENGIMG}</td>
										<td>${var1.varList.CARDFANIMG}</td>
										<td>${var1.varList.AGENTCOMPANY}</td>
										<td>${var1.varList.COMPANYNO}</td>
										<td>${var1.varList.BUSINESSLICENCE}</td>
										<td>${var1.varList.CREATETIME}</td> --%>
								<td style="width: 30px;" class="center">
									<div class='hidden-phone visible-desktop btn-group'>
									
										<c:if test="${QX.edit != 1 && QX.del != 1 }">
										<span class="label label-large label-grey arrowed-in-right arrowed-in"><i class="icon-lock" title="无权限"></i></span>
										</c:if>
										<%-- <div class="inline position-relative">
										<button class="btn btn-mini btn-info" data-toggle="dropdown"><i class="icon-cog icon-only"></i></button>
										<ul class="dropdown-menu dropdown-icon-only dropdown-light pull-right dropdown-caret dropdown-close">
											<c:if test="${QX.edit == 1 }">
											<li><a style="cursor:pointer;" title="编辑" onclick="edit('${var1.varList.AGENTMANGER_ID}');" class="tooltip-success" data-rel="tooltip" title="" data-placement="left"><span class="green"><i class="icon-edit"></i></span></a></li>
											<c:if test="${var1.varList.FLAG=='1'}">
											<li><a style="cursor:pointer;" title="编辑" onclick="edit('${var1.varList.AGENTMANGER_ID}');" class="tooltip-success" data-rel="tooltip" title="" data-placement="left"><span class="green"><i class="icon-edit"></i></span></a></li>
											</c:if>
											<c:if test="${var1.varList.FLAG=='2'}">
											<td>冻结</td>
											</c:if>
											
											</c:if>
											<c:if test="${QX.del == 1 }">
											<li><a style="cursor:pointer;" title="删除" onclick="del('${var1.varList.AGENTMANGER_ID}');" class="tooltip-error" data-rel="tooltip" title="" data-placement="left"><span class="red"><i class="icon-trash"></i></span> </a></li>
											</c:if>
										</ul>
										</div> --%>
										
										
											<c:if test="${QX.edit == 1 }">
											<a class="btn btn-small btn-success" onclick="edit('${var1.varList.AGENTMANGER_ID}');" >编辑</a>
											<c:if test="${var1.varList.FLAG=='1'}">
											<a class="btn btn-small btn-danger" onclick=" freeze('${var1.varList.AGENTMANGER_ID}','2');" >冻结</a>
											</c:if>
											<c:if test="${var1.varList.FLAG=='2'}">
											<a class="btn btn-small btn-danger" onclick=" freeze('${var1.varList.AGENTMANGER_ID}','1');" >解冻</a>
											</c:if>
											<a class="btn btn-small btn-success" onclick="datil('${var1.varList.AGENTMANGER_ID}');" >查看详情</a>
											</c:if>
											<!--<c:if test="${QX.del == 1 }">
											<a class="btn btn-small btn-danger" onclick="del('${var1.varList.AGENTMANGER_ID}');" >删除</a>
											</c:if>-->
										
										
									</div>
								</td>
							</tr>
						
						</c:forEach>
						<%-- </c:forEach> --%>
						
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
				<!--<td style="vertical-align:top;">
					<c:if test="${QX.add == 1 }">
					<a class="btn btn-small btn-success" onclick="add();">新增</a>
					</c:if>
					<c:if test="${QX.del == 1 }">
					<a class="btn btn-small btn-danger" onclick="makeAll('确定要删除选中的数据吗?');" title="批量删除" ><i class='icon-trash'></i></a>
					</c:if>
				</td>
				--><td style="vertical-align:top;"><div class="pagination" style="float: right;padding-top: 0px;margin-top: 0px;">${page.pageStr}</div></td>
			</tr>
		</table>
		</div>
		</form>
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
		<script type="text/javascript"><!--
		
		$(top.hangge());
		
		//检索
		function search(){
			top.jzts();
			$("#Form").submit();
		}
		//跳转修改
		function edit(Id){
			
			 window.location.href=window.location.href='${pageContext.request.contextPath}/agentmanger/goEdit.do?AGENTMANGER_ID='+Id;
			
		}
		//冻结
		function freeze(id,flag){
			
			$("#AGENTMANGER_ID").val(id);
			$("#FLAG").val(flag);
			if($("#AGENTMANGER_ID").val()!=''&&$("#AGENTMANGER_ID").val()!=null&&$("#FLAG").val()!=''&&$("#FLAG").val()!=null){
				
				top.jzts();
				$("#Form").submit();
			}
			
			
		}
		//新增
		function add(){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="新增";
			 diag.URL = '<%=basePath%>agentmanger/goAdd.do';
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
		
		//删除
		function del(Id){
			bootbox.confirm("确定要删除吗?", function(result) {
				if(result) {
					top.jzts();
					var url = "<%=basePath%>agentmanger/delete.do?AGENTMANGER_ID="+Id+"&tm="+new Date().getTime();
					$.get(url,function(data){
						nextPage(${page.currentPage});
					});
				}
			});
		}
		
		//修改
		//function edit(Id){
		//	 top.jzts();
		//	 var diag = new top.Dialog();
		//	 diag.Drag=true;
		//	 diag.Title ="编辑";
			// diag.URL = '<%=basePath%>agentmanger/goEdit.do?AGENTMANGER_ID='+Id;
		//	 diag.Width = 450;
		//	 diag.Height = 355;
		//	 diag.CancelEvent = function(){ //关闭事件
		//		 if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
		//			 
		//		}
		//		diag.close();
		//	 };
		//	 diag.show();
		//}
		
		function datil(Id){
			/* top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true; 
			 diag.Title ="查看详情";*/
			 
			 window.location.href=window.location.href='${pageContext.request.contextPath}/agentmanger/goDatil.do?AGENTMANGER_ID='+Id;
			<%--  diag.URL = '<%=basePath%>agentmanger/goDatil.do?AGENTMANGER_ID='+Id;
			 diag.Width = 800;
			 diag.Height = 500;
			 diag.CancelEvent = function(){ //关闭事件
				 if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
					 nextPage(${page.currentPage});
					 alert("1111");
				}
				diag.close();
			 };
			 diag.show(); --%>
		}
		--></script>
		
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
								url: '<%=basePath%>agentmanger/deleteAll.do?tm='+new Date().getTime(),
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
			window.location.href='<%=basePath%>agentmanger/excel.do';
		}
		</script>
		
	</body>
</html>

