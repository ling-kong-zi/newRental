<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页</title>
    
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
  <!-- header -->
   <jsp:include page="head.jsp"></jsp:include>
<form action="record!search" method="post"><div style="float: right;margin-right: 160px; width: 310px;"><input type="text" value="请按品牌查找" name="rec.brand"  onfocus="this.value=''"><button>查询</button></div></form>
   <form method="post" action="record!page">
     	<c:forEach items="${pages }" var="record">
     	<div style="margin-left: 250px;margin-top: 100px;">
     		车名：${record.car_name }<br><br>
     		${record.price_day }元/天<br><br>
     		车牌号：${record.plate_number }<br><br>
     		汽车排量：${record.pailiang }（T）<br><br>
     		品牌：${record.brand }<br><br><br>
			<a href="record!getId?record.id=${record.id }" style="color: blue">现在就租车</a>
     	</div>
     	<div style="height:300px;margin-left: 600px; margin-top:-280px; width:500"><img src="upload/${record.img }" width="500" height="300"></div>
     		     	<div style="margin-top: 200px;"></div>
     		
    
     	</c:forEach>
     		<center>
				<a href="record!page?currentPage=1">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="record!page?currentPage=${page-1}">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="record!page?currentPage=${page+1}">下一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="record!page?currentPage=${totalPage}">尾页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${currentPage }/${totalPage}
			</center>
    </form>
  </body>
</html>
