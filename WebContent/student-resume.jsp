<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的应聘</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link type="text/css" href="css/style.css" rel="stylesheet">
	<link type="text/css" href="css/student-resume.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/cover.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/cover.js"></script>
	<script type="text/javascript" src="js/resume-student.js"></script>
	</head>
	<body>
		<div id="cover"></div>
	  	<div id="element" class="element">
	  		<div class="uploadHeader">上传应用</div>
	  		<form action="resume.action" method="post" enctype="multipart/form-data" target="uploadStatus">
	  		<input type="file" name="resume" />
	  		<div class="important">请上传doc格式的文件,或点击框外取消当前操作</div>
	  		<input type="submit" onclick="doing()" value="上传" />
	  		</form>
	  		<iframe id="uploadStatus"></iframe>
	  	</div>
		<div id="header">
			<h1>学生园地</h1>
			<div id="exit">
				<span>${session.user.name}</span>
				<a href="student_exit.action">退出</a>
			</div>
		</div>
		<div id="nav">
			<div class="nav-content">
				<a href="student_person.action">个人中心</a>
				<a href="student_friend.action">我的好友</a>
				<a href="student_blog.action">我的问题</a>

				<a class="active">应用举例</a>
			</div>
		</div>


		<div id="section" class="clearfix">

			<div id="left">
				<div id="avatar">
					<img src="${session.user.avatar}" /> 
					<span class="username">${session.user.name}</span>
				</div>
				
				<div style='margin-top:30px'>
				<a href="#" id="displayCover" class="updateResume" >更新应用</a>
					<label style='font-size:12px;text-align:center'>请上传应用</label>
					
				</div>
				<span id="num">当前共有0份应用</span>
			</div>
			<div id="right">





				<div id="resumelist"  class="clearfix">







			</div>
				
			<div id="RJ-pagebar" class="RU-pagebar"></div>
				
			</div>	
		</div>
	<div id="footer">
			<div class="footer-content">
			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" id="footbt">
              <tbody>
              <tr>
        		<td height="40" align="center"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          		<tbody><tr>
            	<td id="footerlink" height="20" align="center" style="padding-top:10px;">
            
           		 <br>【免责声明】本网站所提供的信息资源，如有侵权违规请及时告知&nbsp; 联系电话：*** &nbsp;邮箱：***<br>
        
            
            </td>
          </tr>
        </tbody></table></td>
      </tr>
    </tbody></table>
			</div>
		</div>>
	</body>
</html>