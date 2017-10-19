<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'clxx.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <form action="customer!update" method="post">
  <center>
  <input type="hidden" name="customer.id" value="${list.id }">
   <table>
   <tr>
   	<td>电话</td>
   	<td><input type="text" name="customer.tel" value="${list.tel }"/></td>
   	 </tr>
   	 <tr>
   	<td>身份证</td>
   	<td><input type="text" name="customer.idCard" value="${list.idCard }"/></td>
   	 </tr> <tr>
   	<td>地址</td>
   	<td><input type="text" name="customer.addr" value="${list.addr }"></td>
   	 </tr> <tr>
   	<td>用户名</td>
   	<td><input type="text" name="customer.cast_name" value="${list.cast_name }"></td>
   	 </tr> <tr>
   	<td>密码</td>
   	<td><input type="password" name="customer.password" value="${list.password }"></td>
   	 </tr> <tr>
   	 </tr> <!-- <tr>
   	<td>图片</td>
   	<td><input type="file" name="record.img" /></td>
   	</tr> -->
   	</table>
   	<button>修改</button>
   </center>
   </form>
  </body>
</html>
