<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>liuyanban</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
<style type="text/css">
	.titleA{
		color:gray;
		text-decoration: none;
	}
	body{
		font-family: 幼圆;
	}
	
</style>
<!-- <script type="text/javascript">
	var height=document.body.scrollHeight;
	$("#bot")scrollTo(height,100);
</script> -->
  </head>
  
  <body bgcolor="#F3EFF8">
  <jsp:include page="/head.jsp"></jsp:include>
 		 <a href="index.jsp"> << 返回首页 </a>&emsp;
	<table align="center">
		<c:forEach items="${list}" var="liuyan">
		
		<tr>
			<td width="500px">
				<div>
					<div style="float: right; width: 530px;height:120px;">
						<p style="margin-left: 5px;margin-top: 10px;">${liuyan.customer.cast_name }</p>
						
						<div style="text-align: right;padding-top: 20px;">
						<font>${liuyan.customer_content}&emsp;&emsp;&emsp;&emsp;</font>&nbsp;&nbsp;&nbsp;&nbsp;
						<font style="font-size: 10">date:${liuyan.message_date}</font>
												<p style="width: 72;float: right;"><a id="bot" href="javascript:scrollTo(0,999999)">踩一下</a></p>
						
						</div>
						
						</div>
				</div>
			</td>
		</tr>
		<tr>
			<td width="500px">
				<div style="border: 2px ridge #FFFFFF;min-height: 120px;">
					<div style="float: right; width: 530px;height:120px;background-color: #FFFFFF;">
						<p style="margin-top: 10px;text-align: right; margin-right: 10px;">${liuyan.user.name }</p>
						<div style="text-align: right;padding-top: 20px;">
						<c:choose>
							<c:when test="${liuyan.agent_content ne null}">
								<font >${liuyan.agent_content}&emsp;&emsp;&emsp;&emsp;</font>&nbsp;&nbsp;&nbsp;&nbsp;
							</c:when>
							<c:otherwise>
								<center><p style="color: red">暂未回复</p></center>
							</c:otherwise>
						</c:choose>
						<font style="font-size: 10">date:${liuyan.recovery_date}</font>
						<font><a href="message!huifu?message.id=${liuyan.id}">回复</a></font>
						</div>
						</div>
				</div>
			</td>
		</tr>
		</c:forEach>
	</table>
	
	<div>
		<a name="fatie"></a>
		<form action="message!liuyan" method="post">
			<table align="center">
				
				<tr>
					<td width="10">留言内容</td>
					<td><textarea rows="15" cols="58" name="message.customer_content"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><button>发表留言</button></td>
				</tr>
			</table>
		</form>
	</div>
   </body>

