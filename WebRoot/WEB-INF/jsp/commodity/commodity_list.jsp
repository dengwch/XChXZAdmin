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
	<%@ include file="../system/admin/top.jsp"%> 
	</head>
	<style type="text/css">

* {
 padding:0;
 margin:0;
}
#upcontent {
 list-style-position: outside;
 list-style-image: none;
 list-style-type: none;
}
#upcontent li {
 font-size:12px;
 color:#333;
 line-height:150%;
}
#bodyL {
 float:left;
 width:84px;
 margin-right:2px;
}
#tittleup {
 font-size:14px;
 font-weight:bold;
 color:#000066;
 padding-left:25px;
 border-bottom-width: 1px;
 border-bottom-style: solid;
 border-bottom-color: #d0daec;
 margin-bottom: 10px;
 padding-bottom: 10px;
}
a.od {
 float:right;
 font-size:14px;
 color: #CC0000;
 text-decoration: none;
}
a.od:hover {
 color:#FF0000;
}
.tree-opened{
font-size:16px!important;
font-weight:600;}
.tree-closed{
font-size:16px!important;
font-weight:600;}
.tree-closed .treemenu{
font-size:14px!important;
font-weight:100;}
.tree-opened .treemenu{
font-size:14px!important;
font-weight:100;}
#fd {
 background:#EDF1F8;
 border: 2px solid #849BCA;
 margin-top:2px;
 margin-left:2px;
 float:left;
 overflow:hidden;
 position:absolute;
 left:432px;
 top:100px;
 cursor:move;
 float:left;/*filter:alpha(opacity=50);*/
 z-index: 10;
}
.contentup {
 padding:20px;
}
</style>
<body>
		
<div class="container-fluid" id="main-container">


