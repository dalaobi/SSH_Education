<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat,cn.xuhe.entity.Student"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String count=request.getParameter("count");

%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>sub页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/sub.css">
	<script type="text/javascript" src="js/sub.js"></script>
	</head>
<body>
<div class="top-exit" >
<a href="student_exit.action" style="color:#aaa">退出</a>
</div>
	<div class="top-header">
		<div id="logo"></div>
		<div class="top-right-content">
			<div class="clearfix">
				<div id="date"><%=new SimpleDateFormat("yyyy-MM-dd E").format(new Date())%></div>
				<div class="login">
					<a href="#" style="color:rgb(144,31,30)">设为首页</a>
					<a href="regist.jsp" style="color:#aaa">注册</a>
					<a href="login.jsp" style="background:rgb(144,31,30);color:#fff">登录</a>
				</div>
			</div>
			<div class="search">
				<input type="text" name="search" id="s_input"/>
				<input type="submit" value="搜索" id="s_submit" />
			</div>
		</div>
		<div id="weather">
			<iframe width="190" scrolling="no" height="50" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=1"></iframe>
		</div>
		<div id="over"></div>
	</div>
	<div id="nav">
		<div class="nav-content clearfix">
			<ul class="nav-part">
				<li><a href="index.jsp">首页</a></li>

			</ul>
			<ul class="nav-part">
				<li><a href="more.action?type=3">智能模型</a></li>


			</ul>
			<ul class="nav-part">
				<li><a href="more.action?type=17">衍生产品</a></li>

			</ul>
			<ul class="nav-part">
				<li><a href="more.action?type=5">工程应用</a></li>

			</ul>
			<ul class="nav-part">
				<li><a href="more.action?type=7">服务平台</a></li>

			</ul>
			<ul class="nav-part">
				<li><a href="more.action?type=9">业界动态</a></li>

			</ul>
			<ul class="nav-part">
				<li><a href="more.action?type=11">关于我们</a></li>

			</ul>

		</div>
	</div>
	</div>
	<div class="content">
		<h1>您的当前位置在：${ts}</h1>
		<ul id="list">
		<%if(count!=null){ 
			int count1=Integer.parseInt(count);			
		%>		
		<c:forEach begin='<%=(count1-1)*7%>' end='<%=((count1-1)*7+6)%>' items="${lists}" var="list" varStatus="s">		
		<li><a href="detail.action?id=${list.getId()}">${list.getTitle()}</a></li>
		</c:forEach>
		<%}else{ %>	
		<c:forEach begin='0' end='6' items="${lists}" var="list" varStatus="s">		
		<li><a href="detail.action?id=${list.getId()}">${list.getTitle()}</a></li>
		</c:forEach>
		<%} %>			             		
		</ul>
		<ul>
		<li style="text-align:center;">
		<c:forEach step='7' items="${lists}" varStatus="s">		
		<a href="more.action?type=${type}&count=${s.count}">[${s.count}]</a>		 
		</c:forEach>
		</li>
		</ul>
	</div>
	<div id="footer-bg">
		<div> 
  			<p>【免责声明】本网站所提供的信息资源，如有侵权违规请及时告知  联系邮箱：***</p>
  		</div>
	</div>
	<script>
		var type = ${type};
		var size=${lists}.size()
		list();		
	</script>
</body>
</html>