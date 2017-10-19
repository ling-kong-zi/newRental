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
<script type="text/javascript">
	function tishi(){
		alert("修改成功！");
	}
</script>
  </head>
  
  <body>
  <form action="record!updat" method="post" enctype="multipart/form-data">
  <center>
  <input type="hidden" name="record.id" value="${list.id }">
   <table>
   <tr>
   	<td>车名</td>
   	<td><input type="text" name="record.car_name" value="${list.car_name }"/></td>
   	 </tr>
   	 <tr>
   	<td>车牌号</td>
   	<td><input type="text" name="record.plate_number" value="${list.plate_number }"/></td>
   	 </tr> <tr>
   	<td>排量</td>
   	<td><input type="text" name="record.pailiang" value="${list.pailiang }"></td>
   	 </tr> <tr>
   	<td>类型</td>
   	<td><input type="text" name="record.brand" value="${list.brand }"></td>
   	 </tr> <tr>
   	<td>状态</td>
   	<td><input type="text" name="record.state" value="${list.state }"></td>
   	 </tr> <tr>
   	<td>价格</td>
   	<td><input type="text" name="record.price_day" value="${list.price_day }"/></td>
   	 </tr>
   	 <tr>
   	<td>图片</td>
   	<td><input type="file" name="fileImg" /></td>
   	</tr>
   	</table>
   	<input type="submit" value="修改" onclick="tishi()"/>
   </center>
   </form>
  </body>
</html>
