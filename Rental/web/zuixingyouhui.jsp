<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zuixingyouhui.jsp' starting page</title>
    
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
    <jsp:include page="head.jsp"></jsp:include>
    <div style="width: 70%;margin: 0 auto;background-color: #ffffff;">
<div style="float: left;margin-left: 100px;background-color: #ffffff;">
<c:forEach items="${list }" var="discount">
     
    <div style="float: left;margin-left: 150;">
     <div style="float: right;"><p style="color:#7BD731 ">${discount.name }</p>
        	<p>活动时间:${discount.olddate }至 ${discount.newdate }</p>
        	<a href="#">查看详情>></a><hr></div></div>
        	
</c:forEach>
    </div></div>
    <!-- footer -->
    <jsp:include page="foot.jsp"></jsp:include>
  </body>
</html>