<div id="page-content" class="clearfix">
						
  <div class="row-fluid">

	<div class="row-fluid">
	
			<!-- 检索  -->
			<form action="commodity/list.do" method="post" name="Form" id="Form">
			<input type="hidden" value="${pd.SQFLAG1}" id="SQFLAG2"/>
			<input type="hidden" value="" id="chanpinid"/>
			<input type="hidden" value="${pd.CLASSIFICATION_ID}" id="CLASSIFICATION_ID1"/>
			<table>
			<tr>
			
			<td style="vertical-align:top;"> 
			 	<select  name="SQFLAG1" id="SQFLAG1" data-placeholder="请选择" style="vertical-align:top;width: 135px;" onchange="findShi()">
					<option value="">请选择一级分类</option>
					<option value="">全部</option>
					
					 <c:forEach items="${listClass}" var="LIclass">
					 
       					<option value ="${LIclass.CLASSIFICATION_ID }" <c:if test="${pd.SQFLAG1==LIclass.CLASSIFICATION_ID}">selected</c:if>>${LIclass.NAME }</option>
      					</c:forEach>
			  	</select>
			</td>
			<td style="vertical-align:top;"> 
			 	<select name="CLASSIFICATION_ID" id="CLASSIFIstr" data-placeholder="请选择" style="vertical-align:top;width: 135px;" >
					<option value="">请选择二级分类</option>
			  	</select>
			</td>
			<td style="vertical-align:top;"> 
			 	<select  name="SHOPNAME" id="SHOPNAME" data-placeholder="请选择" style="vertical-align:top;width: 135px;" >
					<option value="">请选择店铺</option>
					<option value="">全部</option>
					 <c:forEach items="${DPList}" var="LIclass">
       					<option value ="${LIclass.SHOPNAME }" <c:if test="${pd.SHOPNAME==LIclass.SHOPNAME}">selected</c:if>>${LIclass.SHOPNAME }</option>
      				</c:forEach>
			  	</select>
			</td>
			<td>
				<span class="input-icon">
					<input autocomplete="off" id="NAME" type="text" name="NAME" value="${pd.NAME}" placeholder="商品名称" />
					<i id="nav-search-icon" class="icon-search"></i>
				</span>
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
						<th class="center">分类ID</th>
						<th class="center">详情</th>
						<th class="center">商品名称</th>
						<th class="center">店铺</th>
						<!--<th class="center">活动类型</th>
						<th class="center">商品货号</th>
						--><th class="center">售价</th>
						<!--<th class="center">重量</th>
						<th class="center">体积</th>
						<th class="center">商品图片</th>
						<th class="center">所在地</th>
						<th class="center">运费模板</th>
						<th class="center">一级分佣比例</th>
						<th class="center">二级分佣比例</th>
						<th class="center">上架模式</th>-->
						<th class="center">操作</th>
					</tr>
				</thead>
										
				<tbody>
					
				<!-- 开始循环 -->	
				<c:choose>
					<c:when test="${not empty varList}">
						
						<c:forEach items="${varList}" var="var" varStatus="vs">
							<tr>
								<td class='center' style="width: 30px;vertical-align: middle;">
									<label><input type='checkbox' name='ids' value="${var.COMMODITY_ID}" /><span class="lbl"></span></label>
								</td>
								<td class='center' style="width: 30px;vertical-align: middle;">${vs.index+1}</td>
										<td class='center' style="vertical-align: middle;">${var.CLASSIFICATION_ID}</td>
										<td class='center' style="vertical-align: middle;"><a class="btn btn-small btn-success" onclick="xq('${var.COMMODITY_ID}');">点击查看</a></td>
										<td class='center' style="vertical-align: middle;">${var.NAME}</td>
										<td class='center' style="vertical-align: middle;">${var.SHOPNAME}</td>
										<!--<td>${var.ACTIVITYNAME}</td>
										<td>${var.NUMBER}</td>
										--><td class='center' style="vertical-align: middle;">${var.PRICE}</td>
										<!--<td>${var.WEIGHT}</td>
										<td>${var.VOLUME}</td>
										<td><a href="commodityimg/list.do?COMMODITY_ID=${var.COMMODITY_ID}">查看图片</a></td>
										<td>${var.LOCATION}</td>
										<td>${var.FREIGHTTEMPLATE}</td>
										<td>${var.PERCENTAGECOMMISSIONFIR}</td>
										<td>${var.PERCENTAGECOMMISSIONSEC}</td>
										<td>
											<c:if test="${var.TYPE==0}">
												未上架
											</c:if>
											<c:if test="${var.TYPE==1}">
												已上架
											</c:if>
										</td>
								-->
								
								<c:if test="${var.FLAG=='1' }">
								<td class='center' style="vertical-align: middle;width:40px;">
									<span>已下架</span>
								</td>
								</c:if>
								<c:if test="${var.FLAG=='2' }">
									<td class='center' style="vertical-align: middle;width:40px;">
									<div class='hidden-phone visible-desktop btn-group'>
									
										
										<div class="inline position-relative">
										<button class="btn btn-mini btn-info" data-toggle="dropdown"><i class="icon-cog icon-only"></i></button>
										<ul class="dropdown-menu dropdown-icon-only dropdown-light pull-right dropdown-caret dropdown-close">
											<li><a style="cursor:pointer;" title="下架" onclick="show1('fd',event,'${var.COMMODITY_ID}');" class="tooltip-success" data-rel="tooltip" title="" data-placement="left"><span class="green"><i class="icon-edit"></i></span></a></li>
											<!--<li><a style="cursor:pointer;" title="删除" onclick="del('${var.COMMODITY_ID}');" class="tooltip-error" data-rel="tooltip" title="" data-placement="left"><span class="red"><i class="icon-trash"></i></span> </a></li>
										--></ul>
										</div>
									</div>
								</td>
								</c:if>
								<c:if test="${var.FLAG=='0' }">
									<td class='center' style="vertical-align: middle;width:40px;">
									<div class='hidden-phone visible-desktop btn-group'>
									
										
										<div class="inline position-relative">
										<button class="btn btn-mini btn-info" data-toggle="dropdown"><i class="icon-cog icon-only"></i></button>
										<ul class="dropdown-menu dropdown-icon-only dropdown-light pull-right dropdown-caret dropdown-close">
											<li><a style="cursor:pointer;" title="上架" onclick="del('${var.COMMODITY_ID}','2');" class="tooltip-success" data-rel="tooltip" title="" data-placement="left"><span class="green"><i class="icon-edit"></i></span></a></li>
											<!--<li><a style="cursor:pointer;" title="删除" onclick="del('${var.COMMODITY_ID}');" class="tooltip-error" data-rel="tooltip" title="" data-placement="left"><span class="red"><i class="icon-trash"></i></span> </a></li>
										--></ul>
										</div>
									</div>
								</td>
								</c:if>
								
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
					
					<a class="btn btn-small btn-success" onclick="add();">新增</a>
					
					
					<a class="btn btn-small btn-danger" onclick="makeAll('确定要删除选中的数据吗?');" title="批量删除" ><i class='icon-trash'></i></a>
					
				</td>
				--><td style="vertical-align:top;"><div class="pagination" style="float: right;padding-top: 0px;margin-top: 0px;">${page.pageStr}</div></td>
			</tr>
		</table>
		</div>
		</form>
	</div>
 <div id="bodyL"></div>
