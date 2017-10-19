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
   <td><center><a href="admin/addCar.jsp">增加车辆</a></center></td>
   </tr>
   <tr>
   	<td>车名</td>
   	<td>车牌号</td>
   	<td>排量</td>
   	<td>类型</td>
   	<td>状态</td>
   	<td>价格(元/天)</td>
   	<td>操作</td>
   </tr>
   		<c:forEach items="${list }" var="r">
   			
   				<tr>
   					<td>${r.car_name }</td>
   					<td>${r.plate_number }</td>
   					<td>${r.pailiang }</td>
   					<td>${r.brand }</td>
   					<td>${r.state }</td>
   					<td>${r.price_day }</td>
   					<td>
   						<a href="record!delet?record.id=${r.id }">删除</a>
   						<a href="record!query?record.id=${r.id }">修改</a>
   					</td>
   				</tr>
   			
   		</c:forEach>
   	</table>
   
  </body>
</html>
