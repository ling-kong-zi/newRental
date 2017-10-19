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
   <table border="1">
   <tr>
   	<td>客户</td>
   	<td>留言内容</td>
   	<td>留言时间</td>
   	<td>管理员</td>
   	<td>回复内容</td>
   	<td>回复时间</td>
   	<td>操作</td>
   </tr>
   		<c:forEach items="${list }" var="r">
   			
   				<tr>
   					<td>${r.customer.cast_name }</td>
   					<td>${r.customer_content }</td>
   					<td>${r.message_date }</td>
   					<td>${r.user.name }</td>
   					<td>${r.agent_content }</td>
   					<td>${r.recovery_date }</td>
   					<td>
   						<a href="message!delete?message.id=${r.id }">删除</a>
   					</td>
   				</tr>
   			
   		</c:forEach>
   	</table>
   
  </body>
</html>
