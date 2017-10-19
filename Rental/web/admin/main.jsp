<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
a{
	font-weight: bold;
	text-decoration: none;
}
</style>
  </head>
  
  <body>
       <jsp:include page="/head.jsp" />
       
       <div style="height: 600px;">
       	<div style="width: 120; margin-left: 10%;">
       		<a href="customer!showCustomer" target="page">客户管理</a><br><br><br><br>
       		<a href="record!showCar" target="page">车辆查询</a><br><br><br><br>
       		<a href="message!gBook" target="page">留言管理</a><br><br><br><br>
       		<a href="admin/zcgly.jsp" target="page">注册管理员</a>
       		
       	</div>
     <div class="con_right" style="width: 77%;height: 600px;float: right;margin-top: -300;">
    <iframe src="/test.jsp" name="page" width="100%" height="600px" frameborder="0" marginwidth="0" marginheight="0" ></iframe>
    </div>
       </div>
        <jsp:include page="/foot.jsp" />
    
  </body>
</html>
