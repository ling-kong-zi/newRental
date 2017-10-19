<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zcgly.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
		function login_submit(){
				var username = document.getElementById("user.name").value;
				var password = document.getElementById("user.pwd").value;
				if(username==""){
					alert("请输入用户名");
					return false;
				}else if(password==""){
					alert("请输入密码");
					return false;
				}else{
				alert("申请成功，请等待进一步核实。");
					document.forms[0].submit();
					return true;
				}
			}
			
</script> 

  </head>
  
  <body>
  <center>
  <form method="post" action="user!register">
  <table>
    <tr>
    	<td>账号</td>
    	<td><input type="text" name="user.name" id="user.name" onfocus="this.value=''"/></td>
    </tr>
    <tr>
    	<td>密码</td>
    	<td><input type="password" name="user.pwd" id="user.pwd"  onfocus="this.value=''"/></td>
    </tr> 
    </table>
    <button onclick="return login_submit()" >添加管理员</button>
    </form>
    </center>
  </body>
</html>
