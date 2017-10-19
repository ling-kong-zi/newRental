<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'carrentalserver.jsp' starting page</title>
    
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
<jsp:include page="head.jsp" />
<div style="width: 63%;margin: 0 auto;background-color: #ffffff;">
<div style="float: left;margin-left: 100px;background-color: #ffffff;">
  <img alt="" src="images/fw1.png">
       <p style="color: #8FD004;float: left;width: 120px;margin-left: 40px;">自驾所需证件</p>
  <img alt="" src="images/fw2.png" >
  <a href="rentalxingqing.jsp"><img alt="自驾日租服务" src="images/fw3.png" style="margin-top:30px;margin-left: 25px;"></a>
  <img alt="" src="images/zcfw.png">
  <a href="jiesongjifw.jsp"><img alt="" src="images/zcfw1.png"></a>
  <div style="height: 50px;"></div>
  </div></div>
<jsp:include page="foot.jsp" />
  
  </body>
</html>
