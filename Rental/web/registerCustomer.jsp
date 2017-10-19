<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'fail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
	function login(){
		var name=document.getElementById("name").value;
		var pwd=document.getElementById("password").value;
		if(name==""){
				alert("请输入用户名");
				return false;
		}else if(pwd==""){
			alert("请输入密码");
				return false;
		}else{
			document.forms[0].submit();
			return true;
			
		}
	}
</script>
  </head>
  <body>
  	<jsp:include page="head.jsp" />
  	
  	<div>
  		<div style="float: left;margin-top: 5px;">
  			<img alt="宝马" src="upload/bm2.png">
  		</div>
  		<div style="float: left;margin-left:720px;margin-top: -300px;">
  				<form method="post" action="customer!login">
  				<table>
  					<tr>
  						<td>用户名</td>
  						<td><input type="text" name="customer.cast_name" id="name" size="20" onfocus="this.value=''" value=" "/></td>
  					</tr>
  					<tr>
  						<td>密码</td>
  						<td><input type="password" name="customer.password" id="password" size="20" onfocus="this.value=''" value=" "/></td>
  					</tr>
  				</table>
			<center><button onclick="return login()">login</button></center>
		</form>
  		</div>
  		<div>
  			
  		</div>
  	</div>
  	<jsp:include page="foot.jsp" />
  </body>
</html>
