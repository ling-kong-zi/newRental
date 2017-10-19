<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>footer</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/footer.css">

	<!-- scripts -->


  </head>
  
  
  <body style="margin: 0 auto;">

  <!--Footer-->
  <div class="footer-top"></div>
  <div id="footer-container">
 
  <div style="margin-top: 50"><center>友情链接<br>
  	<a href="http://bj.tuniu.com" target="_blank">北京旅游网</a>|
		<a href="http://z.mafengwo.cn" target="_blank">旅游指南</a>|
		<a href="http://www.ynet.com/" target="_blank">北青网</a>|
		<a href="http://www.etpass.com" target="_blank">快乐e行</a>|
		<a href="http://wan.cncn.com/" target="_blank">欣欣旅游商城</a>|
		<a href="http://www.mianfeiwucan.org/" target="_blank">免费午餐网</a>
  	
  </center></div>
</div>

  </body>
</html>
