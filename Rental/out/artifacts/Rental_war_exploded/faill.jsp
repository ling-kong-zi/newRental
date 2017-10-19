<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	JOptionPane.showMessageDialog(null, "登陆失败，请重新登陆！");
	response.sendRedirect("/Rental/index.jsp");
 %>
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
	<link rel="stylesheet" type="text/css" href="css/index.css">	
  </head>
  
  <body>
  <!-- header -->
   <jsp:include page="head.jsp"></jsp:include>
     <div class="conter">
    	<jsp:include page="home.jsp"></jsp:include>
    </div>
    <!-- footer -->
    <jsp:include page="foot.jsp" ></jsp:include>
  </body>
</html>