<div id="fd" style="display:none;filter:alpha(opacity=100);opacity:1;">
  <div class="contentup"> <a href="#" class="od" onclick = "closeed('fd');return false;"> 关 闭 </a>
    <div id="tittleup">填写下架原因</div>
    <input id="FLID" type="hidden"/>
    <ul id="upcontent">
      <li><p style="padding-left:40px; ">下架原因：<textarea  name="XJYY" id="XJYY"></textarea></p></li>
    </ul>
    <div style="margin-top:100px;" align="center">
								 <button type="button" style="margin-right:10px;" class="btn btn-default" onclick = "closeed('fd');return false;">取消</button> <button type="button" class="btn btn-primary" onclick="del('${var.COMMODITY_ID}','1');">下架</button>
							</div>
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
		$(document).ready(function() {
				var options=$("#SQFLAG1 option:selected");  //获取选中的项
			//alert(options.val());   //拿到选中项的值
				//alert(options.text());   //拿到选中项的文本
				var fatherId = options.val();
	    		if (fatherId == "" || null==fatherId) {
	    			
	    		} else {
	    			$.ajax({
	        			type : "post",
	        			dataType: "json",
	        			data : {
	        				"id":fatherId
	        			},
	        			url : "${pageContext.request.contextPath }/commodity/findFenLei.do",
	        			success : function(data) {
	        				$("#CLASSIFIstr").empty(); 
	        				var str = '<option value="">请选择二级分类</option>';
	    					$("#CLASSIFIstr").append(str);
	        				var list = data.listClassT;
	        				var str = "";
	        				//alert(list);
	        				//alert(list.length);
	        				var CLASSIFICATION_ID1=$("#CLASSIFICATION_ID1").val();
	        				if(null!=list&&list.length>0){
	        					for (var i = 0; i<list.length;i++){
	        						//alert(list[i].CLASSIFICATION_ID);
	        						//alert(list[i].NAME);
	        						str+="<option value='"+list[i].CLASSIFICATION_ID+"'";
	        						if(null!=CLASSIFICATION_ID1&&CLASSIFICATION_ID1!=''){
	        							if(CLASSIFICATION_ID1==list[i].CLASSIFICATION_ID){
	        								str+="selected";
	        							}
	        						}else{
	        							
	        						}
	        						str+=" >"+ list[i].NAME+ "</option>";
	        						
	        					}
	        					str+="<option value=''>全选</option>";
	        					$("#CLASSIFIstr").append(str);
	        				}else{
	        					str+="<option value='暂无'>暂无</option>";
	        					$("#CLASSIFIstr").append(str);
	        				}
	    					
	    					
	        			}
	        		});
	    		}
			
		});
		
		$(top.hangge());
		
		//检索
		function search(){
			top.jzts();
			$("#Form").submit();
		}
		
		//chafenlei
		function findShi(){
    		var fatherId = $("#SQFLAG1").val();
    		if (fatherId == "") {
    			
    		} else {
    			$.ajax({
        			type : "post",
        			dataType: "json",
        			data : {
        				"id":fatherId
        			},
        			url : "${pageContext.request.contextPath }/commodity/findFenLei.do",
        			success : function(data) {
        				$("#CLASSIFIstr").empty(); 
        				var str = '<option value="">请选择二级分类</option>';
    					$("#CLASSIFIstr").append(str);
        				var list = data.listClassT;
        				var str = "";
        				//alert(list);
        				//alert(list.length);
        				if(null!=list&&list.length>0){
        					for (var i = 0; i<list.length;i++){
        						//alert(list[i].CLASSIFICATION_ID);
        						//alert(list[i].NAME);
        						str+="<option value='"+list[i].CLASSIFICATION_ID+"' >"+ list[i].NAME+ "</option>";
        						
        					}
        					str+="<option value=''>全选</option>";
        					$("#CLASSIFIstr").append(str);
        				}else{
        					str+="<option value='暂无'>暂无</option>";
        					$("#CLASSIFIstr").append(str);
        				}
    					
    					
        			}
        		});
    		}
    	}
		//新增
		function add(){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="新增";
			 diag.URL = '<%=basePath%>commodity/goAdd.do';
			 diag.Width = 1200;
			 diag.Height = 800;
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
		function del(Id,FlAG){
			var XJYY=$("#XJYY").val();
			if(null==Id||""==Id){
				Id=$("#chanpinid").val();
			}
			if(null==XJYY||""==XJYY){
				alert("请输入下架原因");
			}else{
				bootbox.confirm("确定要下架吗?", function(result) {
					if(result) {
						top.jzts();
						var url = "<%=basePath%>commodity/delete.do?COMMODITY_ID="+Id+"&FlAG="+FlAG+"&XJYY="+XJYY;
						$.get(url,function(data){
							nextPage(${page.currentPage});
							closeed('fd');
						});
					}
				});
			}
			
		}
		
		//修改
		function edit(Id){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="编辑";
			 diag.URL = '<%=basePath%>commodity/goEdit.do?COMMODITY_ID='+Id;
			 diag.Width = 800;
			 diag.Height = 600;
			 diag.CancelEvent = function(){ //关闭事件
				 if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
					 nextPage(${page.currentPage});
				}
				diag.close();
			 };
			 diag.show();
		}
		//修改
		function xq(Id){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="编辑";
			 diag.URL = '<%=basePath%>commodity/goXQ.do?COMMODITY_ID='+Id;
			 diag.Width = 800;
			 diag.Height = 600;
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
    var prox;
    var proy;
    var proxc;
    var proyc;
 var isIe=(document.all)?true:false;
 function setSelectState(state)
{
var objl=document.getElementsByTagName('select');
for(var i=0;i<objl.length;i++)
{
objl[i].style.visibility=state;
}
}
function mousePosition(ev)
{
if(ev.pageX || ev.pageY)
{
return {x:ev.pageX, y:ev.pageY};
}
return {
x:ev.clientX + document.body.scrollLeft - document.body.clientLeft,y:ev.clientY + document.body.scrollTop - document.body.clientTop
};
}
//关闭窗口
function closeWindow()
{
if(document.getElementById('back')!=null)
{
document.getElementById('back').parentNode.removeChild(document.getElementById('back'));
}
if(document.getElementById('mesWindow')!=null)
{
document.getElementById('mesWindow').parentNode.removeChild(document.getElementById('mesWindow'));
}
if(isIe){
setSelectState('');}
}
    function show1(id,ev,flid){/*--打开--*/
    	$("#chanpinid").val(flid);
    	
    	
    			 closeWindow();
    			 var bWidth=parseInt(document.documentElement.scrollWidth);
    			 var bHeight=parseInt(document.documentElement.scrollHeight)<592?592:parseInt(document.documentElement.scrollHeight);
    			 if(isIe){
    			 setSelectState('hidden');}
    			 var back=document.createElement("div");
    			 back.id="back";
    			 var styleStr="top:0px;left:0px;position:absolute;background:#666;width:"+bWidth+"px;height:"+bHeight+"px;";
    			 styleStr+=(isIe)?"filter:alpha(opacity=40);":"opacity:0.40;";
    			 back.style.cssText=styleStr;
    			 document.body.appendChild(back);
    			 
    			        clearInterval(prox);
    			        clearInterval(proy);
    			        clearInterval(proxc);
    			        clearInterval(proyc);
    			        var o = document.getElementById(id);
    			        o.style.display = "block";
    			        o.style.width = "1px";
    			        o.style.height = "1px"; 
    			        prox = setInterval(function(){openx(o,500)},10);
  
}    
    function openx(o,x){/*--打开x--*/
        var cx = parseInt(o.style.width);
        if(cx < x)
        {
            o.style.width = (cx + Math.ceil((x-cx)/5)) +"px";
        }
        else
        {
            clearInterval(prox);
            proy = setInterval(function(){openy(o,300)},10);
        }
    }    
    function openy(o,y){/*--打开y--*/    
        var cy = parseInt(o.style.height);
        if(cy < y)
        {
            o.style.height = (cy + Math.ceil((y-cy)/5)) +"px";
        }
        else
        {
            clearInterval(proy);            
        }
    }    
    function closeed(id){/*--关闭--*/
 closeWindow();
        clearInterval(prox);
        clearInterval(proy);
        clearInterval(proxc);
        clearInterval(proyc);        
        var o = document.getElementById(id);
        if(o.style.display == "block")
        {
            proyc = setInterval(function(){closey(o)},10);            
        }        
    }    
    function closey(o){/*--打开y--*/    
        var cy = parseInt(o.style.height);
        if(cy > 0)
        {
            o.style.height = (cy - Math.ceil(cy/5)) +"px";
        }
        else
        {
            clearInterval(proyc);                
            proxc = setInterval(function(){closex(o)},10);
        }
    }    
    function closex(o){/*--打开x--*/
        var cx = parseInt(o.style.width);
        if(cx > 0)
        {
            o.style.width = (cx - Math.ceil(cx/5)) +"px";
        }
        else
        {
            clearInterval(proxc);
            o.style.display = "none";
        }
    }    
    
    
    /*-------------------------鼠标拖动---------------------*/    
    var od = document.getElementById("fd");    
    var dx,dy,mx,my,mouseD;
    var odrag;
    var isIE = document.all ? true : false;
    document.onmousedown = function(e){
        var e = e ? e : event;
        if(e.button == (document.all ? 1 : 0))
        {
            mouseD = true;            
        }
    }
    document.onmouseup = function(){
        mouseD = false;
        odrag = "";
        if(isIE)
        {
            od.releaseCapture();
            od.filters.alpha.opacity = 100;
        }
        else
        {
            window.releaseEvents(od.MOUSEMOVE);
            od.style.opacity = 1;
        }        
    }
    
    
    //function readyMove(e){    
    od.onmousedown = function(e){
        odrag = this;
        var e = e ? e : event;
        if(e.button == (document.all ? 1 : 0))
        {
            mx = e.clientX;
            my = e.clientY;
            od.style.left = od.offsetLeft + "px";
            od.style.top = od.offsetTop + "px";
            if(isIE)
            {
                od.setCapture();                
                od.filters.alpha.opacity = 50;
            }
            else
            {
                window.captureEvents(Event.MOUSEMOVE);
                od.style.opacity = 0.5;
            }
            
            //alert(mx);
            //alert(my);
            
        } 
    }
    document.onmousemove = function(e){
        var e = e ? e : event;
        
        //alert(mrx);
        //alert(e.button);        
        if(mouseD==true && odrag)
        {        
            var mrx = e.clientX - mx;
            var mry = e.clientY - my;    
            od.style.left = parseInt(od.style.left) +mrx + "px";
            od.style.top = parseInt(od.style.top) + mry + "px";            
            mx = e.clientX;
            my = e.clientY;
            
        }
    }
function showBackground(obj,endInt)
{
obj.filters.alpha.opacity+=1;
if(obj.filters.alpha.opacity<endInt)
{
setTimeout(function(){showBackground(obj,endInt)},8);
}
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
								url: '<%=basePath%>commodity/deleteAll.do?tm='+new Date().getTime(),
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
			window.location.href='<%=basePath%>commodity/excel.do';
		}
		</script>
		
	</body>
</html>

