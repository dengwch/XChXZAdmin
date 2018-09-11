﻿<div class="navbar navbar-inverse">
	<div class="navbar-inner">
		<div class="container-fluid">
			<a class="brand"><small><i class="icon-leaf"></i> ${pd.SYSNAME}</small> </a>
			<ul class="nav ace-nav pull-right">
			
			
			<li class="green">
						<a href="javascript:alert('预留功能,待开发');" class="dropdown-toggle" data-toggle="dropdown">
							<i class="icon-envelope-alt icon-animated-vertical icon-only"></i>
							<span class="badge badge-success" id="weichuli"></span>
						</a>
						<ul id="xiaoxicon" class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-closer">
							<li class="nav-header">
								<i class="icon-envelope"></i> <span id="quanbu"></span> 条信件
							</li>
							
							<!--<li>
								<a href="javascript:alert('预留功能,待开发');">
									<img alt="Alex's Avatar" class="msg-photo" src="static/avatars/avatar.png" />
									<span class="msg-body">
										<span class="msg-title">
											<span class="blue">张三:</span>
											你好，我们在哪里吃饭? ...
										</span>
										<span class="msg-time">
											<i class="icon-time"></i> <span>1个月以前</span>
										</span>
									</span>
								</a>
							</li>
							
							<li>
								<a href="javascript:alert('预留功能,待开发');">
									<img alt="Susan's Avatar" class="msg-photo" src="static/avatars/avatar3.png" />
									<span class="msg-body">
										<span class="msg-title">
											<span class="blue">李四:</span>
											你在哪上班? ...
										</span>
										<span class="msg-time">
											<i class="icon-time"></i> <span>20分钟前</span>
										</span>
									</span>
								</a>
							</li>
							
							<li>
								<a href="javascript:alert('预留功能,待开发');">
									<img alt="Bob's Avatar" class="msg-photo" src="static/avatars/avatar4.png" />
									<span class="msg-body">
										<span class="msg-title">
											<span class="blue">王五:</span>
											你好，我对你很感兴趣 ...
										</span>
										<span class="msg-time">
											<i class="icon-time"></i> <span>下午 3:15 </span>
										</span>
									</span>
								</a>
							</li>
							
							-->									
	
						</ul>
					</li>
			
			
			
			
				<li class="light-blue user-profile">
					<a class="user-menu dropdown-toggle" href="javascript:;" data-toggle="dropdown">
						<img alt="FH" src="static/avatars/user.jpg" class="nav-user-photo" />
						<span id="user_info">${user.NAME}</span>
						<i class="icon-caret-down"></i>
					</a>
					<ul id="user_menu" class="pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-closer">
						<li><a onclick="editUserH();" style="cursor:pointer;"><i class="icon-user"></i> 修改资料</a></li>
						<li id="systemset"><a onclick="editSys();" style="cursor:pointer;"><i class="icon-cog"></i> 系统设置</a></li>
						<li id="productCode"><a onclick="productCode();" style="cursor:pointer;"><i class="icon-cogs"></i> 代码生成</a></li>
						<li class="divider"></li>
						<li><a  href="logout"><i class="icon-off"></i> 退出</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>
	
	
		<!--引入属于此页面的js -->
		<script type="text/javascript" src="static/js/myjs/head.js"></script>
		<script type="text/javascript" src="static/js/jquery-1.7.2.js"></script>
<script>
$(function() {
	 makeAll();
	
});
function makeAll(){
	$.ajax({
		type : "post",
		dataType: "json",
		data : {
			
		},
		url : "${pageContext.request.contextPath }/businessuser/noticeindex.do",
		success : function(data) {
			var weidunum=data.weidunum;
			var quanbunum=data.quanbunum;
			var listcon=data.listcon;
			$("#weichuli").html(weidunum);
			//$("#quanbu").html(quanbunum);
			$("#xiaoxicon").empty();
			var str="";
			str+="<li class='nav-header'>";
			str+="<i class='icon-envelope'></i> <span id='quanbu'>"+quanbunum+"</span> 条信件";
			str+="</li>";
			for(var i = 0; i < listcon.length; i++) {
				
					str+="<li><a onclick='listnotice(\""+listcon[i].BUSINESSUSER_ID+"\")'>";
					str+="<span class='msg-body'>";
					str+="	<span class='msg-title'>"+listcon[i].CONTENT+"</span>";
					str+="<span class='msg-time'><i class='icon-time'></i> <span>"+listcon[i].CREATETIME+"";
					if(listcon[i].STATUS==1){
						str+="已处理";
					}else{
						str+="未处理";
					}
					
					
					str+="</span>";
					str+="</span>";
					str+="</span>";
					str+="</a>";
					str+="</li>";
				
			}
			$("#xiaoxicon").append(str);
			var sd="<li><a onclick='listallnotice()'>查看所有信件<i class='icon-arrow-right'></i></a></li>";
			$("#xiaoxicon").append(sd);
		}
	});
}
//setInterval("makeAll()","20000");

</script>