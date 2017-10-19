<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  
  <body>
  <form action="record!tianjia" method="post" enctype="multipart/form-data">
  <center>
   <table>
    <tr>
   	<td>类型</td>
   	<td>
   		<select name="record.brand" style="width: 169px;">
   			<option value="奔驰">奔驰</option>
   			<option value="奥迪">奥迪</option>
   			<option value="宝马">宝马</option>
   			<option value="大众">大众</option>
   			<option value="本田">本田</option>
   			<option value="野马">野马</option>
   			<option value="别克">别克</option>
   			<option value="雪佛兰">雪佛兰</option>
   			<option value="劳伦士">劳伦士</option>
   			<option value="劳斯莱斯">劳斯莱斯</option>
   			<option value="克莱斯勒">克莱斯勒</option>
   		</select>
   	</td>
   	 </tr>
   <tr>
   	<td>车名</td>
   	<td><input type="text" name="record.car_name"/></td>
   	 </tr>
   	 <tr>
   	<td>车牌号</td>
   	<td><input type="text" name="record.plate_number"/></td>
   	 </tr> <tr>
   	<td>排量</td>
   	<td><input type="text" name="record.pailiang"/></td>
   	 </tr> <tr>
   	<td>状态</td>
   	<td><input type="text" name="record.state"/></td>
   	 </tr> <tr>
   	<td>价格</td>
   	<td><input type="text" name="record.price_day"/></td>
   	 </tr> <tr>
   	<td>图片</td>
   	<td><input type="file" name="fileImg" /></td>
   	</tr>
   	</table>
   	<input type="submit" value="提交"/>
   </center>
   </form>
  </body>
</html>
