<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>逛逛企业</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link type="text/css" href="css/style.css" rel="stylesheet">
	<link type="text/css" href="css/student-find.css" rel="stylesheet">
	<script type="text/javascript" src="js/employment.js"></script>
	<link rel="stylesheet" type="text/css" href="css/cover.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/cover2.js"></script>
</head>
<body>
	  	<div id="cover"></div>
	  	<div id="element" class="element">
	  		<div class="uploadHeader">招聘信息详情</div>
	  		<table id="info">
	  		
	  		</table>
	  	</div>
		<div id="header">
			<h1>学生园地</h1><h1>${info.school}</h1>
			<div id="exit">
				<span>${session.user.name}</span>
				<a href="student_exit.action">退出</a>
			</div>
		</div>
		<div id="nav">
			<div class="nav-content">
				<div class="nav-content">
					<a href="student_person.action">个人中心</a>
					<a href="student_friend.action">我的好友</a>
					<a href="student_photo.action">相册</a>
					<a href="student_blog.action">日志</a>
					<a href="student_resume.action">我的应聘</a>
					<a class="active">逛逛企业</a>
				</div>
			</div>
		</div>
		<div id="section" class="clearfix">
			<!-- <table id="find">
			</table> -->
			<div id="enlist" class="clearfix">
				
			</div>
				
			<div id="RJ-pagebar" class="RU-pagebar"></div>
		</div>
		<div id="footer">
			<div class="footer-content">
			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" id="footbt">
              <tbody>
              <tr border-bottom:1px solid #f0f0f0;>
        		<td height="40" align="center"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          		<tbody><tr>
            	<td id="footerlink" height="20" align="center" style="padding-top:10px;" >
            
           		 <br>【免责声明】本网站所提供的信息资源，如有侵权违规请及时告知&nbsp; 联系电话：*** &nbsp;邮箱：***<br>
        
            
            </td>
          </tr>
        </tbody></table></td>
      </tr>
    </tbody></table>
			</div>
		</div>
	</body>
</html>