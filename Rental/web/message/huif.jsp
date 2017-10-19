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
    
    <title>My JSP 'fail.jsp' starting page</title>
    
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
     <jsp:include page="/head.jsp"></jsp:include>

     <center>
     <div class="conter" style="height: 600px;padding-top:60px;">
         	<form action="message!hfAdmin?message.id=${message.id }" method="post">
    	<table>
    		<tr>
    			<td>留言人:</td>
    			<td>${message.customer.cast_name }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="font-size: 10">${message.message_date }</font></td>
    		</tr>
    		<tr>
    			<td>留言内容:</td>
    			<td>${message.customer_content }</td>
    		</tr>
    	</table>
    	<table>
    		<tr>
    			<td>回复人:</td>
    			<td><input size="60" value="${user.name }" name="user.name"/></td>
    		</tr>
    		<tr>
    			<td>回复内容:</td>
    			<td>
    			<textarea rows="10" cols="65" name="message.agent_content">
    			</textarea></td>
    		</tr>
    		<tr>
					<td colspan="2" align="center"><input type="submit" value="回复" width="100px">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:history.go(-1)">back</a>
					</td>
			</tr>
    	</table>
    	</form>
    </div>
    </center>
    <!-- footer --> 
   
    <jsp:include page="/foot.jsp"></jsp:include>
  </body>
</html>
