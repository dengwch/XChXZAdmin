<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<%@ include file="../system/admin/top.jsp"%> 
	 <link href="${pageContext.request.contextPath }/static/css/page.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/page.js"></script>
</head>
<body>
<div class="container-fluid" id="main-container">
<ul id="demoContent"></ul>
 <ul class="page" id="page"></ul>
 </div>
 <!-- 引入 -->
		<script type="text/javascript">window.jQuery || document.write("<script src='static/js/jquery-1.9.1.min.js'>\x3C/script>");</script>
		<script type="text/javascript" src="static/js/chosen.jquery.min.js"></script><!-- 下拉框 -->
		<script type="text/javascript" src="static/js/bootstrap-datepicker.min.js"></script><!-- 日期框 -->
		<script type="text/javascript" src="static/js/bootbox.min.js"></script><!-- 确认窗口 -->
		<!-- 引入 -->
		<script type="text/javascript" src="static/js/jquery.tips.js"></script><!--提示框-->
<script type="text/javascript">
   
var datas = jQuery.parseJSON( '${json}');
var sizea='${sizea}'
	var id1="page";//显示页码的元素
	var data1=datas;//显示数据
    var maxshowpageitem1=3;//最多显示的页码个数
    var pagelistcount1=2;//每页显示数据个数
    function callBack(result){
    	     var cHtml="";
        for(var i=0;i<result.length;i++){
            cHtml+="<li>"+ result[i].WORKNAME+"</li>";//处理数据
        }
        $("#demoContent").html(cHtml);//将数据增加到页面中
    }
    $(function() {
		
		initzt(sizea,1,id1,data1,maxshowpageitem1,pagelistcount1);
	});
   
   
</script>
<script>


var pageId="";
var data=null;
var maxshowpageitem=5;//最多显示的页码个数
var pagelistcount=10;//每一页显示的内容条数
	      function initzt(listCount,currentPage,id1,data1,maxshowpageitem1,pagelistcount1){
	      	data=data1;
	      	pageId=id1;
	    maxshowpageitem=maxshowpageitem1;//最多显示的页码个数
	    pagelistcount=pagelistcount1;//每一页显示的内容条数
	    initPage(listCount,currentPage);
	  };
	  /**
	     * 初始化数据处理
	     * @param listCount 列表总量
	     * @param currentPage 当前页
	     */
	  function initPage(listCount,currentPage){
	        var maxshowpageitem = maxshowpageitem;
	        if(maxshowpageitem!=null&&maxshowpageitem>0&&maxshowpageitem!=""){
	            maxshowpageitem = maxshowpageitem;
	        }
	        var pagelistcount = pagelistcount;
	        if(pagelistcount!=null&&pagelistcount>0&&pagelistcount!=""){
	            pagelistcount = pagelistcount;
	        }   
	        pagelistcount=pagelistcount;
	        if(listCount<0){
	            listCount = 0;
	        }
	        if(currentPage<=0){
	            currentPage=1;
	        }
	     
	        setPageListCount(listCount,currentPage);
	   };
	    /**
	     * 初始化分页界面
	     * @param listCount 列表总量
	     */
	    function initWithUl(listCount,currentPage){
	        var pageCount = 1;
	        if(listCount>=0){
	            var pageCount = listCount%pagelistcount>0?parseInt(listCount/pagelistcount)+1:parseInt(listCount/pagelistcount);
	        }
	        var appendStr = getPageListModel(pageCount,currentPage);
	        $("#"+pageId).html(appendStr);
	    };
	    /**
	     * 设置列表总量和当前页码
	     * @param listCount 列表总量
	     * @param currentPage 当前页码
	     */
	  function setPageListCount(listCount,currentPage){
	        listCount = parseInt(listCount);
	        currentPage = parseInt(currentPage);
	        initWithUl(listCount,currentPage);
	        initPageEvent(listCount);
	        viewPage(currentPage,listCount,pagelistcount,data)
//	      fun(currentPage);
	    };
	    //页面显示功能
	     function viewPage(currentPage,listCount,pagelistcount,data){
	            var NUM=listCount%pagelistcount==0?listCount/pagelistcount:parseInt(listCount/pagelistcount)+1;
	            if(currentPage==NUM){
	                var result=data.slice((currentPage-1)* pagelistcount,data.length);
	            }
	            else{
	                var result=data.slice((currentPage-1)*pagelistcount,(currentPage-1)*pagelistcount+pagelistcount);
	            }
	            callBack(result);
	    };
	    function initPageEvent(listCount){
	        $("#"+pageId +">li[class='pageItem']").on("click",function(){
	            setPageListCount(listCount,$(this).attr("page-data"),fun);
	        });
	    };
	    function getPageListModel(pageCount,currentPage){
	        var prePage = currentPage-1;
	        var nextPage = currentPage+1;
	        var prePageClass ="pageItem";
	        var nextPageClass = "pageItem";
	        if(prePage<=0){
	            prePageClass="pageItemDisable";
	        }
	        if(nextPage>pageCount){
	            nextPageClass="pageItemDisable";
	        }
	        var appendStr ="";
	        appendStr+="<li class='"+prePageClass+"' page-data='1' page-rel='firstpage'>首页</li>";
	        appendStr+="<li class='"+prePageClass+"' page-data='"+prePage+"' page-rel='prepage'>&lt;上一页</li>";
	        var miniPageNumber = 1;
	        if(currentPage-parseInt(maxshowpageitem/2)>0&&currentPage+parseInt(maxshowpageitem/2)<=pageCount){
	            miniPageNumber = currentPage-parseInt(maxshowpageitem/2);
	        }else if(currentPage-parseInt(maxshowpageitem/2)>0&&currentPage+parseInt(maxshowpageitem/2)>pageCount){
	            miniPageNumber = pageCount-maxshowpageitem+1;
	            if(miniPageNumber<=0){
	                miniPageNumber=1;
	            }
	        }
	        var showPageNum = parseInt(maxshowpageitem);
	        if(pageCount<showPageNum){
	            showPageNum = pageCount;
	        }
	        for(var i=0;i<showPageNum;i++){
	            var pageNumber = miniPageNumber++;
	            var itemPageClass = "pageItem";
	            if(pageNumber==currentPage){
	                itemPageClass = "pageItemActive";
	            }

	            appendStr+="<li class='"+itemPageClass+"' page-data='"+pageNumber+"' page-rel='itempage'>"+pageNumber+"</li>";
	        }
	        appendStr+="<li class='"+nextPageClass+"' page-data='"+nextPage+"' page-rel='nextpage'>下一页&gt;</li>";
	        appendStr+="<li class='"+nextPageClass+"' page-data='"+pageCount+"' page-rel='lastpage'>尾页</li>";
	       return appendStr;

	    }
	

</script>


</body>
</html>
