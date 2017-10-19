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
    
    <title>My JSP 'khgl.jsp' starting page</title>
    
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
 
   <h4>客户管理</h4>
   <table border="1">
   <tr>
   	<td>电话</td>
   	<td>身份证号</td>
   	<td>地址</td>
   	<td>用户名</td>
   	<td>密码</td>
   	<td>注册时间</td>
   	<td>操作</td>
   </tr>
   		<c:forEach items="${list }" var="cust">
   			
   				<tr>
   					<td>${cust.tel }</td>
   					<td>${cust.idCard }</td>
   					<td>${cust.addr }</td>
   					<td>${cust.cast_name }</td>
   					<td>${cust.password }</td>
   					<td>${cust.date }</td>
   					<td>
   						<a href="customer!delete?customer.id=${cust.id }">删除</a>
   						<a href="customer!queryId?customer.id=${cust.id }">修改</a>
   					</td>
   				</tr>
   			
   		</c:forEach>
   	</table>
  </body>
</html>
